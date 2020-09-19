require './lib/heroes_slicer'

RSpec.describe HeroesSlicer do
  context 'is valid' do
    it 'when passing the number of heroes to be sliced' do
      heroes_slicer = HeroesSlicer.new(5)
  
      expect(heroes_slicer).to be_instance_of(HeroesSlicer)
    end
  end

  context 'raise an ArgumentError' do
    it 'when the number is not provided' do
      expect { 
        heroes_slicer = HeroesSlicer.new
      }.to raise_error(ArgumentError)
    end
  end
end