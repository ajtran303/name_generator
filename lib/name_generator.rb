class NameGenerator
  attr_reader :first_name,
              :second_name,
              :third_name,
              :fourth_name,
              :names

  def self.generate(names, amount)
    generator = new(names)
    names = []
    amount.times { names << generator.full_name }
    names
  end

  def initialize(names)
    @names = names
  end

  def pick_four
    @names.sample(4)
  end

  def add_names
    @first_name,
    @second_name,
    @third_name,
    @fourth_name = pick_four
  end

  def full_name
    add_names
    "#{@first_name} #{@second_name} #{@third_name} #{@fourth_name}"
  end
end
