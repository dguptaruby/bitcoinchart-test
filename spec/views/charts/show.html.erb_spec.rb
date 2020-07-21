require 'rails_helper'

RSpec.describe "charts/show", type: :view do
  before(:each) do
    @chart = assign(:chart, Chart.create!(
      price: "Price"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Price/)
  end
end
