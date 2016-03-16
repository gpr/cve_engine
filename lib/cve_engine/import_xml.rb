module CveEngine
  require 'cve_engine/schema/vulnerability/vulnerability_type'

  def self.import_xml(xml_filename)
    Nokogiri::XML::Reader(File.open(xml_filename)).each do |node|
      if node.name == 'entry' && node.node_type == Nokogiri::XML::Reader::TYPE_ELEMENT
        vuln = Vulnerability.find_or_create_from_xml(node.outer_xml)
        puts "#{vuln.cve_id} has been processed"
      end
    end
  end
end