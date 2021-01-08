INSERT INTO subgenres (id, name) VALUES
(1, "magic"),
(2, "science fiction");

INSERT INTO authors (id, name) VALUES
(1, "Orson Scott"),
(2, "J.K. Rowling");

INSERT INTO series (id, title, author_id, subgenre_id) VALUES 
(1, "Harry Potter", 2, 1),
(2, "Ender's Game", 1, 2);

INSERT INTO books (id, title, year, series_id) VALUES
(1, "Harry Potter and the Sorcerer's Stone", 1997, 1),
(2, "Harry Potter and the Chamber of Secrets", 1998, 1),
(3, "Harry Potter and the Prisoner of Azkaban", 1999, 1),
(4, "Ender's Game", 1985, 2),
(5, "Speaker for the Dead", 1986, 2),
(6, "Xenocide", 1991, 2);

INSERT INTO characters (id, author_id, name, species, motto) VALUES
(1, 2, "Harry Potter", "Human", "Wingaurdium Leviooosah"),
(2, 2, "Hermionie", "Human", "It's Leviosaaahhh"),
(3, 2, "Sirius Black", "Animagus", "We've all got both light and dark inside of us."),
(4, 2, "Dementor", "Dementor", "..."),
(5, 1, "Ender", "Human", "I have to fight aliens"),
(6, 1, "Peter", "Human", "I like killing squirrels"),
(7, 1, "Rooter", "Pequenino", "I want to be a tree someday"),
(8, 1, "Hive Queen", "Formic", "Oops didn't know you guys could think.");

INSERT INTO character_books (id, book_id, character_id) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 2),
(5, 3, 1),
(6, 3, 2),
(7, 3, 3),
(8, 3, 4),
(9, 4, 5),
(10, 4, 6),
(11, 5, 5),
(12, 5, 6),
(13, 5, 7),
(14, 5, 8),
(15, 6, 5),
(16, 6, 5);