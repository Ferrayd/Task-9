# frozen_string_literal: true

# Класс для создания грузового поезда
class CargoTrain < Train
  def initialize(number)
    super
    @type = :cargo
  end
end
