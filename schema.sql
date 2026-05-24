-- ============================================================
--  StreamFlix OTT Database — Schema & Data
--  Tool     : PostgreSQL
--  Author   : Amit Gusain
--  Database : streamflix_db
-- ============================================================

-- ─────────────────────────────────────────────
-- TABLE 1: movies
-- ─────────────────────────────────────────────
CREATE TABLE movies (
    movie_id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    genre VARCHAR(50),
    language VARCHAR(30),
    release_year INT,
    rating DECIMAL(3,1),
    duration_min INT,
    platform VARCHAR(30)
);

INSERT INTO movies (title, genre, language, release_year, rating, duration_min, platform) VALUES
('Sacred Games', 'Crime Thriller', 'Hindi', 2018, 9.1, 55, 'Netflix'),
('Mirzapur', 'Crime Drama', 'Hindi', 2018, 8.5, 50, 'Prime Video'),
('Panchayat', 'Comedy Drama', 'Hindi', 2020, 8.9, 30, 'Prime Video'),
('Delhi Crime', 'Crime Drama', 'Hindi', 2019, 8.5, 45, 'Netflix'),
('Scam 1992', 'Biography', 'Hindi', 2020, 9.5, 55, 'SonyLIV'),
('The Family Man', 'Action Thriller', 'Hindi', 2019, 8.7, 45, 'Prime Video'),
('Kota Factory', 'Drama', 'Hindi', 2019, 9.0, 35, 'Netflix'),
('TVF Pitchers', 'Comedy Drama', 'Hindi', 2015, 9.2, 40, 'ZEE5'),
('Breathe', 'Thriller', 'Hindi', 2018, 7.5, 45, 'Prime Video'),
('Aspirants', 'Drama', 'Hindi', 2021, 9.3, 30, 'YouTube'),
('RRR', 'Action', 'Telugu', 2022, 8.0, 187, 'Netflix'),
('KGF Chapter 2', 'Action', 'Kannada', 2022, 8.4, 168, 'Prime Video'),
('Pushpa', 'Action Drama', 'Telugu', 2021, 7.6, 179, 'Prime Video'),
('Drishyam 2', 'Crime Thriller', 'Hindi', 2022, 8.0, 152, 'Prime Video'),
('83', 'Sports', 'Hindi', 2021, 7.9, 150, 'Netflix'),
('Shershaah', 'Action Drama', 'Hindi', 2021, 8.4, 135, 'Prime Video'),
('Ludo', 'Comedy Thriller', 'Hindi', 2020, 7.5, 148, 'Netflix'),
('Raat Akeli Hai', 'Crime Mystery', 'Hindi', 2020, 7.2, 160, 'Netflix'),
('Haseen Dillruba', 'Romance Thriller', 'Hindi', 2021, 6.5, 129, 'Netflix'),
('Jamtara', 'Crime Drama', 'Hindi', 2020, 7.8, 30, 'Netflix'),
('Paatal Lok', 'Crime Thriller', 'Hindi', 2020, 8.1, 50, 'Prime Video'),
('Tandav', 'Political Drama', 'Hindi', 2021, 5.8, 45, 'Prime Video'),
('Rocket Boys', 'Biography', 'Hindi', 2022, 9.1, 50, 'SonyLIV'),
('Flames', 'Romance', 'Hindi', 2018, 8.5, 20, 'YouTube'),
('College Romance', 'Comedy Romance', 'Hindi', 2018, 8.7, 25, 'YouTube'),
('Maharani', 'Political Drama', 'Hindi', 2021, 7.9, 40, 'SonyLIV'),
('Farzi', 'Crime Thriller', 'Hindi', 2023, 8.5, 50, 'Prime Video'),
('Dahaad', 'Crime Drama', 'Hindi', 2023, 8.0, 45, 'Prime Video'),
('Trial By Fire', 'Drama', 'Hindi', 2023, 8.2, 45, 'Netflix'),
('Guns & Gulaabs', 'Comedy Crime', 'Hindi', 2023, 7.8, 45, 'Netflix');


-- ─────────────────────────────────────────────
-- TABLE 2: users
-- ─────────────────────────────────────────────
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    city VARCHAR(50),
    subscription VARCHAR(20),
    joined_date DATE
);

INSERT INTO users (name, age, city, subscription, joined_date) VALUES
('Amit Sharma', 25, 'Delhi', 'Premium', '2021-01-15'),
('Priya Patel', 22, 'Mumbai', 'Basic', '2021-03-20'),
('Rahul Singh', 28, 'Bangalore', 'Premium', '2020-11-10'),
('Sneha Reddy', 24, 'Hyderabad', 'Standard', '2022-02-05'),
('Vikram Joshi', 30, 'Delhi', 'Premium', '2020-07-18'),
('Anjali Gupta', 26, 'Pune', 'Basic', '2022-05-12'),
('Ravi Kumar', 32, 'Chennai', 'Premium', '2019-12-01'),
('Deepika Nair', 23, 'Kochi', 'Standard', '2022-08-30'),
('Suresh Mehta', 35, 'Jaipur', 'Basic', '2021-06-22'),
('Kavya Pillai', 27, 'Bangalore', 'Premium', '2020-09-14');


-- ─────────────────────────────────────────────
-- TABLE 3: ratings
-- ─────────────────────────────────────────────
CREATE TABLE ratings (
    rating_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(user_id),
    movie_id INT REFERENCES movies(movie_id),
    user_rating DECIMAL(3,1),
    watched_date DATE
);

INSERT INTO ratings (user_id, movie_id, user_rating, watched_date) VALUES
(1, 1, 9.0, '2022-01-10'), (1, 5, 9.5, '2022-02-15'), (1, 7, 8.5, '2022-03-20'),
(2, 2, 8.0, '2022-01-25'), (2, 3, 9.0, '2022-04-10'), (2, 11, 7.5, '2022-05-05'),
(3, 5, 9.5, '2021-12-01'), (3, 6, 8.5, '2022-01-18'), (3, 23, 9.0, '2022-06-12'),
(4, 12, 8.0, '2022-03-15'), (4, 13, 7.5, '2022-04-20'), (4, 16, 8.5, '2022-07-08'),
(5, 1, 9.5, '2022-02-28'), (5, 5, 9.0, '2022-05-15'), (5, 27, 8.5, '2023-02-10'),
(6, 3, 9.0, '2022-06-01'), (6, 8, 9.5, '2022-07-20'), (6, 25, 8.0, '2022-09-15'),
(7, 5, 9.5, '2021-11-20'), (7, 6, 9.0, '2022-01-05'), (7, 21, 8.0, '2022-08-25'),
(8, 11, 8.5, '2022-04-18'), (8, 14, 8.0, '2022-06-30'), (8, 24, 9.0, '2022-10-12'),
(9, 2, 7.5, '2022-03-08'), (9, 15, 8.0, '2022-07-14'), (9, 19, 6.5, '2022-11-20'),
(10, 5, 9.5, '2022-01-30'), (10, 7, 9.0, '2022-04-25'), (10, 28, 8.0, '2023-04-15');
