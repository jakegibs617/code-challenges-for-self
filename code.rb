  def get_products_of_all_ints_except_at_index(int_array)
	products_of_all_ints_except_array_at_index = []
      
    product_so_far = 1
    i = 0
    while i < int_array.length
       products_of_all_ints_except_array_at_index[i] = product_so_far
       product_so_far *= int_array[i]
       i+= 1
    end
    
    product_so_far = 1
    i = int_array.length - 1
    while i >= 0
		products_of_all_ints_except_array_at_index[i] *= product_so_far
        product_so_far *= int_array[i]
        i -=1
    end
      
    return products_of_all_ints_except_array_at_index
  end
int_array = [1, 7, 3, 4]
# print get_products_of_all_ints_except_at_index(int_array)

def reverse_array(array)
  reverse_array = []
  
  while array.length > 0 

    last_item_in_array = array.pop 
    reverse_array.push (last_item_in_array) 

  end

  return reverse_array
end

array = [1, 2, 3]
# print reverse_array(array)

def sort_array(unsorted_array)
  sorted_array = []

  while unsorted_array.length > 0

    first_item_in_unsorted_array = unsorted_array.pop
    i = 0

    if sorted_array.length == 0
      sorted_array.push(first_item_in_unsorted_array)
    end

    if first_item_in_unsorted_array >= sorted_array[i] 

      j = i 
      puts "first_item_in_unsorted_array = #{first_item_in_unsorted_array}" 
      puts sorted_array
      puts sorted_array[j]

      while first_item_in_unsorted_array > sorted_array[j]
        j += 1
      end 

      sorted_array.insert(j + 1, first_item_in_unsorted_array)
      i += 1

    else
      j = i 

      while first_item_in_unsorted_array < sorted_array[j]
        j -= 1

      end 
      sorted_array.insert(j + 1, first_item_in_unsorted_array)
      i += 1
    end

  end


  return sorted_array
end

# outlier cases, 0, empty array, duplicate numbers
unsorted_array = [20, 16, 4, 8, 1]

# not currently working, in process of debuging, then will refactor..
print sort_array(unsorted_array)




