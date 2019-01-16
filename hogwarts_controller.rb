require( 'sinatra' )
require( 'sinatra/reloader' ) if development?
require( 'pry' )
require_relative( './models/student' )
also_reload('./models/*')

get '/' do
  erb(:home)
end

# INDEX
get '/students' do
  # Go to the database and retrieve all the orders
  @students = Student.all
  # Display a list of all the orders
  erb(:index)
end
# NEW
get '/students/new' do
  erb(:new)
end
# # CREATE
post '/students' do
  # Create a new pizza order object and save it to the database
  Student.new(params).save
  # Redirect the browser to '/students'
  redirect to '/students'
end
# # SHOW
get '/students/:id' do
  # Retrieve one pizza order from the database
  @student = Student.find(params[:id])
  # Display the details of that order
  erb(:show)
end
# # EDIT
get '/students/:id/edit' do
  @student_info = Student.find(params[:id])
  erb(:edit)
end
# # UPDATE
put '/students/:id' do
  Student.new(params).update
  redirect to '/students'
end
#
# # DESTROY
#
delete '/students/:id' do
  @delete_order = Student.find(params[:id])
  @delete_order.delete
  redirect to '/students'
end
