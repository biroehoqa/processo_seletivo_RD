# encoding: utf-8
#!/usr/bin/env ruby
Given(/^I click logout$/) do
  #Invite a new user
  click_link 'Adicione usuários'
  click_button 'Convidar usuário'
  fill_in 'email', with: Faker::Internet.email
  click_button 'Enviar convite'
  #Logout
  all(:css, '.caret')[4].click
end

When(/^I create a new customer$/) do
  click_link 'Sair'
end

Then(/^try invite the new user$/) do
  #Create a new customer
  visit 'https://www.rdstation.com.br/cadastro'
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
  sleep 05
  #expect(page).to have_content("Bem-vindo ao RD Station")
  click_link 'Descubra como'
  sleep 01
  click_link 'Avançar'
  sleep 01
  click_link 'Avançar'
  sleep 01
  click_link 'Avançar'
  sleep 01
  click_link 'Avançar'
  sleep 01
  click_link 'Avançar'
  sleep 01
  click_link 'Pular por agora'
  sleep 01
  click_link 'Pular por agora'
  sleep 01
  click_link 'Explore o RD Station'
  sleep 01
  #Invite a new user
  click_link 'Adicione usuários'
  click_button 'Convidar usuário'
  fill_in 'email', with: Faker::Internet.email
  click_button 'Enviar convite'
end
