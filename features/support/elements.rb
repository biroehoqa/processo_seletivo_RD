# encoding: utf-8
#!/usr/bin/env ruby

class Home < SitePrism::Page
  set_url "https://www.rdstation.com.br/cadastro"
end

class RegisterCustomer <SitePrism::Page
  element :company_mail, "input[id='user_email']"
  element :company_password, "input[id='user_password']"
  element :confirm_password, "input[id='user_password_confirmation']"
  element :company_name, "input[id='user_account_name']"
  element :company_site, "input[id='user_account_site']"
  element :entity, "select[id='info_contractor_type']"
  element :op_simp_nac, "select[id='info_contractor_simples_nacional']"
  element :cnpj, "input[id='info_identifier_cnpj']"
  element :social_name, "input[id='info_official_name']"
  element :country, "select[id='user_account_subscription_attributes_info_country']"
  element :state, "select[id='user_account_subscription_attributes_info_state']"
  element :city, "select[id='user_account_subscription_attributes_info_city']"
  element :cep, "input[id='info_zipcode']"
  element :address, "input[id='user_account_subscription_attributes_info_address']"
end

class AddLeads <SitePrism::Page
  elements :footer_links, "#onboarding-invite-users-cta"
  element :event_name, "input[id='source']"
  element :lead_name, "input[id='lead_name']"
  element :lead_email, "input[id='lead_email']"
  element :lead_jtitle, "input[id='lead_job_title']"
  element :lead_phone, "input[id='lead_lead_info_attributes_personal_phone']"
  element :lead_celphone, "input[id='lead_lead_info_attributes_mobile_phone']"
  element :lead_company_attr_name, "input[id='lead_company_attributes_name']"
  element :lead_company_setor, "select[id='lead_company_attributes_company_sector_id']"
  element :lead_company_size, "select[id='lead_company_attributes_size']"
end
