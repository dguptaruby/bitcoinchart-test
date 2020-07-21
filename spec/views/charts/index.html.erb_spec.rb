require 'rails_helper'

RSpec.describe "charts/index", type: :view do
  before(:each) do
    assign(:charts, [
      Chart.create!(
        price: "Price"
      ),
      Chart.create!(
        price: "Price"
      )
    ])
  end

  it "renders a list of charts" do
    render
    assert_select "tr>td", text: "Price".to_s, count: 2
  end
end
