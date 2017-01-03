# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
get '/contact'do
"www.google.com"
end
# add a query parameter
get '/great_job/:name' do
  name = params [:name]
  "Good job, #{name}!"
end

get '/:number_1/plus/:number_2' do
"#{params[:number_1].to_i + params[:number_2].to_i}"
end

# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# Release 1

# 1. Is Sinatra the only web app library in Ruby? What are some others?
# Cuba, Pandrino, Lotus, Rails

# 2. Are SQLite and the sqlite3 gem your only options for using a database with Sinatra? What are some others?
# activerecord, fwitter 3, heroku

# 3.What is meant by the term web stack?
# It refers to the components or technologies/languages/operating systems used to build a website.





