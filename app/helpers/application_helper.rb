module ApplicationHelper
	def login_helper
		if current_user.is_a?(User)
  			link_to "Log Out", destroy_user_session_path, method: :delete
  	else
   			(link_to "Register", new_user_registration_path) +
   			"<br>".html_safe +
   			(link_to "Log In", new_user_session_path)
    end
	end

	def source_helper(layout_name)
    if session[:source]
      greeting = "Thank you for visiting me from #{session[:source]}! You are on the #{layout_name} layout."
      content_tag(:p, greeting, class: "source-greeting")
    end
  end

  def copyright_generator
    @copyright = KJsViewTool::Renderer.copyright 'K.J. Roberts', 'All rights reserved'
  end

end
