require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    binding.pry
    self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size
    binding.pry
  end

end

"This, well, is a sentence. This is too!! And so is this, I think? Woo..." = String.new

"This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences
