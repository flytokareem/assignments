def quicksort(array)
    return array if array.length <= 1
    reference_index = (array.length / 2).to_i
    reference_value = array[reference_index]
    array.delete_at(reference_index)
    lesser = []
    greater = []
    array.each do |x|
      if x <= reference_value
        lesser << x
      else
        greater << x
      end
    end
    return quicksort(lesser) + [reference_value] + quicksort(greater)
  end
  
  array = [25,52,33,41,88,87,72,64]
  sorted = quicksort(array)
  p sorted 