require 'rails_helper'

RSpec.describe "creative_developments/edit", type: :view do
  before(:each) do
    @creative_development = assign(:creative_development, CreativeDevelopment.create!())
  end

  it "renders the edit creative_development form" do
    render

    assert_select "form[action=?][method=?]", creative_development_path(@creative_development), "post" do
    end
  end
end
