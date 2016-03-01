# encoding: utf-8
#!/usr/bin/env ruby


Given(/^I click Relacionar menu$/) do
  all(:css, '.dropdown-toggle')[2].click
end

When(/^I choose Base de Leads$/) do
  click_link 'Base de Leads'
end

When(/^I click inserir Leads manualmente$/) do
  click_link 'inserir Leads manualmente'
end

When(/^fill out Leads fields$/) do
  leads = AddLeads.new
  leads.event_name.set(Faker::Name.name)
  leads.lead_name.set(Faker::Name.name)
  leads.lead_email.set(Faker::Internet.email)
  leads.lead_jtitle.set(Faker::Name.name)
  leads.lead_phone.set(Faker::Base.numerify('112319####').to_s)
  leads.lead_celphone.set(Faker::Base.numerify('1199266####').to_s)
  leads.lead_company_attr_name.set(Faker::Name.name)
  leads.lead_company_setor.select("Tecnologia")
  leads.lead_company_size.select("51-200")
  click_button 'Salvar'
end

Then(/^Leads add with sucess$/) do
  expect(page).to have_content("Marcar uma venda")
end
