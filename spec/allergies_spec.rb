# frozen_string_literal: true

require_relative '../allergies.rb'

describe Allergies do
  it 'should return false for chocolate when score is equal to 0' do
    allergies = Allergies.new(0)
    expect(allergies.allergic_to?('chocolate')).to be false
  end

  it 'should return an empty list when score is equal to 0' do
    allergies = Allergies.new(0)
    expect(allergies.list).to eq []
  end
end