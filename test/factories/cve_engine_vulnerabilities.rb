FactoryGirl.define do
  factory :vulnerability, class: 'CveEngine::Vulnerability' do
    cve_id "CVE-2015-8286"
    published_datetime "2016-02-18T00:59:00.200-05:00"
    last_modified_datetime "2016-03-07T07:35:39.743-05:00"
    security_protection "ALLOWS_ADMIN_ACCESS"
    summary "Zhuhai RaySharp firmware has a hardcoded root password, which makes it easier for remote attackers to obtain access via a session on TCP port 23 or 9000."
  end
end
