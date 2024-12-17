
RSpec.describe  do
  describe "word_checking" do
    it do
      expect(word_checking("qwertcs")).to eq(128)
    end

    it do
      expect(word_checking("qwertCs")).to eq(128)
    end

    it do
      expect(word_checking("qwertcS")).to eq(128)
    end

    it do
      expect(word_checking("qwertCS")).to eq(128)
    end

    it do
      expect(word_checking("tcs")).to eq(8)
    end

    it do
      expect(word_checking("cs")).to eq(4)
    end

    it do
      expect(word_checking("CS")).to eq(4)
    end

    it do
      expect(word_checking("cS")).to eq(4)
    end

    it do
      expect(word_checking("Cs")).to eq(4)
    end

    it do
      expect(word_checking("Ivan")).to eq("navI")
    end

    it do
      expect(word_checking("potatoes")).to eq("seotatop")
    end

  end
end
