module CveEngine
  module Schema

    require 'cve_engine/schema/vulnerability/vulnerability_type'
    class Nvd
      include ROXML
      xml_name :nvd

      xml_accessor :entries, as: [Vulnerability::VulnerabilityType], from: 'entry'
    end
  end
end