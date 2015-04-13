module EngineTemplate
  module ApplicationHelper
    def menu_item_is_active(options={})
      active = nil
      if controller_name == options[:controller]
        if action_name == options[:action]
          active = 'active'
        end
      end
      active
    end
  end
end
