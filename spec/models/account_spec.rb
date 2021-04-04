require 'rails_helper'

RSpec.describe Account, type: :model do
  context 'validations' do
    it "переконаймося перед зберіганням нового аккаунту покупця що імя не пусте" do
      account = Account.new(name: "").save
      expect(account).to eq(false)
    end
  end
end
