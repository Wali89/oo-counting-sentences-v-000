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

    test = self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size
    binding.pry
  end

end
"one. two. three?".count_sentences
