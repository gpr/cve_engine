require_dependency 'cve_engine/application_controller'

module CveEngine
  # Default controller
  #
  # Has no related model
  class WelcomeController < ApplicationController
    # GET /home
    # @return the home page
    def home
      authorize :'CveEngine::Welcome', :home?
    end

    # GET /dashboard
    # @return the dashboard page
    def dashboard
      authorize :'CveEngine::Welcome', :dashboard?
    end
  end
end
