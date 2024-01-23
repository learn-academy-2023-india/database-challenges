🍿 Challenge: Favorite Movies
As a developer, you are tasked with creating a new Rails application called favorite-movies to store data for your cohort. The application will start with just the structure of the database with a model called Movie. The Movie model will have an attribute for title that is a string.
    - rails generate model Movie title:string

👩‍💻 Developer Tasks
As a developer, I can add a category to the Movie model called category that is a string.
    -     add_column :movies, :category, :string

As a developer, I can add a category to the Movie model called rating that is a string.
    -     add_column :movies, :rating, :string

As a developer, I can add a category to the Movie model called run_time that is a number.
    -     add_column :movies, :run_time, :integer

As a developer, I can add five entries to the database via the Rails console.
    - [#<Movie:0x000000010c7fdac0
  id: 1,
  title: "Robocop (2014)",
  created_at: Mon, 22 Jan 2024 23:55:22.208838000 UTC +00:00,
  updated_at: Mon, 22 Jan 2024 23:55:22.208838000 UTC +00:00,
  category: "Sci-Fi",
  rating: "B+",
  run_time: 165>,
 #<Movie:0x000000010c7fd980
  id: 2,
  title: "Fear and Loathing Las Vegas",
  created_at: Tue, 23 Jan 2024 00:00:47.847834000 UTC +00:00,
  updated_at: Tue, 23 Jan 2024 00:00:47.847834000 UTC +00:00,
  category: "Comedy",
  rating: "C+",
  run_time: 128>,
 #<Movie:0x000000010c7fd840
  id: 3,
  title: "The Other Guys",
  created_at: Tue, 23 Jan 2024 00:02:25.263858000 UTC +00:00,
  updated_at: Tue, 23 Jan 2024 00:02:25.263858000 UTC +00:00,
  category: "Comedy",
  rating: "D+",
  run_time: 107>,
 #<Movie:0x000000010c7fd700
  id: 4,
  title: "Labyrinth",
  created_at: Tue, 23 Jan 2024 00:04:18.340596000 UTC +00:00,
  updated_at: Tue, 23 Jan 2024 00:04:18.340596000 UTC +00:00,
  category: "Fantasy",
  rating: "C",
  run_time: 101>,
 #<Movie:0x000000010c7fd5c0
  id: 5,
  title: "Wayne's World",
  created_at: Tue, 23 Jan 2024 00:05:34.039215000 UTC +00:00,
  updated_at: Tue, 23 Jan 2024 00:05:34.039215000 UTC +00:00,
  category: "Comedy",
  rating: "C",
  run_time: 94>] 

As a developer, I can update the run_time column to be a string.
 - in terminal:
    - rails generate migration change_run_time
- in migration file:
    -     change_column :movies, :run_time, :string
        - schema updated:
            ---->    t.string "run_time"

        - array updated runtime to string:
            ----> [#<Movie:0x0000000105648a10
  id: 1,
  title: "Robocop (2014)",
  created_at: Mon, 22 Jan 2024 23:55:22.208838000 UTC +00:00,
  updated_at: Mon, 22 Jan 2024 23:55:22.208838000 UTC +00:00,
  category: "Sci-Fi",
  rating: "B+",
  run_time: "165">,
 #<Movie:0x0000000105f37a90
  id: 2,
  title: "Fear and Loathing Las Vegas",
  created_at: Tue, 23 Jan 2024 00:00:47.847834000 UTC +00:00,
  updated_at: Tue, 23 Jan 2024 00:00:47.847834000 UTC +00:00,
  category: "Comedy",
  rating: "C+",
  run_time: "128">,
 #<Movie:0x0000000105f37590
  id: 3,
  title: "The Other Guys",
  created_at: Tue, 23 Jan 2024 00:02:25.263858000 UTC +00:00,
  updated_at: Tue, 23 Jan 2024 00:02:25.263858000 UTC +00:00,
  category: "Comedy",
  rating: "D+",
  run_time: "107">,
 #<Movie:0x0000000105f37450
  id: 4,
  title: "Labyrinth",
  created_at: Tue, 23 Jan 2024 00:04:18.340596000 UTC +00:00,
  updated_at: Tue, 23 Jan 2024 00:04:18.340596000 UTC +00:00,
  category: "Fantasy",
  rating: "C",
  run_time: "101">,
 #<Movie:0x0000000105f37310
  id: 5,
  title: "Wayne's World",
  created_at: Tue, 23 Jan 2024 00:05:34.039215000 UTC +00:00,
  updated_at: Tue, 23 Jan 2024 00:05:34.039215000 UTC +00:00,
  category: "Comedy",
  rating: "C",
  run_time: "94">] 


As a developer, I can update the values of the five existing database entries to include a unit of time on the run_time column. (Example: '165 minutes' or '1 hr, 45 minutes')
    - > Movie.all.each { |movie| movie.update(run_time: '165 minutes') }

As a developer, I can rename the column category to be named genre.
- in terminal
    -rails generate migration RenameCategoryToGenreInMovies