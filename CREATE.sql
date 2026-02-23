CREATE TABLE IF NOT EXISTS performers (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS genre (
	id SERIAL PRIMARY KEY,
	genre_name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS performers_genre (
	id_performer INTEGER REFERENCES performers(id),
	id_genre INTEGER REFERENCES genre(id),
	CONSTRAINT pk_performer_genre PRIMARY KEY (id_performer, id_genre)
);

CREATE TABLE IF NOT EXISTS albums (
	id SERIAL PRIMARY KEY,
	name_albums VARCHAR(50) NOT NULL,
	release_date INTEGER
);

CREATE TABLE IF NOT EXISTS performers_albums (
	id_performer INTEGER REFERENCES performers(id),
	id_album INTEGER REFERENCES albums(id),
	CONSTRAINT pk_performer_album PRIMARY KEY (id_performer, id_album)
);

CREATE TABLE IF NOT EXISTS tracks (
	id SERIAL PRIMARY KEY,
	track_name VARCHAR(50) NOT NULL,
	album INTEGER REFERENCES albums(id),
	duration INTEGER
);

CREATE TABLE IF NOT EXISTS collections (
	id SERIAL PRIMARY KEY,
	collection_name VARCHAR(50) NOT NULL,
	year_of_release INTEGER
);


CREATE TABLE IF NOT EXISTS collections_track (
	id_collection INTEGER REFERENCES collections(id),
	id_track INTEGER REFERENCES tracks(id),
	CONSTRAINT pk_collection_track PRIMARY KEY (id_collection, id_track)
);
