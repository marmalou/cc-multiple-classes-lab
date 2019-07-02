require('minitest/autorun')
require('minitest/rg')
require_relative('../person')

class PersonTest < MiniTest::Test
  def setup()
    @person = Person.new("Gerald", 40)
  end

  def test_person_name()
    assert_equal("Gerald", @person.name())
  end

  def test_person_age()
    assert_equal(40, @person.age())
  end

end
