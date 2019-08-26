def mergesort(arr)
    return arr if arr.size <= 1
    mid   = arr.size / 2
    left  = arr[0...mid]
    right = arr[mid...arr.size]
    merge(mergesort(left), mergesort(right))
  end
  
  def merge(left, right)
    sorted = []
    until left.empty? || right.empty?
      if left.first <= right.first
        sorted << left.shift
      else
        sorted << right.shift
      end
    end
    sorted.concat(left).concat(right)
  end
  p mergesort [18,21,73,4,55,26,47,78]