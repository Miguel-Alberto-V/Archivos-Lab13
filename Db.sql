-- Crear la base de datos MovieLens
CREATE DATABASE MovieLens;

-- Conectar a la base de datos MovieLens
\c movielens;

-- Creación de la tabla de usuarios
CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Gender CHAR(1),
    Age INT,
    Occupation INT,
    ZipCode VARCHAR(10)
);

-- Creación de la tabla de películas
CREATE TABLE Movies (
    MovieID INT PRIMARY KEY,
    Title VARCHAR(255),
    Genres VARCHAR(255)
);

-- Creación de la tabla de calificaciones
CREATE TABLE Ratings (
    UserID INT REFERENCES Users(UserID),
    MovieID INT REFERENCES Movies(MovieID),
    Rating INT,
    Timestamp BIGINT,
    PRIMARY KEY (UserID, MovieID)
);
