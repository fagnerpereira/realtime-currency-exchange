require 'rails_helper'

RSpec.describe "quotations/edit", type: :view do
  before(:each) do
    @quotation = assign(:quotation, Quotation.create!())
  end

  it "renders the edit quotation form" do
    render

    assert_select "form[action=?][method=?]", quotation_path(@quotation), "post" do
    end
  end
end
