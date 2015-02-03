class UsedLetter

  @@used_letters = []

  define_method(:initialize) do |letter|
    @letter = letter
  end

  define_singleton_method(:all) do
    @@used_letters
  end

  define_method(:save) do
    @@used_letters.push(self)
  end

  define_singleton_method(:clear) do
    @@used_letters = []
  end

  define_method(:check_word) do |letter|
    @letter = [letter]
    if @word.include?(@letter)
      return true
    end

  end


end
