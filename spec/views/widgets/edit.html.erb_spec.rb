require 'rails_helper'

RSpec.describe "widgets/edit", type: :view do
  before(:each) do
    @widget = assign(:widget, Widget.create!(
      :name => "MyString",
      :color => "MyString",
      :campaign_id => "MyString"
    ))
  end

  it "renders the edit widget form" do
    render

    assert_select "form[action=?][method=?]", widget_path(@widget), "post" do

      assert_select "input#widget_name[name=?]", "widget[name]"

      assert_select "input#widget_color[name=?]", "widget[color]"

      assert_select "input#widget_campaign_id[name=?]", "widget[campaign_id]"
    end
  end
end
