module EngineTemplate
  # Engine Application Controler
  class ApplicationController < ::ApplicationController

    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

    private

    def user_not_authorized
      flash[:alert] = "You are not authorized to perform this action."
      redirect_to main_app.root_path
    end

  end
end
