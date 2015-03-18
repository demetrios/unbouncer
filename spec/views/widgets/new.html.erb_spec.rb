require 'rails_helper'

RSpec.describe "widgets/new", type: :view do
  before(:each) do
    assign(:widget, Widget.new(
      :name => "MyString",
      :color => "MyString",
      :landpage => "MyString"
    ))
  end

  it "renders new widget form" do
    render

    assert_select "form[action=?][method=?]", widgets_path, "post" do

      assert_select "input#widget_name[name=?]", "widget[name]"

      assert_select "input#widget_color[name=?]", "widget[color]"

      assert_select "input#widget_landpage[name=?]", "widget[landpage]"
    end
  end
end
