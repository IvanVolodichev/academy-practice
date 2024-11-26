# frozen_string_literal: true

RSpec.describe do
  describe "foobar" do

    it "returns second par if anyone par equal 20" do
      expect(foobar(20, 3)).to eq(3)
    end

    it "returns second par if anyone par equal 20" do
      expect(foobar(3, 20)).to eq(20)
    end

    it "returns sum" do
      expect(foobar(3, 3)).to eq(6)
    end

  end
end
