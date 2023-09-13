# frozen_string_literal: true

# Модуль для валидации
module Validation
  def valid?
    validate!
    true
  rescue StandardError
    false
  end
end
