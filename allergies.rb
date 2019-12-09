# frozen_string_literal: true

class Allergies
  def initialize(score); end

  def allergic_to?(_allergen)
    false
  end

  def list
    []
  end
end
