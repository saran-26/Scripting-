Here are some other ways to access array objects in Ruby.
To access the elements from the end of the list, we can use negative indices.
For the array,
arr = [9, 5, 1, 2, 3, 4, 0, -1]
 > arr[-1]
 => -1
=>The first element of the array can be accessed using
=>The last element of the array can be accessed using
=>The first n elements of the array can be accessed using
Everything but the first n elements of the array can be accessed using
In this challenge, you have to use the syntax as explained above and complete the functions accordingly.


code:

def neg_pos(arr, index)
  arr[-index]
end

def first_element(arr)
  arr.first
end

def last_element(arr)
  arr.last
end

def first_n(arr, n)
  arr.take(n)
end

def drop_n(arr, n)
  arr.drop(n)
end
