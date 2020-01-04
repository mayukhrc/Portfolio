module ApplicationHelper
	def login_helper
		if current_user.is_a?(User)#.first_name != "Guest" %>
      (link_to "Logout", destroy_user_session_path, method: :delete) +
      "<br>".html_safe +
      (link_to "Edit Account", edit_user_registration_path)
    else
      (link_to "Register", new_user_registration_path) +
      "<br>".html_safe +
      (link_to "Login", new_user_session_path)
    end
	end
end