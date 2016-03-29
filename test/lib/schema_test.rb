require 'test_helper'

require 'cve_engine/schema/vulnerability/vulnerability_type'

module CveEngine
  describe 'schema' do

    before do
      root_dir = File.dirname __dir__
      @xml_file = File.join(root_dir, 'data', 'test_import.xml')
    end

    it 'must instantiate a new VulnerabilityType' do
      Nokogiri::XML::Reader(File.open(@xml_file)).each do |node|
        if node.name == 'entry' && node.node_type == Nokogiri::XML::Reader::TYPE_ELEMENT
          vuln = CveEngine::Schema::Vulnerability::VulnerabilityType.from_xml(node.outer_xml)
          puts vuln.to_s
          value(vuln).wont_be :nil?
          value(vuln.cve_id).wont_be :nil?
          value(vuln.last_modified_datetime).wont_be :nil?
          value(vuln.cvss).wont_be :nil?
          value(vuln.summary).wont_be :nil?
        end
      end
    end
  end
end
