# /ruby

def sort(list)
  return list if list.size == 1 # return ends the loop

  mid = list.size / 2
  left = list[0...mid]
  right = list[mid...list.size]
  merge(sort(left), sort(right)) # Divide and Conquer
end

def merge(left, right)
  sorted = []

  until left.empty? || right.empty?
    sorted << if left.first <= right.first
                left.shift
              else
                right.shift
              end
  end
  sorted.concat(left).concat(right)
end

array = [1, 2, 3, 4, 1, 2, 5, 6, 19, 2, 41, 1234, 284, 12, 12_345, 919_123, 12, 1251, 7475, 32_745, 292, 12, 36, 7,
         62_262, 1, 14_351, 199, 100]
sort(array)
