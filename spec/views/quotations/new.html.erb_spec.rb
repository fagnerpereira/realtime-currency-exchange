require 'rails_helper'

RSpec.describe "quotations/new", type: :view do
  before(:each) do
    assign(:quotation, Quotation.new())
  end

  it "renders new quotation form" do
    render

    assert_select "form[action=?][method=?]", quotations_path, "post" do
    end
  end
end
