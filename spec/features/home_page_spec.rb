# frozen_string_literal: true

RSpec.describe 'Home page', type: :feature, rails: true do
  it 'visit home' do
    visit '/'
    expect(page).to have_content 'Home'
  end
end
