# frozen_string_literal: true

require 'rails_helper'
include WelcomeHelper

RSpec.feature 'Redirected', type: :feature do
  scenario 'to posts route after user registered' do
    sign_up
    expect(page).to have_content('Sign out')
  end
end
