class Word

  @@the_word = []
  @@dashes = []

  define_method(:initialize) do |word|
    @word = word
  end

  define_method(:word) do
    @word
    #returns the property of the instance of the class object
  end

  define_singleton_method(:all) do
    @@the_word
  end

  define_singleton_method(:clear) do
    @@the_word = []
  end

  define_method(:save) do
    @@the_word.push(self)
  end

  define_method(:sanitize) do
    @word.downcase!()
    @word.strip!()
  end

  define_method(:break_apart) do
    @word.split("")
  end

  define_method(:dash) do
    word_length = @word.length()
     @word.each do |x|
       @@dashes.push("-")
     end
     @@dashes
   end

   define_method(:check_word) do |letter|
     if @word.include?(letter.letter)
       index = @word.index(letter.letter)
       @@dashes[index] = letter.letter
     else
       @@dashes
     end
     @@dashes
   end#ends check_word method

end
