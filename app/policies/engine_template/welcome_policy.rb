module EngineTemplate
  class WelcomePolicy < Struct.new(:user, :welcome)
    def dashboard?
      user and not user.guest?
    end

    def home?
      true
    end
  end
end