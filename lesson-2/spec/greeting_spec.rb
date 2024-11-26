RSpec.describe do

  describe 'greeting' do

    it 'returns if user age < 18' do
      expect(greeting('Ivan', 'Volodichev', 17)).to eq("Привет, Ivan Volodichev. Тебе меньше 18 лет, но начать учиться программировать никогда не рано.")
    end
    
    it 'returns if user age >= 18' do
      expect(greeting('Ivan', 'Volodichev', 22)).to eq("Привет, Ivan Volodichev. Самое время заняться делом!")
    end

  end

end