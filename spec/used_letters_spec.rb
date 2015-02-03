require('spec_helper')

describe(UsedLetter) do

  before() do
    UsedLetter.clear()
  end

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
end
