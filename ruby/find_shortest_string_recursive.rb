def find_shortest_string_recursive(arr)
  # base case
  return arr[0] if arr.length === 1

  result = find_shortest_string_recursive(arr[1..-1])
  arr.first.length <= result.length ? arr.first : result
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 'a'"
  puts "=>", find_shortest_string_recursive(['aaa', 'a', 'bb', 'ccc'])

  puts

  puts "Expecting: 'hi'"
  puts "=>", find_shortest_string_recursive(['cat', 'hi', 'dog', 'an'])

  puts

  puts "Expecting: 'lily'"
  puts "=>", find_shortest_string_recursive(['flower', 'juniper', 'lily', 'dandelion'])

  # Don't forget to add your own!
  puts "Expecting: 'abc'"
  puts "=>", find_shortest_string_recursive(["abc", "cdb", "hello", "cherry"])
end

# Please add your pseudocode to this file
# And a written explanation of your solution
