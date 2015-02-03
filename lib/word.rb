class Word

  @@the_word = []

  define_method(:initialize) do |word|
    @word = word
  end

  define_method(:sanitize) do
    @word.downcase!()
    @word.strip!()
  end

  define_singleton_method(:all) do
    @@the_word
  end

  define_method(:save) do
    @@the_word.push(self)
  end

  define_singleton_method(:clear) do
    @@the_word = []
  end

  define_method(:break_apart) do
    @word.split("")
  end

  define_method(:dash) do
    dashes = []
    word_length = @word.length()
     @word.each do |x|
       dashes.push("-")
     end
     dashes
   end

end
