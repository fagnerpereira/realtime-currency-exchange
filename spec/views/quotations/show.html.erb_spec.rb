require 'rails_helper'

RSpec.describe "quotations/show", type: :view do
  before(:each) do
    @quotation = assign(:quotation, Quotation.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
