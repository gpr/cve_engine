
require 'cve_engine/import_xml'

namespace :cve_engine do

  desc 'Import NVD CVE XML file'
  task :import_xml, [:xml_file] do
    CveEngine.import_xml(args[:xml_file])
  end

end