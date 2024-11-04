-- Cargar datos en la tabla de usuarios
COPY Users(UserID, Gender, Age, Occupation, ZipCode)
FROM '/data/users_cleaned.csv' DELIMITER ';' CSV;

-- Cargar datos en la tabla de películas
COPY Movies(MovieID, Title, Genres)
FROM '/data/movies_cleaned.csv' DELIMITER ';' CSV;

-- Cargar datos en la tabla de calificaciones
COPY Ratings(UserID, MovieID, Rating, Timestamp)
FROM '/data/ratings_cleaned.csv' DELIMITER ';' CSV;
