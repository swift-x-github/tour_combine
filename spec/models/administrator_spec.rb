require 'rails_helper'

RSpec.describe Administrator, type: :model do
  context 'validations' do
    it "переконаймося перед зберіганням нвого аккаунту адміністратора  що імя не пусте" do
      administrator = Administrator.new(name: "").save
      expect(administrator).to eq(false)
    end
  end
end
