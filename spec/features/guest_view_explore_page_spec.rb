require 'rails_helper'

feature 'Guest view the Explore page' do
	scenario 'from the homepage' do
		Image.create title: 'Hello World', description: 'stuff', author: 'manel'
		visit root_path

		expect(page).to have_text 'Hello World'
	end
end