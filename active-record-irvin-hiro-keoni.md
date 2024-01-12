The rolodex application data should be managed by a PostgreSQL database in a Rails application.

<!-- The model should be called Person with first_name, last_name, and phone attributes. All data types should be strings. -->
rails db:migrate

invoke  active_record
      create    db/migrate/20240112020628_create_people.rb
      create    app/models/person.rb

<!-- Add five friends and family members to the people table using the Rails console. -->
Person.create(first_name:'Irvin', last_name:'Moore', phone:'123456789')
Person.create(first_name:'Irvin', last_name:'Moore', phone:'123456789')
Person.create(first_name:'Irvin', last_name:'Moore', phone:'123456789')
Person.create(first_name:'Irvin', last_name:'Moore', phone:'123456789')
Person.create(first_name:'Irvin', last_name:'Moore', phone:'123456789')

* Just change the names to fit code. 

 id: 1,
 first_name: "Irvin",
 last_name: "Moore",
 phone: "123456789",
 created_at: Fri, 12 Jan 2024 02:14:18.618367000 UTC +00:00,
 updated_at: Fri, 12 Jan 2024 02:14:18.618367000 UTC +00:00> 
 
 id: 2,
 first_name: "Hiro",
 last_name: "Yamada",
 phone: "123456789",
 created_at: Fri, 12 Jan 2024 02:15:07.250723000 UTC +00:00,
 updated_at: Fri, 12 Jan 2024 02:15:07.250723000 UTC +00:00>
 
 id: 3,
 first_name: "Keoni",
 last_name: "Hello",
 phone: "123456789",
 created_at: Fri, 12 Jan 2024 02:16:09.027095000 UTC +00:00,
 updated_at: Fri, 12 Jan 2024 02:16:09.027095000 UTC +00:00>
 
 id: 4,
 first_name: "Irvin2",
 last_name: "Moore2",
 phone: "123456789",
 created_at: Fri, 12 Jan 2024 02:16:54.349094000 UTC +00:00,
 updated_at: Fri, 12 Jan 2024 02:16:54.349094000 UTC +00:00> 
 
 id: 5,
 first_name: "Hiro2",
 last_name: "Yamada2",
 phone: "123456789",
 created_at: Fri, 12 Jan 2024 02:18:32.315053000 UTC +00:00,
 updated_at: Fri, 12 Jan 2024 02:18:32.315053000 UTC +00:00>

<!-- Retrieve all the people in the database. -->
Person.all

  id: 1,
  first_name: "Irvin",
  last_name: "Moore",
  phone: "123456789",
  created_at: Fri, 12 Jan 2024 02:14:18.618367000 UTC +00:00,
  updated_at: Fri, 12 Jan 2024 02:14:18.618367000 UTC +00:00>,
 
  id: 2,
  first_name: "Hiro",
  last_name: "Yamada",
  phone: "123456789",
  created_at: Fri, 12 Jan 2024 02:15:07.250723000 UTC +00:00,
  updated_at: Fri, 12 Jan 2024 02:15:07.250723000 UTC +00:00>,
 
  id: 3,
  first_name: "Keoni",
  last_name: "Hello",
  phone: "123456789",
  created_at: Fri, 12 Jan 2024 02:16:09.027095000 UTC +00:00,
  updated_at: Fri, 12 Jan 2024 02:16:09.027095000 UTC +00:00>,

  id: 4,
  first_name: "Irvin2",
  last_name: "Moore2",
  phone: "123456789",
  created_at: Fri, 12 Jan 2024 02:16:54.349094000 UTC +00:00,
  updated_at: Fri, 12 Jan 2024 02:16:54.349094000 UTC +00:00>,

  id: 5,
  first_name: "Hiro2",
  last_name: "Yamada2",
  phone: "123456789",
  created_at: Fri, 12 Jan 2024 02:18:32.315053000 UTC +00:00,
  updated_at: Fri, 12 Jan 2024 02:18:32.315053000 UTC +00:00>

<!-- Retrieve the third person in the database. -->
Person.find 3

 id: 3,
 first_name: "Keoni",
 last_name: "Hello",
 phone: "123456789",
 created_at: Fri, 12 Jan 2024 02:16:09.027095000 UTC +00:00,
 updated_at: Fri, 12 Jan 2024 02:16:09.027095000 UTC +00:00>

<!-- Retrieve only the first name of the first person in the database. -->
Person.first.first_name
 
 => "Irvin"

<!-- Remove the last person from the database. -->
Hiro2.destroy
  
 id: 5,
 first_name: "Hiro2",
 last_name: "Yamada2",
 phone: "123456789",
 created_at: Fri, 12 Jan 2024 02:18:32.315053000 UTC +00:00,
 updated_at: Fri, 12 Jan 2024 02:18:32.315053000 UTC +00:00> 

enter Person.all to make sure it was deleted.

<!-- Add yourself to the people table. -->
Person.create(first_name:'Hiro2', last_name:'Yamada2', phone:123456897)

 id: 6,
 first_name: "Hiro2",
 last_name: "Yamada2",
 phone: "123456897",
 created_at: Fri, 12 Jan 2024 19:40:20.764729000 UTC +00:00,
 updated_at: Fri, 12 Jan 2024 19:40:20.764729000 UTC +00:00> 

<!-- Retrieve all the people that have the same last name as you. -->
yamada2.all
  
  id: 6,
  first_name: "Hiro2",
  last_name: "Yamada2",
  phone: "123456897",
  created_at: Fri, 12 Jan 2024 19:40:20.764729000 UTC +00:00,
  updated_at: Fri, 12 Jan 2024 19:40:20.764729000 UTC +00:00>,
 
  id: 7,
  first_name: "Hello",
  last_name: "Yamada2",
  phone: "123456897",
  created_at: Fri, 12 Jan 2024 19:47:01.883948000 UTC +00:00,
  updated_at: Fri, 12 Jan 2024 19:47:01.883948000 UTC +00:00>] 

<!-- Retrieve only the first person from the list of people that have the same last name as you.--->
*This task can be completed in two ways:

yamada2.find 6

 id: 6,
 first_name: "Hiro2",
 last_name: "Yamada2",
 phone: "123456897",
 created_at: Fri, 12 Jan 2024 19:40:20.764729000 UTC +00:00,
 updated_at: Fri, 12 Jan 2024 19:40:20.764729000 UTC +00:00>

 OR 

yamada2[0]

 id: 6,
 first_name: "Hiro2",
 last_name: "Yamada2",
 phone: "123456897",
 created_at: Fri, 12 Jan 2024 19:40:20.764729000 UTC +00:00,
 updated_at: Fri, 12 Jan 2024 19:40:20.764729000 UTC +00:00> 


<!-- Update the phone number of the second person in the database. -->
second = Person.find 2

second.update(phone: 2222222222)

id: 2,
  first_name: "Hiro",
  last_name: "Yamada",
  phone: "2222222222",
  created_at: Fri, 12 Jan 2024 02:15:07.250723000 UTC +00:00,
  updated_at: Fri, 12 Jan 2024 20:34:52.637489000 UTC +00:00>

Person.all will show all the changes made

<!-- Retrieve the last name of the third person in the database. --> 
keoni = Person.find 3

id: 3,
 first_name: "Keoni",
 last_name: "Hello",
 phone: "123456789",
 created_at: Fri, 12 Jan 2024 02:16:09.027095000 UTC +00:00,
 updated_at: Fri, 12 Jan 2024 02:16:09.027095000 UTC +00:00> 

 keoni.last_name
 => "Hello" 
