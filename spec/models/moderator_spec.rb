require 'rails_helper'

RSpec.describe Moderator, type: :model do
  context 'validations' do
    it "переконаймося перед зберіганням новогого аккаунту модератора що імя не пусте" do
      moderator = Moderator.new(name: "").save
      expect(moderator).to eq(false)
    end
  end
end
