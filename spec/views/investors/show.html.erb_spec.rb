require 'rails_helper'

RSpec.describe "investors/show", type: :view do
  before(:each) do
    @investor = assign(:investor, Investor.create!(
      :full_name => "Full Name",
      :address => "Address",
      :zip_code => "Zip Code",
      :town => "Town",
      :country => "Country",
      :fiscal_number => "Fiscal Number"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Full Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Zip Code/)
    expect(rendered).to match(/Town/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/Fiscal Number/)
  end
end
