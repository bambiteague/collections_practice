#Question 1
def sort_array_asc(i)
# take in an array of intergers
# returns a copy of the array with the intergers in ascending order
i.sort do |a, b|
    a <=> b
  end

end


#Question2
def sort_array_desc(i)
# takes in an array of ingergers
# returns a copy in descending order
i.sort do |a, b|
    b <=> a    # looks like swapping the what's compared to what here flips the order!
  end

end

#  *** remember '.sort takes a block in which you can specify how you want to sort the array' ***

#Question3
def sort_array_char_count(strings)
# takes in an array of strings
# returns the array in ascending order by length
new_string = strings.sort do |left, right|
    left.length <=> right.length
    end

end


#Question4
def swap_elements(array)
 # takes in an array and swaps the second[1] and third[2] elements
    array.sort do |a,b|
        a[2] <=> b[1]
    end
end


#Question5
def reverse_array(i)
# takes in an array of intergers and returns a copy with elements in reverse order
    i.reverse
end


#Question6
def kesha_maker(strings)
# takes in an array of strings 
# replaces the third character in each string with a '$'
# use the '.each' method to iterate and build a new array to return at the end of your method
# think --> ("My_Each" lab)
    strings.each do |k| 
        k[2] = "$"
    end
   
end


#Question7
def find_a(array)
# method returns all the strings in the array passed to it that 'start_with?' the letter "a"
# use a high level iterator for this that finds, selects, or detects elements based on a condition
    array.select do |words| 
      words.start_with?("a")
    end
end


#Question8
def sum_array(array)
# adds together all of the integers in the array and returns their sum
#      ***Advanced*** try using the '.inject' method here
    array.inject {|sum, number| sum + number}

end


#Question9
def add_s(array) 
    array.collect.with_index do |word, index|
        if index == 1
            word
        else
            word + "s"
        end
     # add s to each word if it isn't the second   
    end
      
      
    #     word[0..3] + "s" 
    # else 
    #     array.reject do |word|
    #         word.include?([1]) + ""
    #     end
    # end
end