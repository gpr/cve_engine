class WelcomeController < ApplicationController
  def home
  end

  # render flash
  def get_flash
    @flash = flash
  end
end
