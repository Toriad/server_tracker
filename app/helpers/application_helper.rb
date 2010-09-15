module ApplicationHelper
  def button_tag buttonname, text
    raw("<span class=\"ss_sprite #{buttonname}\" />#{text}")
  end
end
