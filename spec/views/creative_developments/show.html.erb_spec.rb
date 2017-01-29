require 'rails_helper'

RSpec.describe "creative_developments/show", type: :view do
  before(:each) do
    @creative_development = assign(:creative_development, CreativeDevelopment.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
