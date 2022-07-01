array = [45,3,786,2,4,235,36,36,57]

def bubblesort(array)
  for i in 0..array.length-2
    puts "i = #{array[i]}"
    for j in 0..array.length-2-i
      if array[j+1] <= array[j]
        aux = array[j]
        array[j] = array[j+1]
        array[j+1] = aux
      end
    end
  end
  
  array
end

p bubblesort(array)
