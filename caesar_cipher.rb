
def caesar_cipher(string, shift)
  char = string.split("")
  char = char.map do |c| 
    if ('a'..'z').include?(c) 
      ((c.ord + shift - 97) % 26 + 97).chr
    elsif ('A'..'Z'). include?(c)
      ((c.ord + shift - 65) % 26 + 65).chr
    else
       c
    end
  end
  
  
  return char.join()
end

p caesar_cipher("What a string!", 5)
