As a developer, I can add a category to the Movie model called category that is a string.
As a developer, I can add a category to the Movie model called rating that is a string.
As a developer, I can add a category to the Movie model called run_time that is a number.
    Populated the model with the first 3 categories by utilizing the following syntax:
    rails generate model favorite-movies category:string rating:string run_time:integer

As a developer, I can add five entries to the database via the Rails console.
    In the Rails console, utilized the following syntax to populate the model FavoriteMovie, FavoriteMovie.create(category: 'Lord of the Rings', rating: 'PG-13', run_time: 178)
    Individually changed each option with research.

As a developer, I can update the run_time column to be a string.
    Exit out of rails console with control C. 
    Input in terminal rails generate migration change_run_time_to_be_a_string
    In newly populated folder, under change, add change_column :favorite_movies, :run_time, :string
    In terminal input  In terminal input $rails db:migrate then $rails c (or $rails s)

As a developer, I can update the values of the five existing database entries to include a unit of time on the run_time column. (Example: '165 minutes' or '1 hr, 45 minutes')
    In rails console checked the update by typing in FavoriteMovie.all and say string in the run_time column
    Updated runtimes by using the folowing syntax and swapping out the times individually: FavoriteMovie.where(run_time: '178').update(run_time: '178 minutes')

As a developer, I can rename the column category to be named genre.
     Exit console and in terminal input $rails generate migration rename_column  
     In newly populated folder, under change, add rename_column :favorite_movies, :category, :genre
     In terminal input $rails db:migrate then $rails c (or $rails s) checked the update by typing in FavoriteMovie.all