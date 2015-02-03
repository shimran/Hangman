require('rspec')
require('pry')
require('man')
require('word')
require('used_letters.rb')

describe(UsedLetter) do

  describe('.all') do
    it("is empty at first") do
      expect(UsedLetter.all()).to(eq([]))
    end
  end

  describe('#save') do
    it("saves the latest entry") do
      test_letter = UsedLetter.new("y")
      test_letter.save()
      expect(UsedLetter.all()).to(eq([test_letter]))
    end
  end

  describe('.clear') do
    it("clears out all the entries into superarray") do
      test_letter = UsedLetter.new("y")
      test_letter.save()
      test_letter = UsedLetter.clear()
      expect(UsedLetter.all()).to(eq([]))
    end
  end

  describe('#check_word') do
    it("It takes a letter, and finds out if the letter is in the word") do
      user_input = UsedLetter.new("h")
      user_input.save()
      expect((user_input).check_word(["h", "e", "l", "l", "o"])).to(eq(true))
    end
  end

end
