# frozen_string_literal: true

require_relative '../allergies.rb'

describe Allergies do
  context 'when score is equal to 0' do
    let(:allergies) { Allergies.new(0) }

    describe '#allergic_to?' do
      it 'should return false for chocolate' do
        expect(allergies.allergic_to?('chocolate')).to be false
      end
    end

    describe '#list' do
      it 'should return an empty list' do
        expect(allergies.list).to eq []
      end
    end
  end

  context 'when score is equal to 34' do
    let(:allergies) { Allergies.new(34) }

    describe '#allergic_to?' do
      it 'should return true for chocolate' do
        expect(allergies.allergic_to?('chocolate')).to be true
      end
    
      it 'should return false for shellfish' do
        expect(allergies.allergic_to?('shellfish')).to be false
      end
    end
  
    describe '#list' do
      it 'should return a list containing chocolate and peanuts' do
        expect(allergies.list).to include('chocolate', 'peanuts')
      end
    end
  end

  context 'when score is equal to 191' do
    let(:allergies) { Allergies.new(191) }

    describe '#allergic_to?' do
      it 'should return true for chocolate' do
        expect(allergies.allergic_to?('chocolate')).to be true
      end
    
      it 'should return false for pollen' do
        expect(allergies.allergic_to?('pollen')).to be false
      end
    end
  
    describe '#list' do
      it 'should return a list containing chocolate and peanuts' do
        expect(allergies.list).to include('eggs', 'peanuts', 'shellfish', 'strawberries', 'tomatoes', 'chocolate', 'cats')
      end
    end
  end
end