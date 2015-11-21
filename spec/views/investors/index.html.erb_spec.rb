require 'rails_helper'

RSpec.describe "investors/index", type: :view do
  before(:each) do
    assign(:investors, [
      Investor.create!(
        :full_name => "Full Name",
        :address => "Address",
        :zip_code => "Zip Code",
        :town => "Town",
        :country => "Country",
        :fiscal_number => "Fiscal Number"
      ),
      Investor.create!(
        :full_name => "Full Name",
        :address => "Address",
        :zip_code => "Zip Code",
        :town => "Town",
        :country => "Country",
        :fiscal_number => "Fiscal Number"
      )
    ])
  end

  it "renders a list of investors" do
    render
    assert_select "tr>td", :text => "Full Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Zip Code".to_s, :count => 2
    assert_select "tr>td", :text => "Town".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Fiscal Number".to_s, :count => 2
  end
end
