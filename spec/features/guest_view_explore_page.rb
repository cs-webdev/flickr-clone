require 'rails_helper'

feature 'Guest view the Explore page' do
	scenario 'from the homepage' do
		Post.create title: 'Hello World', body: 'stuff'
		visit root_path

		expect(page).to have_text 'Hello World'
	end
end