class Allergies
  NAMES = %w[eggs peanuts shellfish strawberries tomatoes chocolate pollen cats]

  def initialize(score)
    raise 'invalid score' unless
      score.is_a?(Integer) &&
      score >= 0 &&
      score < 256

    @score = score
  end

  def allergic_to?(allergen)
    list.include? allergen
  end

  def list
    score = @score
    NAMES.reverse.select.with_index do |allergen, i|
      allergen_score = 2**(NAMES.length - 1 - i)
      score -= allergen_score if score >= allergen_score
    end
  end
end
