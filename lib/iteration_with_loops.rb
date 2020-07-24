def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  outer_results = []
  row_index = 0
  while row_index < src.count do
    element_index = 0
    lowest_temperature = 212
    while element_index < src[row_index].count do
   
      # Array at row_index
      # Element of the inner array at element_index
      # If the length of the current element is greater than the length of lowest_temperature
      # Set lowest_temperature to the current element
      if src[row_index][element_index].length < lowest_temperature
        lowest_temperature = src[row_index][element_index]
      end
      element_index += 1
    end
   
    # We have to check every element in each inner array, so after the loop finishes
    # The current value of lowest_temperature is pushed into outer_results
    outer_results << lowest_temperature
    row_index += 1
  end
   
  outer_results

end