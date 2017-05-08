RSpec.describe "The internet", type: :feature do

  it "should login to the secure area", type: :feature, sarasa: true do
    visit("http://the-internet.herokuapp.com/login")
    fill_in("username", with: "tomsmith")
    fill_in("password", with: "SuperSecretPassword!")
    click_on("Login")
    expect(page).to have_css(".icon-signout")
  end

  it "should detect dynamic content" do
    visit("http://the-internet.herokuapp.com/dynamic_loading/2")
    find("#start > button").click
    expect(page).to have_css("#finish")
  end

end