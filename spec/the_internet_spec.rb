RSpec.describe "The internet", type: :feature do

  it "should login to the secure area", type: :feature do
    visit("http://the-internet.herokuapp.com/login")
    fill_in("username", with: "tomsmith")
    fill_in("password", with: "SuperSecretPassword!")
    click_on("Login")
    expect(page).to have_css(".icon-signout")
  end

end