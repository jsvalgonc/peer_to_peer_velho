require 'rails_helper'

RSpec.describe "investors/edit", type: :view do
  before(:each) do
    @investor = assign(:investor, Investor.create!(
      :full_name => "MyString",
      :address => "MyString",
      :zip_code => "MyString",
      :town => "MyString",
      :country => "MyString",
      :fiscal_number => "MyString"
    ))
  end

  it "renders the edit investor form" do
    render

    assert_select "form[action=?][method=?]", investor_path(@investor), "post" do

      assert_select "input#investor_full_name[name=?]", "investor[full_name]"

      assert_select "input#investor_address[name=?]", "investor[address]"

      assert_select "input#investor_zip_code[name=?]", "investor[zip_code]"

      assert_select "input#investor_town[name=?]", "investor[town]"

      assert_select "input#investor_country[name=?]", "investor[country]"

      assert_select "input#investor_fiscal_number[name=?]", "investor[fiscal_number]"
    end
  end
end
