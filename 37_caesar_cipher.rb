# Write a class that implements the Caesar cipher.
# (http://practicalcryptography.com/ciphers/caesar-cipher/)
#
# When given a string, will return an uppercase string with each letter shifted
# forward in the alphabet by however many spots the cipher was initialized to.
#
# For example:
#
# c = CaesarCipher.new(5); # creates a CipherHelper with a shift of five
# c.decode('BFKKQJX') # returns 'WAFFLES'
# 
# If the shift pushes beyond the end of the alphabet, start back at 'A'
# Example: 
# c = CaesarCipher.new(1)
# c.encode('ZOO') # returns 'APP'
#
# If something in the string is not in the alphabet (e.g. punctuation, spaces), simply leave it as is.
#
# The shift will always be in range of [1, 26].

class CaesarCipher
  def initialize(shift)
    # your code here
  end

  def encode(string)
    # your code here
  end
  
  def decode(string)
    # your code here
  end
end