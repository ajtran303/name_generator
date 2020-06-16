require "./lib/name_generator"

class FancyNameGenerator < NameGenerator

  def initialize(names)
    super
  end

  def full_name
    add_names

    "#{@second_name} " +

    "#{@fourth_name[0]}" +
    "#{@first_name[1..-2]}" +
    "#{@fourth_name[-1]}" +
    "#{@third_name[0].downcase}-" +

    "#{@first_name[0]}" +
    "#{@fourth_name[1..-2]}" +
    "#{@first_name[-1]}"
  end
end
