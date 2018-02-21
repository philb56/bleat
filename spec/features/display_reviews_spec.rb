require 'rails_helper'

RSpec.describe "Display Reviews", :type => :feature do
  feature 'Show reviews for one restaurant ' do
    scenario 'when on restaurant index page' do
      create_restaurant('Testaurant', 'Delicious')
      create_review(2, 'really good!!')
      visit '/restaurants'
      within('td#reviews') {expect(page).to have_content('2')}
      within('td#reviews') {expect(page).to have_content('really good!!')}
    end
  end
end