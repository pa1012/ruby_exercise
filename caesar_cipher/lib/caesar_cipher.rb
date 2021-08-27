class CaesarCipher
  def translate(string, shift)
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
end

caesar_cipher = CaesarCipher.new()

p caesar_cipher.translate("What a string!", 5) # 'Bmfy f xywnsl!'
p caesar_cipher.translate("Zz", 5) # "Ee"
p caesar_cipher.translate("Ee", -5) # "Zz"
p caesar_cipher.translate("Zz", 83) # "Ee"
p caesar_cipher.translate("Ee", -83) # "Zz"

