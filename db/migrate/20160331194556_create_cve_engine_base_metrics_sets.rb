class CreateCveEngineBaseMetricsSets < ActiveRecord::Migration
  def change
    create_table :cve_engine_base_metrics_sets do |t|
      t.references :vulnerability, index: {name: :idx_ce_bms_vulnerability},
                   foreign_key: {name: :fk_ce_bms_vulnerabilities}
      t.decimal :score, null: false
      t.decimal :exploit_subscore
      t.decimal :impact_subscore
      t.string :access_vector
      t.string :access_complexity
      t.string :authentication
      t.string :confidentiality_impact
      t.string :integrity_impact
      t.string :availability_impact
      t.datetime :generated_on_datetime

      t.timestamps null: false
    end
  end
end
