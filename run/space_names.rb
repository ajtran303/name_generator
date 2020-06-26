require "./lib/outer_space_name_generator"

names = File.readlines("./data/names.txt", chomp: true)
amount = (ARGV[0] || 1).to_i

puts OuterSpaceNameGenerator.generate(names, amount)
