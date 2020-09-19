require "./lib/heroes_per_player"

RSpec.describe HeroesPerPlayer do
  describe 'instantiation' do
    context 'is valid' do
      it 'with a positive integer' do
        heroes_per_player = HeroesPerPlayer.new(5)

        expect(heroes_per_player).to be_instance_of(HeroesPerPlayer)
      end  
    end

    context 'raises an ArgumentError' do
      it 'when not a number' do
        expect {
          heroes_per_player = HeroesPerPlayer.new('A') 
        }.to raise_error(ArgumentError)
      end

      it 'with a negative number' do
        expect {
          heroes_per_player = HeroesPerPlayer.new(-5) 
        }.to raise_error(ArgumentError)
      end
    end

    context 'raises an HeroesPerPlayer::ExceededError' do
      it 'when number of heroes exceeds maximum' do
        exceeded_value = HeroesPerPlayer::MAXIMUM + 1

        expect {
          heroes_per_player = HeroesPerPlayer.new(exceeded_value) 
        }.to raise_error(HeroesPerPlayer::ExceededError)
      end
    end
  end

  describe 'self.number' do
    subject { HeroesPerPlayer.new(5) }
    it 'returns a number' do
      expect(subject.number).to be_kind_of Numeric
    end
  end

  describe 'MAXIMUM' do
    it 'returns a numeric' do
      expect(HeroesPerPlayer::MAXIMUM).to be_kind_of Numeric
    end
  end
end