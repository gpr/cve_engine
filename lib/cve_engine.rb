require 'cve_engine/engine'

module CveEngine
  @@configured = false
  @@user_class = 'User'

  def self.configured? #:nodoc:
    @@configured
  end

  def self.user_class
    @@user_class.constantize
  end

  def self.config
    @@configured = true
    yield self
  end
end

