<!-- 

As a developer, I can add a category to the Movie model called category that is a string.
rails generate model Movie :category :string

As a developer, I can add a category to the Movie model called rating that is a string.
add_column(:movies, :rating, :string)

As a developer, I can add a category to the Movie model called run_time that is a number.
add_column(:movies, :run_time, :integer)

As a developer, I can add five entries to the database via the Rails console.
Movie.create(:category, :rating, :run_time)

As a developer, I can update the run_time column to be a string.
rails generate migration change_run_time
change_column :movies, :run_time, :string
rails db:migrate

As a developer, I can update the values of the five existing database entries to include a unit of time on the 
run_time column. (Example: '165 minutes' or '1 hr, 45 minutes')
update = Movie.find(x)
update.update(run_time: "1 hr")

As a developer, I can rename the column category to be named genre. 
rails generate migration change_category_to_genre
rename_column :movies, :category, :genre
rails db:migrate

-->
