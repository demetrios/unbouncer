require 'rails_helper'

RSpec.describe "widgets/new", type: :view do
  before(:each) do
    assign(:widget, Widget.new(
      :name => "MyString",
      :color => "MyString",
      :landing_pagename => "MyString"
    ))
  end

  it "renders new widget form" do
    render

    assert_select "form[action=?][method=?]", widgets_path, "post" do

      assert_select "input#widget_name[name=?]", "widget[name]"

      assert_select "input#widget_color[name=?]", "widget[color]"

      assert_select "input#widget_landing_pagename[name=?]", "widget[landing_pagename]"
    end
  end
end
