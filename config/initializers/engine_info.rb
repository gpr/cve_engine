module EngineInfo
  mattr_reader :version, :git_version, :copyright_owner

  @@version = EngineTemplate::VERSION
  @@git_version = `git describe --always --dirty 2> /dev/null`
  @@copyright_owner = ''

  def self.get_version
    git_version ? git_version : version
  end
end