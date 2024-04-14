require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:layout)
end 

get("/square/new") do
  erb(:new_square_calc)
end

get("/square/results") do
@user_num = params.fetch("number").to_f
@sq_result = @user_num ** 2

  erb(:results_square)
end

get("/square_root/new") do
  erb(:new_square_root)
end

get("/square_root/results") do

  @user_num = params.fetch("number").to_f
  @sq_root_result = @user_num ** 0.5
  
    erb(:results_square_root)
  
  end
