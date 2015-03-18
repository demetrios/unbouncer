require 'rails_helper'

RSpec.describe "widgets/index", type: :view do
  before(:each) do
    assign(:widgets, [
      Widget.create!(
        :name => "Name",
        :color => "Color",
        :landpage => "Landpage"
      ),
      Widget.create!(
        :name => "Name",
        :color => "Color",
        :landpage => "Landpage"
      )
    ])
  end

  it "renders a list of widgets" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
    assert_select "tr>td", :text => "Landpage".to_s, :count => 2
  end
end
