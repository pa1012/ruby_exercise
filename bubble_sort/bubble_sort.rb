def bubble_sort(arr) 
  n = arr.length-1
 
  for i in (0..n-1) do
    swapped = false
    for j in (0..n-i-1) do
      if (arr[j] > arr[j+1]) 
        arr[j], arr[j+1] = arr[j+1], arr[j]
        swapped = true
      end
    end
    break if not swapped
  end

end


arr = [4,3,78,2,0,2]
bubble_sort(arr)
p arr
# => [0, 2, 2, 3, 4, 78]
