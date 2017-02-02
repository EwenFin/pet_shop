def test_one_plus_one
  expected_value = 2
  actual_value = 1 + 1
  assert_equal(expected_value, actual_value)
  # assert_equal(2, 1 + 1) # does the same thing as the above 3 lines
end

def add_one_5_is_6
  expected_value = 6
  actual_value = add_one(5)
  assert_equal(expected_value, actual_value)
end
