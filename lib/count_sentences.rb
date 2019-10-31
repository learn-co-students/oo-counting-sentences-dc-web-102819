require 'pry'

class String

  def sentence?
    return self.end_with?('.')
  end

  def question?
    return self.end_with?('?')
  end

  def exclamation?
    return self.end_with?('!')
  end

  def count_sentences
    delimiters = [".", "?", "!"]
    split_sentence = self.split(Regexp.union(delimiters))
    #binding.pry
    return split_sentence.map {|value| split_sentence.delete("")}.count
    #return split_sentence.count
  end
end

"This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences