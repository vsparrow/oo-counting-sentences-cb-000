require 'pry'

class String

  def sentence?
    self[-1] == "."
  end

  def question?
    self[-1] == "?"
  end

  def exclamation?
    self[-1] == "!"
  end

  def count_sentences
    s = self.dup.split(" ")
    count = 0
    s.each do |w|
      if w.sentence? || w.question? || w.exclamation?
        count += 1
      end
    end
    return count
  end
end
