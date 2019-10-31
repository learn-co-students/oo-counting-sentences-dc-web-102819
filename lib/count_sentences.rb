require 'pry'

class String

  def sentence?
    # You will need to use the self keyword in the body of this method to refer
    # to the string on which the method is being called. You can use the
    # end_with? method to determine what the final character in a string is.
    # Call the end_with? method on self inside of your #sentence? method.
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    new_array =self.split(/[.?!]/).reject {|string| string.empty?}
    return new_array.length
  end
end
