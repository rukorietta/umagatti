require 'rails_helper'

RSpec.describe RaceResult, type: :model do
  describe "validations" do
    context "when all attributes are present" do
      before do
        @race_result = FactoryBot.build(:race_result)
      end

      it "is valid" do
        expect(@race_result).to be_valid
      end
    end

    context "when any attribute is missing" do
      before do
        @race_result = RaceResult.new
        @race_result.valid?
      end

      it "requires race_date" do
        @race_result.race_date = nil
        expect(@race_result).not_to be_valid
        expect(@race_result.errors[:race_date]).to include("を入力してください")
      end

      it "requires horse_name" do
        @race_result.horse_name = nil
        expect(@race_result).not_to be_valid
        expect(@race_result.errors[:horse_name]).to include("を入力してください")
      end

      it "requires jockey_name" do
        @race_result.jockey_name = nil
        expect(@race_result).not_to be_valid
        expect(@race_result.errors[:jockey_name]).to include("を入力してください")
      end

      it "requires race_name" do
        @race_result.race_name = nil
        expect(@race_result).not_to be_valid
        expect(@race_result.errors[:race_name]).to include("を入力してください")
      end

      it "requires position" do
        @race_result.position = nil
        expect(@race_result).not_to be_valid
        expect(@race_result.errors[:position]).to include("を入力してください")
      end
    end
  end
end