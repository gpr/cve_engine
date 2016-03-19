class CreateCveEngineCpeProductsVulnerabilities < ActiveRecord::Migration
  def change
    create_table :cve_engine_cpe_products_vulnerabilities do |t|
      t.references :cpe_product, index: {name: :idx_ce_cp_v_cpe_product}
      t.references :vulnerability, index: {name: :idx_ce_cp_v_vulnerability}
    end
  end
end
