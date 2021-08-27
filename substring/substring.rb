class SubString
  def count(string, dictionary)
    split_string = string.split(/[^[[:word:]]']+/)
    split_string = split_string.map {|word| word.downcase}
    res = Hash.new

    dictionary.each do |w|
      count = 0
      split_string.each {|word| count += 1 if word.include?(w)} 
      if (count > 0) 
        res[w] = count
      end
    end

    return res
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


sub_string = SubString.new()

p sub_string.count("Howdy partner, sit down! How's it going?", dictionary)
# { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
