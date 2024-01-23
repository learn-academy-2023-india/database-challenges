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
 - We created this attribute, with an incorrect phone number: 
        - Output >> #<Person:0x00000001082441a0
            id: 2,
            first_name: "Chantel",
            last_name: "Carter",
            phone: "4\n56-555-0987",
            created_at: Fri, 12 Jan 2024 00:42:07.725775000 UTC +00:00,
            updated_at: Fri, 12 Jan 2024 00:42:07.725775000 UTC +00:00>

- We then created a variable to make it easier for us to update and correct mistake
        - chantel = Person.find 2

- We then fixed our incorrect key value using update method 
        - chantel.update(phone: '456-555-0987')

Retrieve all the people in the database.

- Person.all
[#<Person:0x0000000108dccd10
  id: 1,
  first_name: "Joshua",
  last_name: "Walker",
  phone: "555-246-9876",
  created_at: Fri, 12 Jan 2024 00:36:12.385317000 UTC +00:00,
  updated_at: Fri, 12 Jan 2024 00:36:12.385317000 UTC +00:00>,
 #<Person:0x0000000108dccbd0
  id: 2,
  first_name: "Chantel",
  last_name: "Carter",
  phone: "456-555-0987",
  created_at: Fri, 12 Jan 2024 00:42:07.725775000 UTC +00:00,
  updated_at: Fri, 12 Jan 2024 17:52:08.246189000 UTC +00:00>,
 #<Person:0x0000000108dcca90
  id: 3,
  first_name: "Michael",
  last_name: "Egner",
  phone: "555-999-1122",
  created_at: Fri, 12 Jan 2024 18:06:37.694454000 UTC +00:00,
  updated_at: Fri, 12 Jan 2024 18:06:37.694454000 UTC +00:00>,
 #<Person:0x0000000108dcc950
  id: 4,
  first_name: "Charlean",
  last_name: "Baxter",
  phone: "555-888-3561",
  created_at: Fri, 12 Jan 2024 18:10:04.060943000 UTC +00:00,
  updated_at: Fri, 12 Jan 2024 18:10:04.060943000 UTC +00:00>,
 #<Person:0x0000000108dcc810
  id: 5,
  first_name: "Jane",
  last_name: "Doe",
  phone: "555-619-6199",
  created_at: Fri, 12 Jan 2024 18:12:37.477382000 UTC +00:00,
  updated_at: Fri, 12 Jan 2024 18:12:37.477382000 UTC +00:00>]


Retrieve the third person in the database.

- Person.find 3
- #<Person:0x0000000108dc8350
 id: 3,
 first_name: "Michael",
 last_name: "Egner",
 phone: "555-999-1122",
 created_at: Fri, 12 Jan 2024 18:06:37.694454000 UTC +00:00,
 updated_at: Fri, 12 Jan 2024 18:06:37.694454000 UTC +00:00>


Retrieve only the first name of the first person in the database.
- Person.first.first_name
- Output >> "Joshua"


Remove the last person from the database.
- jane = Person.find 5
- jane.destroy
- Person.all
- [#<Person:0x0000000108dcbe10
  id: 1,
  first_name: "Joshua",
  last_name: "Walker",
  phone: "555-246-9876",
  phone: "555-246-9876",
  created_at: Fri, 12 Jan 2024 00:36:12.385317000 UTC +00:00,
  updated_at: Fri, 12 Jan 2024 00:36:12.385317000 UTC +00:00>,
 #<Person:0x0000000108dcbcd0
  id: 2,
  first_name: "Chantel",
  last_name: "Carter",
  phone: "456-555-0987",
  created_at: Fri, 12 Jan 2024 00:42:07.725775000 UTC +00:00,
  updated_at: Fri, 12 Jan 2024 17:52:08.246189000 UTC +00:00>,
 #<Person:0x0000000108dcbb90
  id: 3,
  first_name: "Michael",
  last_name: "Egner",
  phone: "555-999-1122",
  created_at: Fri, 12 Jan 2024 18:06:37.694454000 UTC +00:00,
  updated_at: Fri, 12 Jan 2024 18:06:37.694454000 UTC +00:00>,
 #<Person:0x0000000108dcba50
  id: 4,
  first_name: "Charlean",
  last_name: "Baxter",
  phone: "555-888-3561",
  created_at: Fri, 12 Jan 2024 18:10:04.060943000 UTC +00:00,
  updated_at: Fri, 12 Jan 2024 18:10:04.060943000 UTC +00:00>]




Add yourself to the people table.
- Person.create(first_name:'Sakaa', last_name:'Killen', phone:'555-000-9933')
- Output >> #<Person:0x0000000108d00148
 id: 6,
 first_name: "Sakaa",
 last_name: "Killen",
 phone: "555-000-9933",
 created_at: Fri, 12 Jan 2024 19:26:43.693382000 UTC +00:00,
 updated_at: Fri, 12 Jan 2024 19:26:43.693382000 UTC +00:00>





Retrieve all the people that have the same last name as you.

- We updated Sakaa's last name to Walker
- Person.where(last_name: 'Walker')
    - Output >> [#<Person:0x0000000108d68220
        id: 1,
        first_name: "Joshua",
        last_name: "Walker",
        phone: "555-246-9876",
        created_at: Fri, 12 Jan 2024 00:36:12.385317000 UTC +00:00,
        updated_at: Fri, 12 Jan 2024 00:36:12.385317000 UTC +00:00>,
        #<Person:0x0000000108d680e0
        id: 6,
        first_name: "Sakaa",
        last_name: "Walker",
        phone: "555-000-9933",
        created_at: Fri, 12 Jan 2024 19:26:43.693382000 UTC +00:00,
        updated_at: Fri, 12 Jan 2024 19:31:23.341811000 UTC +00:00>]


Retrieve only the first person from the list of people that have the same last name as you.

- Person.where(last_name: 'Walker').first
    - Output >> #<Person:0x0000000108c49600
        id: 1,
        first_name: "Joshua",
        last_name: "Walker",
        phone: "555-246-9876",
        created_at: Fri, 12 Jan 2024 00:36:12.385317000 UTC +00:00,
        updated_at: Fri, 12 Jan 2024 00:36:12.385317000 UTC +00:00>


Update the phone number of the second person in the database.
- [["phone", "555-321-1199"], ["updated_at", "2024-01-12 19:50:33.782030"], ["id", 2]]
    - Output >> #<Person:0x0000000108dcc1d0
    id: 2,
    first_name: "Chantel",
    last_name: "Carter",
    phone: "555-321-1199",
    created_at: Fri, 12 Jan 2024 00:42:07.725775000 UTC +00:00,
    updated_at: Fri, 12 Jan 2024 19:50:33.782030000 UTC +00:00>]

Retrieve the last name of the third person in the database.
-  Person.find(3).last_name
-  Output >> "Egner"