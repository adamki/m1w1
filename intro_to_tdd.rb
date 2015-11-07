require 'minitest/autorun'

# This is a notated lecture p/b Jeff casimir. 7/7/15

class Calculator
  def add(a, b)
    #a - ( -b)
    a + b
  end

  def subtract(a, b)
    a-b
  end
end



class CalcTest < Minitest::Test
  def test_it_adds_two_numbers
    # 1. setup needed data/scenario
    # 2. Establish the desired outcome
    # 3. Do the "thing"
    # 4. Validate if the output matches the expeted

    # 1. setup needed data/scenario
    calc = Calculator.new()
    # 2. Establish the desired outcome
    input_a = 5
    input_b = 12
    expected_result = 17
    # 3. Do the "thing"
    result = calc.add(input_a , input_b)
    # 4. Validate if the output matches the expeted... It this true? (result == expected_result)
    #assert_equal(expected,actual)
    assert_equal(expected_result, result)
  end

  def test_it_subtracts_two_generated_numbers
    calc = Calculator.new
    input_a = rand(100)
    input_b = rand(100)
    expected_result = input_a - input_b
    result = calc.subtract(input_a , input_b)
    assert_equal(expected_result, result)
  end

  def it_quads_a_number
    calc = Calculator.new
    input = 2
    expected_result = 16
    result = calc.quad(input)
    assert_equal(expected_result, result)
  end
end
