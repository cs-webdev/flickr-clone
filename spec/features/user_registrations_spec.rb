require 'rails_helper'

feature 'User Resgistration' do
    scenario 'from the registration page' do
        User.create username: 'user', email: 'stuff@mail.com', password: '1234', description: 'lorem ipsum  '
        visit root_path(as: user)

        expect(page).to have_text 'Hello World'
    end
end
