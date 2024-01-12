The rolodex application data should be managed by a PostgreSQL database in a Rails application.




The model should be called Person with first_name, last_name, and phone attributes. All data types should be strings.
    - We loaded the server in the browser, everything worked we then went into terminal and shutdown server.
    - We entered in terminal - rails generate model Person first_name:string last_name:string phone:string
    - We entered rails db:migrate 
    - Now the schema is running in vs code





Add five friends and family members to the people table using the Rails console.
- We enter rails c so that we can add attributes
- We enter Person.create(first_name: 'Joshua', last_name: 'Walker',phone:'555-246-9876')
- Output >> #<Person:0x000000010bbaf5e8
 id: 1,
 first_name: "Joshua",
 last_name: "Walker",
 phone: "555-246-9876",
 created_at: Fri, 12 Jan 2024 00:36:12.385317000 UTC +00:00,
 updated_at: Fri, 12 Jan 2024 00:36:12.385317000 UTC +00:00>

Retrieve all the people in the database.
Retrieve the third person in the database.
Retrieve only the first name of the first person in the database.
Remove the last person from the database.
Add yourself to the people table.
Retrieve all the people that have the same last name as you.
Retrieve only the first person from the list of people that have the same last name as you.
Update the phone number of the second person in the database.
Retrieve the last name of the third person in the database.