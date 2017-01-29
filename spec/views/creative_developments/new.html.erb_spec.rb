require 'rails_helper'

RSpec.describe "creative_developments/new", type: :view do
  before(:each) do
    assign(:creative_development, CreativeDevelopment.new())
  end

  it "renders new creative_development form" do
    render

    assert_select "form[action=?][method=?]", creative_developments_path, "post" do
    end
  end
end
