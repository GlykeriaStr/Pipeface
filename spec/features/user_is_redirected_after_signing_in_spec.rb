# frozen_string_literal: true

require 'rails_helper'
include WelcomeHelper

RSpec.feature 'Navigated to posts after signing in' do
  scenario 'A signed in user can see posts' do
    sign_up
    click_link('Sign out')
    click_link 'Sign in'
    fill_in :email, with: 'example@example.com'
    fill_in :password, with: 'password'
    click_button 'Log in'
    expect(page).to have_content 'New Post'
  end
end
