class NamesService
  attr_reader :names

  def initialize(location)
    @names = from_txt(location)
  end

  def from_txt(location)
    File.readlines(location, chomp: true)
  end
end
