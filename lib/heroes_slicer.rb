class HeroesSlicer
  attr_reader :num_heroes, :available_hero_ids
  LAST_HERO_ID = 731.freeze

  def initialize(num_heroes)
    @num_heroes = num_heroes
    @available_hero_ids = fill_available_hero_ids
  end

  def slice
    sliced_ids = @available_hero_ids.sample(@num_heroes)
    remove_from_available_ids(sliced_ids)

    sliced_ids
  end

  private

  def fill_available_hero_ids
    @available_hero_ids = (1..LAST_HERO_ID).to_a
  end

  def remove_from_available_ids(ids_to_remove)
    @available_hero_ids = @available_hero_ids.delete_if do |id|
      ids_to_remove.include?(id)
    end
  end
end