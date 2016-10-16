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

default_date_table = <<-SQL
  CREATE TABLE IF NOT EXISTS dates(
    id INTEGER PRIMARY KEY,
    date DATE
  )
SQL

default_warmup_table = <<-SQL
  CREATE TABLE IF NOT EXISTS warm_up(
    id INTEGER PRIMARY KEY,
    comment VARCHAR(255),
    yes_no BOOLEAN,
    user_id INT,
    date_id INT
  )
SQL

#Initialize default tables

fitness_db.execute(default_user_table)
fitness_db.execute(default_warmup_table)
fitness_db.execute(default_date_table)