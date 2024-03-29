# encoding: utf-8
#!/usr/bin/env ruby

Before '@general' do
  home = Home.new
  home.load
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
  find(:css, '.close').click
end

Before '@segmentation_leads' do
  #Cadastro de Cliente
  home = Home.new
  home.load
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
  find(:css, '.close').click
  ## Cria Leads
  all(:css, '.dropdown-toggle')[2].click
  click_link 'Base de Leads'
  click_link 'inserir Leads manualmente'
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

After do
	Capybara.reset_sessions!
end
