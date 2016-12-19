require 'sqlite3'

db = SQLite3::Database.new("schedule.db")
db.results_as_hash = true

create_table_monday = <<-SQL
  CREATE TABLE IF NOT EXISTS monday(
    id INTEGER PRIMARY KEY,
    exercise_1 VARCHAR(255), sets1 INT,
    ex1_reps INT, exercise_2 VARCHAR(255), sets2 INT,
    ex2_reps INT, exercise_3 VARCHAR(255), sets3 INT,
    ex3_reps INT
  )
SQL
db.execute(create_table_monday)
db.execute("INSERT INTO monday (exercise_1, sets1, ex1_reps, exercise_2, sets2, ex2_reps, exercise_3, sets3, ex3_reps) VALUES ('Squat', 3, 10, 'deadlift', 3, 10, 'leg press', 3, 12)")

create_table_wednesday = <<-SQL
  CREATE TABLE IF NOT EXISTS wednesday(
    id INTEGER PRIMARY KEY,
    exercise_1 VARCHAR(255), sets1 INT,
    ex1_reps INT, exercise_2 VARCHAR(255), sets2 INT,
    ex2_reps INT, exercise_3 VARCHAR(255), sets3 INT,
    ex3_reps INT
  )
SQL
db.execute(create_table_wednesday)
db.execute("INSERT INTO wednesday (exercise_1, sets1, ex1_reps, exercise_2, sets2, ex2_reps, exercise_3, sets3, ex3_reps) VALUES ('Bench Press', 3, 10, 'Incline Bench Press', 4, 12, 'Decline Bench Press', 4, 12)")

create_table_friday = <<-SQL
  CREATE TABLE IF NOT EXISTS friday(
    id INTEGER PRIMARY KEY,
    exercise_1 VARCHAR(255), sets1 INT,
    ex1_reps INT, exercise_2 VARCHAR(255), sets2 INT,
    ex2_reps INT, exercise_3 VARCHAR(255), sets3 INT,
    ex3_reps INT
  )
SQL
db.execute(create_table_friday)
db.execute("INSERT INTO friday (exercise_1, sets1, ex1_reps, exercise_2, sets2, ex2_reps, exercise_3, sets3, ex3_reps) VALUES ('Shoulder Press', 3, 10, 'Bicep Curl', 4, 12, 'Tricep Press', 4, 12)")
