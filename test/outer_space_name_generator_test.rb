require "minitest/autorun"
require "minitest/pride"
require "mocha/minitest"
require "./lib/outer_space_name_generator"

class OuterSpaceNameGeneratorTest < MiniTest::Test

  def setup
    @name1 = "Hrafnhildur"
    @name2 = "Ruby"
    @name3 = "JavaScript"
    @name4 = "Python"
    @name5 = "Haskell"
    @name6 = "Elixir"
    @names = [@name1, @name2, @name3, @name4, @name5, @name6]
  end

  def test_it_exists
    name_generator = OuterSpaceNameGenerator.new(@names)
    assert_instance_of OuterSpaceNameGenerator, name_generator
  end

  def test_it_has_attributes
    name_generator = OuterSpaceNameGenerator.new(@names)
    assert_equal @names, name_generator.names
    assert_nil name_generator.first_name
    assert_nil name_generator.second_name
    assert_nil name_generator.third_name
    assert_nil name_generator.fourth_name
  end

  def test_it_can_pick_four_names_randomly
    name_generator = OuterSpaceNameGenerator.new(@names)
    names = name_generator.pick_four

    assert_instance_of Array, names
    assert_equal 4, names.size
    assert_equal true, names.size == names.uniq.size
    assert_equal true, names.all? { |name| @names.include?(name) }
  end

  def test_it_can_add_names_stub
    name_generator = OuterSpaceNameGenerator.new(@names)
    name_generator.stubs(:pick_four).returns(["Haskell", "Ruby", "Elixir", "JavaScript"])

    name_generator.add_names

    assert_equal "Haskell", name_generator.first_name
    assert_equal "Ruby", name_generator.second_name
    assert_equal "Elixir", name_generator.third_name
    assert_equal "JavaScript", name_generator.fourth_name
  end

  def test_it_can_add_names_no_stub
    name_generator = OuterSpaceNameGenerator.new(@names)

    name_generator.add_names

    refute_nil name_generator.first_name
    refute_nil name_generator.second_name
    refute_nil name_generator.third_name
    refute_nil name_generator.fourth_name

    assert_includes @names, name_generator.first_name
    assert_includes @names, name_generator.second_name
    assert_includes @names, name_generator.third_name
    assert_includes @names, name_generator.fourth_name
  end

  def test_it_can_make_a_full_name
    name_generator = OuterSpaceNameGenerator.new(@names)
    name_generator.expects(:pick_four).returns(["Haskell", "Ruby", "Elixir", "JavaScript"])

    assert_equal "Hr-Ej Tr'ert", name_generator.full_name
  end

end
