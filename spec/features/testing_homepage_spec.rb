# frozen_string_literal: true

feature 'testing homepage' do
  scenario 'hello world' do
    visit '/'
    expect(page).to have_content 'Hello World!'
  end
end
