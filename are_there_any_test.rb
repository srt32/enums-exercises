gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

# would be good to have a test with 0 not in the last position

class AreThereAnyTest < Minitest::Test
  def test_has_a_zero
    numbers = [2, 9, 3, 1, 0]
    has_zero = false
    numbers.each do |number|
      has_zero = true if numbers.include?(0)
    end
    assert has_zero
  end

  def test_has_zeros
    numbers = [3, 1, 0, 7, 9, 0]
    has_zero = false
    numbers.each do |number|
      has_zero = true if numbers.include?(0)
    end
    assert has_zero
  end

  def test_does_not_have_zero
    numbers = [3, 1, 3, 2, 4, 9, 8]
    has_zero = false
    numbers.each do |number|
      has_zero = true if numbers.include?(0)
    end
    refute has_zero
  end

  def test_no_alice
    names = %w(chuck charlene cory chris carl)
    has_alice = false
    names.each do |name|
      has_zero = true if names.include?(name)
    end
    refute has_alice
  end

  def test_has_alice
    names = %w(bill bob burton alice brandon)
    has_alice = false
    names.each do |name|
      if names.include?(name)
        has_zero = true 
        return
      end
    end
    assert has_alice
  end
end

