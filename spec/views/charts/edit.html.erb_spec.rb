require 'rails_helper'

RSpec.describe "charts/edit", type: :view do
  before(:each) do
    @chart = assign(:chart, Chart.create!(
      price: "MyString"
    ))
  end

  it "renders the edit chart form" do
    render

    assert_select "form[action=?][method=?]", chart_path(@chart), "post" do

      assert_select "input[name=?]", "chart[price]"
    end
  end
end
