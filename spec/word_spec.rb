require('rspec')
require('pry')
require('man')
require('word')
require('used_letters')


describe(Word) do

  describe('.all') do
    it("is empty at first") do
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#save') do
    it("stores the word") do
      testword = Word.new('Hello')
      testword.save()
      expect(Word.all()).to(eq([testword]))
    end
  end

  describe('.clear') do
    it("clears all entries") do
      testword = Word.new("Hello")
      testword.save()
      testword = Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#sanitize') do
    it("sanitizes the users input and strips out unwanted spaces or characters") do
      testword = Word.new(" hEllo")
      expect(testword.sanitize()).to(eq("hello"))
    end
  end

  describe("#break_apart") do
    it("splits the word in to an array of letters") do
      testword = Word.new("hello")
      expect(testword.break_apart()).to(eq(["h", "e", "l", "l", "o"]))
    end
  end

  describe('#dash') do
    it("counts characters in array and outputs dashes for each one") do
      testword = Word.new(["h", "e", "l", "l", "o"])
      testword.save()
      # expect(testword.dash()).to(eq(5))
      expect(testword.dash()).to(eq(["-", "-", "-", "-", "-"]))
    end
  end

end
