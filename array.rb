The array class has various methods of removing elements from the array.

Let's look at the array

 arr = [5, 6, 5, 4, 3, 1, 2, 5, 4, 3, 3, 3] 

Delete an element from the end of the array

Delete an element from the beginning of the array

Delete an element at a given position

Delete all occurrences of a given element
code:

def end_arr_delete(arr) 
  arr.pop
end
def start_arr_delete(arr)  
  arr.shift
end
def delete_at_arr(arr, index)

  arr.delete_at(index)
end
def delete_all(arr, val)
  arr.delete(val)
end
