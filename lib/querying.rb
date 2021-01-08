def select_books_titles_and_years_in_first_series_order_by_year
  <<-SQL
    SELECT books.title, books.year
    FROM books
    WHERE series_id = 1
    ORDER BY books.year;
  SQL
end

def select_name_and_motto_of_char_with_longest_motto
  <<-SQL
    SELECT characters.name, characters.motto
    FROM characters
    WHERE length(characters.motto) = (SELECT max(length(characters.motto)) FROM characters);
  SQL
end


def select_value_and_count_of_most_prolific_species
  <<-SQL
    SELECT characters.species, count(*)
    FROM characters
    GROUP BY characters.species
    ORDER BY count(characters.species) DESC
    LIMIT 1;
  SQL
end

def select_name_and_series_subgenres_of_authors
  <<-SQL
    SELECT authors.name, subgenres.name
    FROM series
    JOIN authors ON authors.id = series.author_id
    JOIN subgenres ON subgenres.id = series.subgenre_id;
  SQL
end

def select_series_title_with_most_human_characters
  <<-SQL  
    SELECT series.title AS x
    FROM series
    JOIN characters ON characters.author_id = series.author_id
    WHERE characters.species = 'human'
    GROUP BY series.title
    ORDER BY COUNT(*) DESC
    LIMIT 1;
  SQL
end

def select_character_names_and_number_of_books_they_are_in
  <<-SQL
    SELECT characters.name, COUNT(*) AS cnt
    FROM characters
    JOIN character_books ON character_books.character_id = characters.id
    JOIN books ON books.id = character_books.book_id
    GROUP BY characters.name
    ORDER BY cnt DESC, characters.name;
  SQL
end
