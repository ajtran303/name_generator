require "./lib/name_generator"

class OuterSpaceNameGenerator < NameGenerator

  def initialize(names)
    super
  end

  def full_name
    add_names
    "#{@first_name[0]}" +
    "#{@third_name[-1]}-" +
    "#{@third_name[0]}" +
    "#{@fourth_name[0].downcase} " +

    "#{@fourth_name[-1].upcase}" +
    "#{@second_name[0].downcase}'" +
    "#{@third_name[0].downcase}" +
    "#{@third_name[-1]}" +
    "#{@fourth_name[-1]}"
  end

end
