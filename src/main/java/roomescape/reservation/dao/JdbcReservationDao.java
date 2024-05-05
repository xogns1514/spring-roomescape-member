package roomescape.reservation.dao;

import java.time.LocalDate;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.stereotype.Repository;
import roomescape.reservation.domain.UserName;
import roomescape.reservation.domain.Reservation;
import roomescape.reservation.domain.ReservationTime;
import roomescape.reservation.domain.Theme;

@Repository
public class JdbcReservationDao implements ReservationDao {

    private static final RowMapper<Reservation> RESERVATION_MAPPER = (resultSet, row) ->
            new Reservation(
                    resultSet.getLong("reservation_id"),
                    new UserName(resultSet.getString("name")),
                    resultSet.getDate("reservation_date").toLocalDate(),
                    new ReservationTime(
                            resultSet.getLong("time_id"),
                            resultSet.getTime("time_value").toLocalTime()
                    ),
                    new Theme(
                            resultSet.getLong("theme_id"),
                            resultSet.getString("theme_name"),
                            resultSet.getString("theme_description"),
                            resultSet.getString("theme_thumbnail")
                    )
            );

    private final JdbcTemplate jdbcTemplate;
    private final SimpleJdbcInsert jdbcInsert;

    public JdbcReservationDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
        this.jdbcInsert = new SimpleJdbcInsert(jdbcTemplate)
                .withTableName("reservation")
                .usingGeneratedKeyColumns("id");
    }

    @Override
    public Reservation save(Reservation reservation) {
        SqlParameterSource parameterSource = new BeanPropertySqlParameterSource(reservation);
        Number id = jdbcInsert.executeAndReturnKey(parameterSource);
        return new Reservation(id.longValue(), reservation.getName(), reservation.getReservationDate(), reservation.getTime(), reservation.getTheme());
    }

    @Override
    public List<Reservation> findAllReservations() {
        String sql = """       
                SELECT
                    r.id as reservation_id,
                    r.name,
                    r.reservation_date,
                    t.id as time_id,
                    t.start_at as time_value,
                    h.id as theme_id,
                    h.name as theme_name,
                    h.description as theme_description,
                    h.thumbnail as theme_thumbnail
                FROM reservation as r
                inner join reservation_time as t on r.time_id = t.id
                inner join theme as h on r.theme_id = h.id
                """;

        return jdbcTemplate.query(sql, RESERVATION_MAPPER);
    }

    @Override
    public List<Reservation> findReservationsByDateAndThemeId(LocalDate date, Long themeId) {
        String sql = """
                SELECT
                    r.id as reservation_id,
                    r.name,
                    r.reservation_date,
                    t.id as time_id,
                    t.start_at as time_value,
                    h.id as theme_id,
                    h.name as theme_name,
                    h.description as theme_description,
                    h.thumbnail as theme_thumbnail 
                FROM reservation as r
                inner join reservation_time as t on r.time_id = t.id
                inner join theme as h on r.theme_id = h.id
                WHERE r.reservation_date = ? and r.theme_id = ?
                """;

        return jdbcTemplate.query(sql, RESERVATION_MAPPER, date, themeId);
    }

    @Override
    public boolean existByTimeIdAndDate(Long timeId, LocalDate date) {
        String sql = "SELECT EXISTS(SELECT 1 FROM reservation WHERE time_id = ? AND reservation_date = ?)";
        Boolean result = jdbcTemplate.queryForObject(sql, Boolean.class, timeId, date);
        return Boolean.TRUE.equals(result);
    }

    @Override
    public void delete(Long id) {
        String sql = "DELETE FROM reservation WHERE id = ?";

        jdbcTemplate.update(sql, id);
    }
}
