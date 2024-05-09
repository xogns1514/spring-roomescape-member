package roomescape.service;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import java.util.Arrays;
import org.springframework.stereotype.Service;
import roomescape.domain.Member;
import roomescape.domain.UserRepository;
import roomescape.handler.exception.CustomException;
import roomescape.handler.exception.ExceptionCode;
import roomescape.infrastructure.TokenProvider;
import roomescape.service.dto.request.TokenRequest;
import roomescape.service.dto.response.AuthenticationInfoResponse;
import roomescape.service.dto.response.TokenResponse;

@Service
public class LoginService {
    private static final String TOKEN_COOKIE_NAME = "token";

    private final UserRepository userRepository;
    private final TokenProvider tokenProvider;

    public LoginService(UserRepository userRepository, TokenProvider tokenProvider) {
        this.userRepository = userRepository;
        this.tokenProvider = tokenProvider;
    }

    public TokenResponse login(TokenRequest tokenRequest) {
        Member member = findUserBy(tokenRequest.email());
        String token = tokenProvider.generateTokenOf(member);
        return TokenResponse.from(token);
    }

    private Member findUserBy(String email) {
        return userRepository.findByEmail(email)
                .orElseThrow(() -> new CustomException(ExceptionCode.NOT_FOUND_USER));
    }

    public AuthenticationInfoResponse loginCheck(HttpServletRequest request) {
        String token = extractTokenFromCookie(request.getCookies());
        String authenticationInfo = tokenProvider.parseAuthenticationInfo(token);
        return AuthenticationInfoResponse.from(authenticationInfo);
    }

    private String extractTokenFromCookie(Cookie[] cookies) {
        if (cookies == null) {
            throw new IllegalArgumentException("쿠키를 찾을 수 없습니다.");
        }
        return Arrays.stream(cookies)
                .filter(cookie -> cookie.getName().equals(TOKEN_COOKIE_NAME))
                .findAny()
                .orElseThrow(() -> new IllegalArgumentException("쿠키를 찾을 수 없습니다."))
                .getValue();
    }
}
