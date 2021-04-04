require 'rails_helper'

RSpec.describe "home/index.html.erb", type: :system do
  it 'перевірка відображення статичного тексту' do
    visit home_index_path
    expect(page).to have_content('main page')
  end
 
end
