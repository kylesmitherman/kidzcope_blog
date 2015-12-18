Given(/^that I am logged in$/) do
  visit new_user_session_path
  expect(page).to have_css(:h2, "Log In")
  within "new_user" do
    fill_in "Email", with: "user@test.com"
    fill_in "Password", with: "password"
    click_button "Log in"
  end
  expect(page).to have_text "Signed in successfully"
end

Given(/^that a User exists with the email of "(.*?)" and the password of "(.*?)"$/) do |email, password|
  User.create(email: email, password: password, password_confirmation: password)
  expect(User.count).to eq(1)
end
