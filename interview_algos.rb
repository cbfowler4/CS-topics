# given a string, return the longest substring of 2 uniq characters
# input: aabbaaccaaaadd
# output: aaccaaaa


def longestSub(string)
  #store character and pointer in array
  set = [[], []];
  longStart = 0;
  longest = "";

  string.each_with_index do |char, idx|
    if char != set[0][0] && char != set[1][0]
      #check to see if current set longer than longest
      if idx - longStart > longest.length
        longest = string[idx...longStart]
      end

      #update set
      set.shift
      set.push([char, idx])
      longStart = set[0][1]

    elsif char == set[1][0] 


    end


  end
end
