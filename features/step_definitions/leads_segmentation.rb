# encoding: utf-8
#!/usr/bin/env ruby

When(/^I choose Segmentação de Leads$/) do
  click_link 'Segmentação de Leads'
end

And(/^I click Criar Segmentacao$/) do
  click_link 'Criar Segmentação'
end

Then(/^fill out Segmentation Leads fields and save segmentation$/) do
  segmentation = CreateSegmentation.new
  segmentation.segmentation_name.set(Faker::Name.name)
  all(:css, 'select.form-control.input-sm.js-input')[0].all(:css, 'option')[1].select_option
  click_button 'Salvar'
  sleep 10
end
