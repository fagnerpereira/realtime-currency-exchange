require 'rails_helper'

RSpec.describe "quotations/index", type: :view do
  before(:each) do
    assign(:quotations, [
      Quotation.create!(),
      Quotation.create!()
    ])
  end

  it "renders a list of quotations" do
    render
  end
end
