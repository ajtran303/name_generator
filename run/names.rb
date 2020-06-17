require "./lib/name_generator"
require "./lib/names_service"

service = NamesService.new("./data/names.txt")
generator = NameGenerator.new(service.names)

(ARGV[0] || 1).to_i.times do
  puts generator.full_name
end
