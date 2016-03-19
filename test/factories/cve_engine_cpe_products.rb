FactoryGirl.define do
  factory :cpe_product, class: 'CveEngine::CpeProduct' do
    cpe_name "cpe:/a:openssl:openssl:1.0.2:beta3"
  end
end
