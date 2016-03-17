# Cipher Challenge

# I worked on this challenge [by myself, with:]
# I spent [#] hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

# def dr_evils_cipher(coded_message)
#   input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the Ruby docs. 
#   decoded_sentence = []
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#             "g" => "c",
#             "h" => "d",
#             "i" => "e",
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}

#   input.each do |x| # What is #each doing here? This iterates over each element in the array input.
#     found_match = false  # Why would this be assigned to false from the outset? What happens when it's true? The found_match returns true when the code is shifted
#     cipher.each_key do |y| # What is #each_key doing here?
#       if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really? If the input x equals key y, add cipher value of key y into array decoded_sentence.
#         decoded_sentence << cipher[y]
#         found_match = true
#         break  # Why is it breaking here?
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing? This adds a space for each symbol above.
#         decoded_sentence << " "
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do? If x is a number, add x to decoded_sentence array
#         decoded_sentence << x
#         found_match = true
#         break
#       end
#     end
#     if not found_match  # What is this looking for? If there is no match for x, add x to decoded sentence array. For punctuation.
#       decoded_sentence << x
#     end
#   end
#   decoded_sentence = decoded_sentence.join("")
#   #What is this method returning? This joins the array into a string
# end

# Your Refactored Solution

def dr_evils_cipher(coded_message)
  input = coded_message.downcase.split("") 
  decoded_sentence = []
  cipher = ('a'..'z').to_a
    input.each do |x|
      if cipher.include?(x)
        decoded_sentence << cipher[cipher.index(x).to_i - 4]
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*"
        decoded_sentence << " "
      elsif 
        decoded_sentence << x
      end
    end
  decoded_sentence.join("")
end


# # Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")

# Reflection:

# What concepts did you review in this challenge?
  # Lots of being able to follow and refactor code. I also reviewed creating an array using a range, in this case a-z which was much simpler than having to type out each letter. Also removing redundency from code... we started wth a range of numbers 0-9 and added them to our decoded_cipher but then realized that we did not need to have a specific else clause for that since we already had a clause at the end that adds any other symbols to the decoded_cipher unchanged. 

# What is still confusing to you about Ruby?
  # Nothing involved in this challenge. Mostly, I am less familiar with the syntax now since we learned JavaScript. Sometimes I start writing things that I know are not Ruby but I cannot remember how to write the Ruby version correctly (it usually comes out half as Ruby and half as JavaScript) and I have to look it up.

# What are you going to study to get more prepared for Phase 1?
  #I definitely need to go over classes a little bit. In particular, the attr_accessor and what exactly they do. I also want to do the 4th optional release of this challenge and review a couple of other ones I have already completed.

# Keep your reflection limited to 10-15 minutes!