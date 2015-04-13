module EngineTemplate
  class ApplicationController < ActionController::Base
    layout 'application'
    before_action :set_version

    private

    def set_version
      @version = "#{EngineTemplate::VERSION}"
    end
  end
end
