require "./lib/fancy_name_generator"
require "./lib/names_service"

service = NamesService.new("./data/names.txt")
names = service.names

(ARGV[0] || 1).to_i.times do
  generator = FancyNameGenerator.new(names.sample(4))
  puts generator.full_name
end
