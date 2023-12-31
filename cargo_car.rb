# frozen_string_literal: true

# Класс для создания грузовых вагонов
class CargoCar < Car
  def initialize(number, volume)
    super
    @type = :cargo
  end

  def fill(volume)
    @used_place += volume if free_place >= volume
  end
end
