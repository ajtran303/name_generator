require "./lib/outer_space_name_generator"
require "./lib/names_service"

location = "./data/names.txt"

amount = ARGV[0]
amount ||= 1

amount.to_i.times do

  service = NamesService.new(location)
  names = service.names

  generator = OuterSpaceNameGenerator.new(names)
  space_name = generator.full_name

  puts space_name

end
