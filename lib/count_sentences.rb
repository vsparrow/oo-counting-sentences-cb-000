require 'pry'

class String
  # Define this instance method to return true if the string you are calling it on ends in a period
  # and false if it does not.
  def sentence?
    if self.end_with?(".")
      return true
    end
    false
  end

  def question?
    if self.end_with?("?")
      return true
    end
    false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    # puts "******#{self}****"
    puts self.split(/[.?!]/).inspect
    sarray = self.split(/[.?!]/)
    blank = 0
    sarray.each do |sentence|
      if sentence.length == 0
        blank +=1
      end
    end #sarray.each
    puts "sarray #{sarray}"

    self.split(/[.?!]/).length-blank
  end
end

# puts "one. two. three?"
# puts "one. two. three?".count_sentences
puts "This, well, is a sentence. This is too!! And so is this, I think? Woo..."
puts "This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences
