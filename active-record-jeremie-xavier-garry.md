<!-- Challenge: Rolodex
Note: A rolodex is a collection of paper cards that contain people's names and contact information. They were a common household and office item in the pre-digital age. -->
$ cd Desktop/active-record
$ rails db:create

<!-- As a developer, I have been tasked with creating a database model to store friends and family contact information. I want to ensure the database behaves as expected and the necessary information can be retrieved, added, updated, and deleted.

All tasks should be performed in order as listed below.

✔️ Acceptance Criteria
The rolodex application data should be managed by a PostgreSQL database in a Rails application.
 The model should be called Person with first_name, last_name, and phone attributes. All data types should be strings. -->
$ rails g model Person first_name:string last_name:string phone:string
$ rails db:migrate

<!-- Add five friends and family members to the people table using the Rails console. -->
$ rails console
Person.create(first_name: "Friend1", last_name: "Last1", phone: "123-456-7890")
% #<Person:0x00000001060ae180
% id: 1,
% first_name: "Friend1",
% last_name: "Last1",
% phone: "123-456-7890",
% created_at: Fri, 12 Jan 2024 00:30:48.853242000 UTC +00:00,
% updated_at: Fri, 12 Jan 2024 00:30:48.853242000 UTC +00:00>
exit

Person.create(first_name: "Friend2", last_name: "Last2", phone: "124-456-7891")
% #<Person:0x0000000106087bc0
% id: 2,
% first_name: "Friend2",
% last_name: "Last2",
% phone: "124-456-7891",
% created_at: Fri, 12 Jan 2024 00:35:03.615466000 UTC +00:00,
% updated_at: Fri, 12 Jan 2024 00:35:03.615466000 UTC +00:00>
exit

Person.create(first_name: "Friend3", last_name: "Last3", phone: "125-456-7892")
% #<Person:0x000000010646af08
% id: 3,
% first_name: "Friend3",
% last_name: "Last3",
% phone: "125-456-7892",
% created_at: Fri, 12 Jan 2024 00:35:09.404178000 UTC +00:00,
% updated_at: Fri, 12 Jan 2024 00:35:09.404178000 UTC +00:00>
exit

Person.create(first_name: "Friend4", last_name: "Last4", phone: "126-456-7893")
% #<Person:0x0000000106347e50
% id: 4,
% first_name: "Friend4",
% last_name: "Last4",
% phone: "126-456-7893",
% created_at: Fri, 12 Jan 2024 00:35:16.438619000 UTC +00:00,
% updated_at: Fri, 12 Jan 2024 00:35:16.438619000 UTC +00:00>
exit

Person.create(first_name: "Friend5", last_name: "Last5", phone: "127-456-7894")
% #<Person:0x0000000106407818
% id: 5,
% first_name: "Friend5",
% last_name: "Last5",
% phone: "127-456-7894",
% created_at: Fri, 12 Jan 2024 00:35:22.132576000 UTC +00:00,
% updated_at: Fri, 12 Jan 2024 00:35:22.132576000 UTC +00:00>
exit

% Retrieve all the people in the database.
$ rails console
Person.all
<!-- [#<Person:0x000000010642c320
%   id: 1,
%   first_name: "Friend1",
%   last_name: "Last1",
%   phone: "123-456-7890",
%   created_at: Fri, 12 Jan 2024 00:30:48.853242000 UTC +00:00,
%   updated_at: Fri, 12 Jan 2024 00:30:48.853242000 UTC +00:00>,
%  #<Person:0x000000010642c1e0
%   id: 2,
%   first_name: "Friend2",
%   last_name: "Last2",
%   phone: "124-456-7891",
%   created_at: Fri, 12 Jan 2024 00:35:03.615466000 UTC +00:00,
%   updated_at: Fri, 12 Jan 2024 00:35:03.615466000 UTC +00:00>,
%  #<Person:0x000000010642c0a0
%   id: 3,
%   first_name: "Friend3",
%   last_name: "Last3",
%   phone: "125-456-7892",
%   created_at: Fri, 12 Jan 2024 00:35:09.404178000 UTC +00:00,
%   updated_at: Fri, 12 Jan 2024 00:35:09.404178000 UTC +00:00>,
%  #<Person:0x000000010642bf60
%  id: 4,
%   first_name: "Friend4",
%   last_name: "Last4",
%   phone: "126-456-7893",
%   created_at: Fri, 12 Jan 2024 00:35:16.438619000 UTC +00:00,
%   updated_at: Fri, 12 Jan 2024 00:35:16.438619000 UTC +00:00>,
%  #<Person:0x000000010642be20
%   id: 5,
%   first_name: "Friend5",
%   last_name: "Last5",
%   phone: "127-456-7894",
%   created_at: Fri, 12 Jan 2024 00:35:22.132576000 UTC +00:00,
%   updated_at: Fri, 12 Jan 2024 00:35:22.132576000 UTC +00:00>]  -->
exit

<!-- Retrieve the third person in the database.  -->
$ rails console
Person.find(3)
% #<Person:0x0000000111234f58
%  id: 3,
%  first_name: "Friend3",
%  last_name: "Last3",
%  phone: "123-456-7890",
%  created_at: Fri, 12 Jan 2024 00:35:09.404178000 UTC +00:00,
%  updated_at: Fri, 12 Jan 2024 00:35:09.404178000 UTC +00:00>  
exit

% Retrieve only the first name of the first person in the database.
$ rails console
Person.first.first_name
<!-- Person Load (0.8ms)  SELECT "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]] => "Friend1" -->
exit

<!-- Remove the last person from the database.  -->
$ rails console
Person.last.destroy
% #<Person:0x00000001119d7580
% id: 5,
% first_name: "Friend5",
% last_name: "Last5",
% phone: "127-456-7894",
% created_at: Fri, 12 Jan 2024 00:35:22.132576000 UTC +00:00,
% updated_at: Fri, 12 Jan 2024 00:35:22.132576000 UTC +00:00>
exit

% Add yourself to the people table.
$ rails console
Person.create(first_name: "Friend6", last_name: "Last5", phone: "128-456-7895")
<!-- #<Person:0x0000000112c77fa0
 id: 6,
 first_name: "Friend6",
 last_name: "Last5",
 phone: "128-456-7895",
 created_at: Fri, 12 Jan 2024 00:49:16.830501000 UTC +00:00,
 updated_at: Fri, 12 Jan 2024 00:49:16.830501000 UTC +00:00>  -->
exit

<!-- Retrieve all the people that have the same last name as you. -->
$ rails console
Person.where(last_name: "Last5")
% [#<Person:0x0000000105e03c00
% id: 7,
% first_name: "Friend6",
% last_name: "Last5",
% phone: "128-456-7895",
% created_at: Fri, 12 Jan 2024 01:04:53.584345000 UTC +00:00,
% updated_at: Fri, 12 Jan 2024 01:04:53.584345000 UTC +00:00>] 
exit

% Retrieve only the first person from the list of people that have the same last name as you.
$ rails console
Person.where(last_name: "Last5").first
<!-- #<Person:0x0000000105de1ce0
 id: 8,
 first_name: "Friend6",
 last_name: "Last5",
 phone: "128-456-7895",
 created_at: Fri, 12 Jan 2024 01:08:21.250537000 UTC +00:00,
 updated_at: Fri, 12 Jan 2024 01:08:21.250537000 UTC +00:00>  -->
exit

<!-- Update the phone number of the second person in the database. -->
$ rails console
person = Person.find(2)
person.update(phone: "128-345-2178")
% TRANSACTION (0.1ms) BEGIN
% Person Update (0.4ms) UPDATE "people" SET "phone" = $1, "updated_at" = $2 WHERE "people"."id" = $3 [["phone", "128-345-2178"], ["updated_at", "2024-01-12 00:50:51.594501"], ["id", 2]]
% TRANSACTION (0.5ms) COMMIT
% => true
exit

<!-- Retrieve the last name of the third person in the database. -->
$ rails console
Person.find(3).last_name
% Person Load (0.5ms) SELECT "people".\* FROM "people" WHERE "people"."id" = $1 LIMIT $2 [["id", 3], ["LIMIT", 1]]
% => "Last3"
exit
