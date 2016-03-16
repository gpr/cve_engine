require 'test_helper'

require 'cve_engine/import_xml'

module CveEngine
  describe 'import' do

    before do
      root_dir = File.dirname __dir__
      @xml_file = File.join(root_dir, 'data', 'test_import.xml')
    end

    it 'must create a new CVE' do
      CveEngine.import_xml(@xml_file)

      vuln = CveEngine::Vulnerability.find_by cve_id: 'CVE-2013-7448'
      value(vuln).wont_be :nil?
    end
  end
end
