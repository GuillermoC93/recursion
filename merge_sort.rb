def merge_sort(array)
  if array.length < 2
    array
  else
    len = array.length
    half = (array.length / 2)

    left = array[0...half]
    right = array[half..len]
    merge(merge_sort(left), merge_sort(right))
  end
end

def merge(left, right)
  merged_array = []

  while left.any? && right.any?
    if left[0] < right[0]
      merged_array << left.shift
    elsif right[0] < left[0]
      merged_array << right.shift
    end
  end

  merged_array << left.shift until left.empty?
  merged_array << right.shift until right.empty?
  merged_array
end

p merge_sort([14, 12, 3, 5, 63, 11, 23, 88, 89, 2])