require 'rails_helper'

RSpec.describe "creative_developments/index", type: :view do
  before(:each) do
    assign(:creative_developments, [
      CreativeDevelopment.create!(),
      CreativeDevelopment.create!()
    ])
  end

  it "renders a list of creative_developments" do
    render
  end
end
