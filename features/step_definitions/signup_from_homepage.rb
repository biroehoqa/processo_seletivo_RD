# encoding: utf-8
#!/usr/bin/env ruby

Given(/^I click Cadastre\-se button$/) do
  visit "https://www.rdstation.com.br"
  click_button 'Cadastre-se'
end

When(/^I fill out registration fields$/) do
  register = RegisterCustomer.new
  @company_email = Faker::Internet.email
  @pass = Faker::Base.numerify('inicial####').to_s
  register.company_mail.set(@company_email)
  p @company_email
  register.company_password.set(@pass)
  p @pass
  register.confirm_password.set(@pass)
  register.company_name.set(Faker::Company.name)
  register.company_site.set(Faker::Internet.url('exemple.com.br', '/'))
  register.entity.select("Pessoa Jurídica")
  register.op_simp_nac.select("Sim")
  register.cnpj.set(Faker::CNPJ.number)
  register.social_name.set(Faker::Company.name)
  register.country.select("Brasil")
  register.state.select("São Paulo")
  register.city.select("São Paulo")
  execute_script "jQuery('#info_zipcode').val('"+Faker::Base.numerify('05433-001').to_s+"');"
  register.address.set(Faker::Address.street_name)
  click_button 'Criar minha conta'
  expect(page).to have_content("Bem-vindo ao RD Station")
  click_link 'Descubra como'
  click_link 'Avançar'
  click_link 'Avançar'
  click_link 'Avançar'
  click_link 'Avançar'
  click_link 'Avançar'
  click_link 'Pular por agora'
  click_link 'Pular por agora'
  click_link 'Explore o RD Station'
  find(:css, '.close').click
end

Then(/^Sign up with sucess$/) do
  expect(page).to have_content("Bem-vindo ao RD Station")
end
