require_dependency 'engine_template/application_controller'

module EngineTemplate
  # Default controller
  #
  # Has no related model
  class WelcomeController < ApplicationController
    # GET /home
    # @return the home page
    def home
    end

    # GET /dashboard
    # @return the dashboard page
    def dashboard
    end
  end
end
