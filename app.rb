require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/parcel')

get("/") do
  erb(:index)
end

post("/") do
  @length = params.fetch("length").to_i
  @height = params.fetch("height").to_i
  @width = params.fetch("width").to_i
  @volume = @length * @width * @height
  @new_parcel = Parcel.new(@length, @width, @height)
  @new_parcel.volume
  @price = @new_parcel.cost_to_ship().to_f
  erb(:index)
end
