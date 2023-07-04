CREATE TABLE IF NOT EXISTS Genre(
	id SERIAL PRIMARY KEY,
	title VARCHAR(60) UNIQUE NOT NULL
);
CREATE TABLE IF NOT EXISTS Implementers(
	id SERIAL PRIMARY key,
	name VARCHAR(60) UNIQUE NOT NULL
);
CREATE TABLE IF NOT EXISTS GenreImplementers(
	genre_id INTEGER REFERENCES Genre(id),
	implementers_id INTEGER REFERENCES Implementers(id),
	CONSTRAINT pk_GenreImplementers PRIMARY KEY (genre_id, implementers_id)
);
CREATE TABLE IF NOT EXISTS Album(
	id SERIAL PRIMARY KEY,
	title VARCHAR(60) NOT NULL,
	production_year INTEGER CHECK (production_year>=1900)
);
CREATE TABLE IF NOT EXISTS AlbumImplementers(
	album_id INTEGER REFERENCES Album(id),
	implementers_id INTEGER REFERENCES Implementers(id),
	CONSTRAINT pk_AlbumImplementers PRIMARY KEY (album_id, implementers_id)
);
CREATE TABLE IF NOT EXISTS Сollection(
	id SERIAL PRIMARY KEY,
	title VARCHAR(60) NOT NULL,
	production_year INTEGER CHECK (production_year>=1900)
);
CREATE TABLE IF NOT EXISTS Track(
	id SERIAL PRIMARY KEY,
	title VARCHAR(60) NOT NULL,
	duration INTEGER CHECK (duration<=10000),
	album_id INTEGER NOT NULL REFERENCES Album(id)
);
CREATE TABLE IF NOT EXISTS СollectionTrack(
	collection_id INTEGER REFERENCES Сollection(id),
	track_id INTEGER REFERENCES Track(id),
	CONSTRAINT pk_СollectionTrack PRIMARY KEY (collection_id, track_id)
);