# frozen_string_literal: true

# Класс для создания пасажирских вагонов
class PassengerCar < Car
  def initialize(number, seats)
    @type = :passenger
    super
  end

  def take_seat
    @used_place += 1 if free_place.positive?
  end
end
