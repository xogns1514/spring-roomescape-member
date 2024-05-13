INSERT INTO reservation_time (start_at)
VALUES ('10:00:00'),
       ('11:00:00'),
       ('12:00:00'),
       ('13:00:00'),
       ('14:00:00'),
       ('15:00:00'),
       ('16:00:00'),
       ('17:00:00'),
       ('18:00:00'),
       ('19:00:00'),
       ('20:00:00'),
       ('21:00:00');


INSERT INTO theme (name, description, thumbnail)
VALUES ('hi1', 'happy1', 'https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FsYpXc%2FbtqDhvJwpgl%2FHdOH4fsVgyK5kazXCbmiz0%2Fimg.jpg'),
       ('hi2', 'happy2', 'https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FsYpXc%2FbtqDhvJwpgl%2FHdOH4fsVgyK5kazXCbmiz0%2Fimg.jpg'),
       ('hi3', 'happy3', 'https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FsYpXc%2FbtqDhvJwpgl%2FHdOH4fsVgyK5kazXCbmiz0%2Fimg.jpg'),
       ('hi4', 'happy4', 'https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FsYpXc%2FbtqDhvJwpgl%2FHdOH4fsVgyK5kazXCbmiz0%2Fimg.jpg'),
       ('hi5', 'happy5', 'https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FsYpXc%2FbtqDhvJwpgl%2FHdOH4fsVgyK5kazXCbmiz0%2Fimg.jpg'),
       ('hi6', 'happy6', 'https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FsYpXc%2FbtqDhvJwpgl%2FHdOH4fsVgyK5kazXCbmiz0%2Fimg.jpg'),
       ('hi7', 'happy7', 'https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FsYpXc%2FbtqDhvJwpgl%2FHdOH4fsVgyK5kazXCbmiz0%2Fimg.jpg'),
       ('hi8', 'happy8', 'https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FsYpXc%2FbtqDhvJwpgl%2FHdOH4fsVgyK5kazXCbmiz0%2Fimg.jpg'),
       ('hi9', 'happy9', 'https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FsYpXc%2FbtqDhvJwpgl%2FHdOH4fsVgyK5kazXCbmiz0%2Fimg.jpg'),
       ('hi10', 'happy10', 'https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FsYpXc%2FbtqDhvJwpgl%2FHdOH4fsVgyK5kazXCbmiz0%2Fimg.jpg'),
       ('hi11', 'happy11', 'https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FsYpXc%2FbtqDhvJwpgl%2FHdOH4fsVgyK5kazXCbmiz0%2Fimg.jpg'),
       ('hi12', 'happy12', 'https://img1.daumcdn.net/thumb/R800x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2FsYpXc%2FbtqDhvJwpgl%2FHdOH4fsVgyK5kazXCbmiz0%2Fimg.jpg');


INSERT INTO member (name, email, password, role)
VALUES ('a1', 'a1@email.com', 'a1', 'admin');


INSERT INTO reservation (reservation_date, member_id, time_id, theme_id)
VALUES ('2024-04-25', 1, 1, 1),
       ('2024-04-25', 1, 1, 2),
       ('2024-04-25', 1, 2, 2),
       ('2024-04-25', 1, 1, 3),
       ('2024-04-25', 1, 2, 3),
       ('2024-04-25', 1, 3, 3),
       ('2024-04-25', 1, 1, 4),
       ('2024-04-25', 1, 2, 4),
       ('2024-04-25', 1, 3, 4),
       ('2024-04-25', 1, 4, 4),
       ('2024-04-25', 1, 1, 5),
       ('2024-04-25', 1, 2, 5),
       ('2024-04-25', 1, 3, 5),
       ('2024-04-25', 1, 4, 5),
       ('2024-04-25', 1, 5, 5),
       ('2024-04-25', 1, 1, 6),
       ('2024-04-25', 1, 2, 6),
       ('2024-04-25', 1, 3, 6),
       ('2024-04-25', 1, 4, 6),
       ('2024-04-25', 1, 5, 6),
       ('2024-04-25', 1, 6, 6),
       ('2024-04-25', 1, 1, 7),
       ('2024-04-25', 1, 2, 7),
       ('2024-04-25', 1, 3, 7),
       ('2024-04-25', 1, 4, 7),
       ('2024-04-25', 1, 5, 7),
       ('2024-04-25', 1, 6, 7),
       ('2024-04-25', 1, 7, 7),
       ('2024-04-25', 1, 1, 8),
       ('2024-04-25', 1, 2, 8),
       ('2024-04-25', 1, 3, 8),
       ('2024-04-25', 1, 4, 8),
       ('2024-04-25', 1, 5, 8),
       ('2024-04-25', 1, 6, 8),
       ('2024-04-25', 1, 7, 8),
       ('2024-04-25', 1, 8, 8),
       ('2024-04-25', 1, 1, 9),
       ('2024-04-25', 1, 2, 9),
       ('2024-04-25', 1, 3, 9),
       ('2024-04-25', 1, 4, 9),
       ('2024-04-25', 1, 5, 9),
       ('2024-04-25', 1, 6, 9),
       ('2024-04-25', 1, 7, 9),
       ('2024-04-25', 1, 8, 9),
       ('2024-04-25', 1, 9, 9),
       ('2024-04-25', 1, 1, 10),
       ('2024-04-25', 1, 2, 10),
       ('2024-04-25', 1, 3, 10),
       ('2024-04-25', 1, 4, 10),
       ('2024-04-25', 1, 5, 10),
       ('2024-04-25', 1, 6, 10),
       ('2024-04-25', 1, 7, 10),
       ('2024-04-25', 1, 8, 10),
       ('2024-04-25', 1, 9, 10),
       ('2024-04-25', 1, 10, 10),
       ('2024-04-25', 1, 1, 11),
       ('2024-04-25', 1, 2, 11),
       ('2024-04-25', 1, 3, 11),
       ('2024-04-25', 1, 4, 11),
       ('2024-04-25', 1, 5, 11),
       ('2024-04-25', 1, 6, 11),
       ('2024-04-25', 1, 7, 11),
       ('2024-04-25', 1, 8, 11),
       ('2024-04-25', 1, 9, 11),
       ('2024-04-25', 1, 10, 11),
       ('2024-04-25', 1, 11, 11),
       ('2024-04-25', 1, 1, 12),
       ('2024-04-25', 1, 2, 12),
       ('2024-04-25', 1, 3, 12),
       ('2024-04-25', 1, 4, 12),
       ('2024-04-25', 1, 5, 12),
       ('2024-04-25', 1, 6, 12),
       ('2024-04-25', 1, 7, 12),
       ('2024-04-25', 1, 8, 12),
       ('2024-04-25', 1, 9, 12),
       ('2024-04-25', 1, 10, 12),
       ('2024-04-25', 1, 11, 12),
       ('2024-04-25', 1, 12, 12);



