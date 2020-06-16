require "minitest/autorun"
require "minitest/pride"
require "./lib/names_service"

class NamesServiceTest < MiniTest::Test

  def setup
    @location = "./data/names.txt"
    @names_service = NamesService.new(@location)
  end

  def test_it_exists
    assert_instance_of NamesService, @names_service
  end

  def test_it_has_attributes
    names = @names_service.names

    assert_instance_of Array, names
    assert_equal 1308, names.size
    assert_equal "Aaron", names.first
    assert_equal "Yvonne", names.last
  end

  def test_it_can_get_names_from_txt
    fixture_names = @names_service.from_txt("./data/names_fixture.txt")

    assert_instance_of Array, fixture_names
    assert_equal 5, fixture_names.size
    assert_equal "Aaron", fixture_names.first
    assert_equal "Agatha", fixture_names.last
  end

end
