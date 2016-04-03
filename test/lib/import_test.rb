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
      value(vuln.cve_id).must_equal 'CVE-2013-7448'
      value(vuln.is_cce_id).must_equal false
      value(vuln.discovered_datetime).must_be :blank?
      value(vuln.disclosure_datetime).must_be :blank?
      value(vuln.exploit_publish_datetime).must_be :blank?
      value(vuln.published_datetime).must_equal '2016-02-23T14:59:00.120-05:00'.to_datetime
      value(vuln.last_modified_datetime).must_equal '2016-03-10T14:05:48.783-05:00'.to_datetime
      value(vuln.security_protection).must_be :blank?
      value(vuln.summary).must_equal 'Directory traversal vulnerability in wiki.c in didiwiki allows remote attackers to read arbitrary files via the page parameter to api/page/get.'

      value(vuln.base_metrics).wont_be :nil?
      value(vuln.base_metrics.score).must_equal 5.0
      value(vuln.base_metrics.exploit_subscore).must_be :blank?
      value(vuln.base_metrics.impact_subscore).must_be :blank?
      value(vuln.base_metrics.access_vector).must_equal 'NETWORK'
      value(vuln.base_metrics.access_complexity).must_equal 'LOW'
      value(vuln.base_metrics.authentication).must_equal 'NONE'
      value(vuln.base_metrics.confidentiality_impact).must_equal 'PARTIAL'
      value(vuln.base_metrics.integrity_impact).must_equal 'NONE'
      value(vuln.base_metrics.availability_impact).must_equal 'NONE'
      value(vuln.base_metrics.generated_on_datetime).must_equal '2016-03-07T13:01:30.807-05:00'.to_datetime
    end
  end
end
