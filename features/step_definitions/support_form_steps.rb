

Given(/^I am on the Support Form$/) do
   visit('/support/contact')
   expect(page).to have_content 'Please select the option that most accurately describes your case so that we can better serve you.'
end

When(/^I submit the completed Support Form$/) do
	  select('Signing Up', :from => '#category')
	  select('I Received an Alert', :from => '#subcategory')
      fill_in '#firstName', :with => 'Tam'
      fill_in '#lastName', :with => 'is awesome'
      fill_in '#email', :with => 'sdfas@acorns.com'
      fill_in 'Phone__c', :with => '6265431234'
      fill_in '#description', :with => 'testing'
      click_button('.send-button')      
end

Then(/^I see the success message$/) do
	 expect(page).to have_content 'Success!'  
end

