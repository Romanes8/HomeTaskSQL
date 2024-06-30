
--таблица с перечнем жанров
CREATE TABLE musical_genre (
    id SERIAL PRIMARY KEY, 
    genre VARCHAR(60) NOT NULL
);

--таблица с перечнем исполнителей
CREATE TABLE musical_performers (
    id SERIAL PRIMARY KEY, 
    performer VARCHAR(60) NOT NULL
);

--таблица с перечнем альбомов и их годов выпуска
CREATE TABLE music_albums (
    id SERIAL PRIMARY KEY,
    album VARCHAR(60) NOT NULL,
    release_year INTEGER
);

--таблица с перечнем треков, их длительностью и альбомами из таблицы music_albums
CREATE TABLE tracks (
    id SERIAL PRIMARY KEY,
    album INTEGER REFERENCES music_albums(id),  
    track VARCHAR(60) NOT NULL,
    track_duration TIME NOT NULL
);

--таблица с перечнем жанров и исполнителей
CREATE TABLE genre_performers (
    id SERIAL PRIMARY KEY,
    genre INTEGER REFERENCES musical_genre(id),
    performers INTEGER REFERENCES musical_performers(id)
);

--таблица с перечнем исполнителей и их альбомов
CREATE TABLE performers_albums (
    id SERIAL PRIMARY KEY,
    performers INTEGER REFERENCES musical_performers(id),
    albums INTEGER REFERENCES music_albums(id)
);

--таблица с перечнем сборников песен и их годов выпуска
CREATE TABLE songs_collections (
    id SERIAL PRIMARY KEY,
    songs_collection VARCHAR(60) NOT NULL,
    release_year INTEGER
);

--таблица с перечнем сборников и треков
CREATE TABLE collections_tracks (
    id SERIAL PRIMARY KEY,
    songs_collection INTEGER REFERENCES songs_collections(id),
    track INTEGER REFERENCES tracks(id)
);









