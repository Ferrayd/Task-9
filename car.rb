# frozen_string_literal: true

# Родительский класс для создания вагонов
class Car
  attr_reader :number, :type, :total_place, :used_place

  include Information
  include Validation

  def initialize(number, total_place)
    @number = number
    @total_place = total_place
    @used_place = 0
    validate!
    self.class.all << self
  end

  def self.all
    # rubocop: disable Style/ClassVars
    @@all ||= []
    # rubocop: enable Style/ClassVars
  end

  def free_place
    total_place - used_place
  end

  def print_cars
    print_text('Список вагонов:')
    Car.all.each_with_index { |v, i| puts "#{i}. #{v.number}, #{v.type}" }
  end

  protected

  def validate!
    raise 'Ошибка валидации: номер вагона должен быть текстовым' if @number.class != String
    raise 'Ошибка валидации: не указан номер вагона' if @number.empty?
    raise 'Ошибка валидации: вместимость должна быть числом' if @total_place.class != Integer
    raise 'Количество мест указано некорректно!' unless (1..100).include?(@total_place)
  end
end
