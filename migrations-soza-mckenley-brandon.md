As a developer, you are tasked with creating a new Rails application called favorite-movies to store data for your cohort. The application will start with just the structure of the database with a model called Movie. The Movie model will have an attribute for title that is a string.

👩‍💻 Developer Tasks
As a developer, I can add a category to the Movie model called category that is a string.
rails g model Movies category:string

As a developer, I can add a category to the 
Movie model called rating that is a string.
rails g migration add_rating_to_movies rating:string

As a developer, I can add a category to the Movie model called run_time that is a number.
rails g migration add_run_time_to_movies run_time:integer

As a developer, I can add five entries to the database via the Rails console.
Movie.create(category: "Horror", rating: "R", run_time: 120) ****SIMILAR FORMAT****
As a developer, I can update the run_time column to be a string. 
rails g migration change_run_time_string
class ChangeRunTimeString < ActiveRecord::Migration[7.1]
  def change
    change_column :movies, :run_time, :string
  end
end
save***
As a developer, I can update the values of the five existing database entries to include a unit of time on the run_time column. (Example: '165 minutes' or '1 hr, 45 minutes')
As a developer, I can rename the column category to be named genre.

class CategoryToGenre < ActiveRecord::Migration[7.1]
  def change
    rename_column :movies, :category, :genre
  end
end

add_column :table_name, :column_name, :datatype
change_column :table_name, :column_name, :datatype
rename_column :table_name, :old_column, :new_column
remove_column :table_name, :column_name