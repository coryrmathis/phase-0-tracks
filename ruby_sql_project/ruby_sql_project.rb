require 'sqlite3'

fitness_db = SQLite3::Database.new("fitness.db")

#Database starts with three default tables: USERS, DATES, WARM-UP,
default_user_table = <<-SQL
  CREATE TABLE IF NOT EXISTS users(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    current_weight INT, 
    goal_weight INT,
    max_mile VARCHAR(255)
  )
SQL

default_warmup_table = <<-SQL
  CREATE TABLE IF NOT EXISTS warm_up(
    id INTEGER PRIMARY KEY,
    push_ups INT,
    sit_ups INT,
    squats INT,
    comment VARCHAR(255),
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id)
  )
SQL

default_day1_table = <<-SQL
  CREATE TABLE IF NOT EXISTS day1(
  user_id INTEGER,
  cardio VARCHAR(255),
  strength VARCHAR(255),
  FOREIGN KEY (user_id) REFERENCES users(id)
  )
SQL

default_day2_table = <<-SQL
  CREATE TABLE IF NOT EXISTS day2(
  user_id INTEGER,
  cardio VARCHAR(255),
  strength VARCHAR(255),
  FOREIGN KEY (user_id) REFERENCES users(id)
  )
SQL

default_day3_table = <<-SQL
 CREATE TABLE IF NOT EXISTS day3(
  user_id INTEGER,
  cardio VARCHAR(255),
  strength VARCHAR(255),
  FOREIGN KEY (user_id) REFERENCES users(id)
  )
SQL

#Initialize default tables

fitness_db.execute(default_user_table)
fitness_db.execute(default_warmup_table)
fitness_db.execute(default_day1_table)
fitness_db.execute(default_day2_table)
fitness_db.execute(default_day3_table)

# SQL COMMAND VARIABLES









# USER METHODS
# START UP METHODS
# Adds new user (will need to create logic to check if user already exists and
# if so, displays that user's data)

def add_user(db, name, age, current_weight, goal_weight, max_mile)
	db.execute("INSERT INTO users (name, age, current_weight, goal_weight, max_mile) 
	VALUES (?, ?, ?, ?, ?);", [name, age, current_weight, goal_weight, max_mile]
	)
end
 # Returns user_id for inserting into workout and warm up tables
def get_user_id(db, username)
	db.execute("SELECT id FROM users WHERE name=? ;", [username])
end

def remove_user(db, name)
	db.execute("DELETE FROM users WHERE name=? ;", [name])
end

def add_warm_up(db, push_ups, sit_ups, squats, comment, user_id)
	db.execute("INSERT INTO warm_up (push_ups, sit_ups, squats, comment, user_id)
	VALUES (?, ?, ?, ?, ?);", [push_ups, sit_ups, squats, comment, user_id]
	)
end

def add_day1(db, cardio, strength, user_id)
	db.execute("INSERT INTO day1 (cardio, strength, user_id)
	VALUES (?, ?, ?);", [cardio, strength, user_id]
	)
end

def add_day2(db, cardio, strength, user_id)
	db.execute("INSERT INTO day2 (cardio, strength, user_id)
	VALUES (?, ?, ?);", [cardio, strength, user_id]
	)
end

def add_day3(db, cardio, strength, user_id)
	db.execute("INSERT INTO day3 (cardio, strength, user_id)
	VALUES (?, ?, ?);", [cardio, strength, user_id]
	)
end

def get_user_data(db, username)
	db.execute("SELECT * FROM users;")
end

def get_warm_up_data(db, username)
	db.execute("SELECT * FROM warm_up;")
end

def get_day1_data(db, username)
	db.execute("SELECT * FROM day1;")
end

def get_day2_data(db, username)
	db.execute("SELECT * FROM day2;")
end

def get_day3_data(db, username)
	db.execute("SELECT * FROM day3;")
end

# USER INTERFACE
puts "-" * 30
puts "Welcome to your fitness tracker. If you have an account, 
enter your name to view your fitness plan. Otherwise enter your name to start a new account
end 'q' to exit the program."
puts "-" * 30

db = fitness_db
username = gets.chomp
user_id = get_user_id(db, username)

add_warm_up(db, 10, 10, 10, "Listen to Rage Against the Machine", user_id)

if user_id.empty? == true
	# Create new user profile
else
	user_data = get_user_data(db, username)
	warm_up_data = get_warm_up_data(db, username)
	day1_data = get_day1_data(db, username)
	day2_data = get_day2_data(db, username)
	day_3_data = get_day3_data(db, username)

	puts "YOUR CURRENT FITNESS INFO:"
	puts "USERNAME: #{user_data[0][1]}"
	puts "DAILY WARM-UP: Push-ups: #{warm_up_data[0][1]}, Sit-ups: #{warm_up_data[0][2]}, Squats: #{warm_up_data[0][3]}"

end
















# METHOD TESTS

#add_user(fitness_db, "Cory Mathis", 26, 170, 165, "7:30")

#remove_user(fitness_db, "Kyle Mathis")

#add_date(fitness_db, "2016-10-17")







