# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!
#Model.destroy_all
Studio.destroy_all
Movie.destroy_all
Actor.destroy_all
Role.destroy_all
# Generate models and tables, according to the domain model.


# Insert data into the database that reflects the sample data shown above.

new_studio = Studio.new
new_studio["name"] = "Warner Bros"
new_studio.save

warner_bros = Studio.find_by({"name" => "Warner Bros"})

movie = Movie.new
movie["name"] = "Batman Begins" 
movie["year_released"] = 2005
movie["rated"] = "PG-13"
movie["studio_id"] = warner_bros["id"]
movie.save


movie = Movie.new
movie["name"] = "The Dark Knight" 
movie["year_released"] = 2008
movie["rated"] = "PG-13"
movie["studio_id"] = warner_bros["id"]
movie.save


movie = Movie.new
movie["name"] = "The Dark Knight Rises" 
movie["year_released"] = 2012
movie["rated"] = "PG-13"
movie["studio_id"] = warner_bros["id"]
movie.save

actor = Actor.new
actor["name"] = "Christian Bale"
actor.save

actor = Actor.new
actor["name"] = "Michael Caine" 
actor.save

actor = Actor.new
actor["name"] = "Liam Neeson" 
actor.save

actor = Actor.new
actor["name"] = "Katie Holmes" 
actor.save

actor = Actor.new
actor["name"] = "Gary Oldman" 
actor.save

actor = Actor.new
actor["name"] = "Heath Ledger" 
actor.save

actor = Actor.new
actor["name"] = "Aaron Eckhart" 
actor.save

actor = Actor.new
actor["name"] = "Maggie Gyllenhaal"
actor.save

actor = Actor.new
actor["name"] = "Tom Hardy" 
actor.save

actor = Actor.new
actor["name"] = "Joseph Gordon-Levitt" 
actor.save

actor = Actor.new
actor["name"] = "Anne Hathaway" 
actor.save

batman_begins = Movie.find_by({"name" => "Batman Begins"})
the_dark_knight = Movie.find_by({"name" => "The Dark Knight"})
the_dark_knight_rises = Movie.find_by({"name" => "The Dark Knight Rises"})

christian_bale = Actor.find_by({"name" => "Christian Bale"})
michael_caine = Actor.find_by({"name" => "Michael Caine"})
liam_neeson = Actor.find_by({"name" => "Liam Neeson"})
katie_holmes = Actor.find_by({"name" => "Katie Holmes"})
gary_oldman = Actor.find_by({"name" => "Gary Oldman"})
heath_ledger = Actor.find_by({"name" => "Heath Ledger"})
aaron_eckhart = Actor.find_by({"name" => "Aaron Eckhart"})
maggie_gyllenhaal = Actor.find_by({"name" => "Maggie Gyllenhaal"})
tom_hardy = Actor.find_by({"name" => "Tom Hardy"})
joseph_gordon_levitt = Actor.find_by({"name" => "Joseph Gordon-Levitt"})
anne_hathaway = Actor.find_by({"name" => "Anne Hathaway"})

role = Role.new
role["movie_id"] = batman_begins["id"]
role["actor_id"] = christian_bale["id"]
role["charater_name"] = "Bruce Wayne" 
role.save

role = Role.new
role["movie_id"] = batman_begins["id"]
role["actor_id"] = michael_caine["id"]
role["charater_name"] = "Alfred" 
role.save

role = Role.new
role["movie_id"] = batman_begins["id"]
role["actor_id"] = liam_neeson["id"]
role["charater_name"] = "Ra's Al Ghul" 
role.save

role = Role.new
role["movie_id"] = batman_begins["id"]
role["actor_id"] = katie_holmes["id"]
role["charater_name"] = "Rachel Dawes" 
role.save

role = Role.new
role["movie_id"] = batman_begins["id"]
role["actor_id"] = gary_oldman["id"]
role["charater_name"] = "Commissioner Gordon" 
role.save

role = Role.new
role["movie_id"] = the_dark_knight["id"]
role["actor_id"] = christian_bale["id"]
role["charater_name"] = "Bruce Wayne" 
role.save

role = Role.new
role["movie_id"] = the_dark_knight["id"]
role["actor_id"] = heath_ledger["id"]
role["charater_name"] = "Joker" 
role.save

role = Role.new
role["movie_id"] = the_dark_knight["id"]
role["actor_id"] = aaron_eckhart["id"]
role["charater_name"] = "Harvey Dent" 
role.save

role = Role.new
role["movie_id"] = the_dark_knight["id"]
role["actor_id"] = michael_caine["id"]
role["charater_name"] = "Alfred" 
role.save

role = Role.new
role["movie_id"] = the_dark_knight["id"]
role["actor_id"] = maggie_gyllenhaal["id"]
role["charater_name"] = "Rachel Dawes" 
role.save

role = Role.new
role["movie_id"] = the_dark_knight_rises["id"]
role["actor_id"] = christian_bale["id"]
role["charater_name"] = "Bruce Wayne" 
role.save

role = Role.new
role["movie_id"] = the_dark_knight_rises["id"]
role["actor_id"] = gary_oldman["id"]
role["charater_name"] = "Commissioner Gordon" 
role.save

role = Role.new
role["movie_id"] = the_dark_knight_rises["id"]
role["actor_id"] = tom_hardy["id"]
role["charater_name"] = "Bane" 
role.save

role = Role.new
role["movie_id"] = the_dark_knight_rises["id"]
role["actor_id"] = joseph_gordon_levitt["id"]
role["charater_name"] = "John Blake"
role.save

role = Role.new
role["movie_id"] = the_dark_knight_rises["id"]
role["actor_id"] = anne_hathaway["id"]
role["charater_name"] = "Selina Kyle"
role.save

# Do not use hard-coded foreign key IDs.

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.

movie_list = Movie.where({ "studio_id" => warner_bros["id"] })

for films in movie_list.sort
    film_title = films["name"].inspect
    year_released = films["year_released"].inspect
    rating = films["rated"].inspect
    study = Studio.find_by({"id" => films["studio_id"]}).name.inspect
    puts "#{film_title} #{year_released} #{rating} #{study}"
end

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""
# Query the cast data and loop through the results to display the cast output for each movie.
cast_list = Role.all

for character in cast_list
    movie_title = Movie.find_by({"id" => character["movie_id"]}).name.inspect
    acted_by = Actor.find_by({"id" => character["actor_id"]}).name.inspect
    role_played = character["charater_name"].inspect
    puts "#{movie_title} #{acted_by} #{role_played}"
end


