require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    #ensure there is some kind of sentence at the end
    if self.sentence? || self.question? || self.exclamation?
      #if so count the final sentence
      count = 1
      #then break up the arrays and count each sentence, not counting the final irrelvant string in each split/array 
      count += self.split('. ').count - 1 + self.split('? ').count - 1 + self.split('! ').count - 1
    else
      count = 0
    end
  end
end