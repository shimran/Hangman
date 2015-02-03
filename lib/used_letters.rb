class UsedLetter

  @@used_letters = []

  define_method(:initialize) do |letter|
    @letter = letter
    #initialize allows for the definition of properties
  end

  define_method(:letter) do
    @letter
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

end
