require 'pry'

class String

  def sentence?
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
    #why not count the groups of punctiation as a means of finding the sentence/question/exclamation endings?
    res = self.scan(/[!.?]+/) #find any number of these guys in a row and return them to an array.
    return res.length
  end
end
