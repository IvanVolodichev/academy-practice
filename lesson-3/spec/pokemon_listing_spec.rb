RSpec.describe "Pokemon" do
  describe "#ask_for_count" do
    it "returns the number of pokemons to add" do
      allow_any_instance_of(Object).to receive(:gets).and_return("2\n")
      expect(ask_for_count).to eq(2)
    end
  end

  describe "#ask_for_details" do
    it "returns a hash with pokemon details" do
      allow_any_instance_of(Object).to( receive(:gets).and_return("Pikachu\n", "Yellow\n"))
      details = ask_for_details(1)
      expect(details).to eq({ 'name' => 'Pikachu', 'color' => 'Yellow' })
    end
  end

  describe "#add_pokemon" do
    it "adds multiple pokemons" do
      allow_any_instance_of(Object).to receive(:gets).and_return("2\n", "Pikachu\n", "Yellow\n", "Charmander\n", "Red\n")
      pokemons = add_pokemon
      expect(pokemons).to eq([
        { 'name' => 'Pikachu', 'color' => 'Yellow' },
        { 'name' => 'Charmander', 'color' => 'Red' }
      ])
    end
  end
end