# encoding: utf-8
#!/usr/bin/env ruby

Given(/^I click add users$/) do
  click_link 'Adicione usuários'
end

When(/^I click Convidar Usuario$/) do
  click_button 'Convidar usuário'
end

When(/^I fill out the add fields for user$/) do
  fill_in 'email', with: Faker::Internet.email
end

When(/^I send invitation$/) do
  click_button 'Enviar convite'
end

Then(/^the user successfully invited$/) do
  expect(page).to have_content 'convite enviado'
end
