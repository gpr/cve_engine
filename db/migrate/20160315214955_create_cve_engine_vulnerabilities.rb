class CreateCveEngineVulnerabilities < ActiveRecord::Migration
  def change
    create_table :cve_engine_vulnerabilities do |t|
      t.string :cve_id, index: {name: :idx_ce_v_str_id, unique: true}
      t.boolean :is_cce_id, default: false
      t.datetime :discovered_datetime
      t.datetime :disclosure_datetime
      t.datetime :exploit_publish_datetime
      t.datetime :published_datetime
      t.datetime :last_modified_datetime
      t.string :security_protection
      t.string :summary

      t.timestamps null: false
    end
  end
end
