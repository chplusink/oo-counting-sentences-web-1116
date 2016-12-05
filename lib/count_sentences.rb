require 'pry'

class String

  def sentence?
    self.chars[-1] == '.'
  end

  def question?
    self.chars[-1] == '?'
  end

  def exclamation?
    self.chars[-1] == '!'
  end

  def count_sentences
    self.split(' ').select do |word|
      word.chars[-1] == '.' || word.chars[-1] == '!' || word.chars[-1] == '?'
    end.length
  end
end
