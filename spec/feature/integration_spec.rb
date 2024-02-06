# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in "book[title]", with: 'harry potter'
    fill_in "book[author]", with: 'Darwin Mohajeri'
    fill_in "book[price]", with: 10.2
    select "2024", from: "book[publishedDate(1i)]"  # Year
    select "January", from: "book[publishedDate(2i)]"  # Month
    select "1", from: "book[publishedDate(3i)]"  # Day
    select "12", from: "book[publishedDate(4i)]"  # Hour
    select "00", from: "book[publishedDate(5i)]"  # Minute
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end

RSpec.describe 'Creating a book author ', type: :feature do
scenario 'valid inputs' do
    visit new_book_path
    fill_in "book[title]", with: 'harry potter'
    fill_in "book[author]", with: 'Darwin Mohajeri'
    fill_in "book[price]", with: 10.2
    select "2024", from: "book[publishedDate(1i)]"  # Year
    select "January", from: "book[publishedDate(2i)]"  # Month
    select "1", from: "book[publishedDate(3i)]"  # Day
    select "12", from: "book[publishedDate(4i)]"  # Hour
    select "00", from: "book[publishedDate(5i)]"  # Minute
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('Darwin Mohajeri')
    end
end


RSpec.describe 'Creating a book price ', type: :feature do
    scenario 'valid inputs' do
        visit new_book_path
        fill_in "book[title]", with: 'harry potter'
        fill_in "book[author]", with: 'Darwin Mohajeri'
        fill_in "book[price]", with: 10.2
        select "2024", from: "book[publishedDate(1i)]"  # Year
        select "January", from: "book[publishedDate(2i)]"  # Month
        select "1", from: "book[publishedDate(3i)]"  # Day
        select "12", from: "book[publishedDate(4i)]"  # Hour
        select "00", from: "book[publishedDate(5i)]"  # Minute
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content(10.2)
    end

end

RSpec.describe 'Creating a book date', type: :feature do
    scenario 'valid inputs' do
        visit new_book_path
        fill_in "book[title]", with: 'harry potter'
        fill_in "book[author]", with: 'Darwin Mohajeri'
        fill_in "book[price]", with: 10.2
        select "2024", from: "book[publishedDate(1i)]"  # Year
        select "January", from: "book[publishedDate(2i)]"  # Month
        select "1", from: "book[publishedDate(3i)]"  # Day
        select "12", from: "book[publishedDate(4i)]"  # Hour
        select "00", from: "book[publishedDate(5i)]"  # Minute
        click_on 'Create Book'
        visit books_path
        expect(page).to have_content("2024-01-01 12:00:00 UTC")
    end

end


