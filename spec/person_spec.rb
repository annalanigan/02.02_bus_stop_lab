require("minitest/autorun")
require("minitest/rg")
require_relative("../person.rb")

class TestPerson < MiniTest::Test

  def setup
    @person = Person.new("Hilary", 68)
  end

  def test_person_name
    assert_equal("Hilary", @person.name)
  end

  def test_person_age
    assert_equal(68, @person.age)
  end

end
