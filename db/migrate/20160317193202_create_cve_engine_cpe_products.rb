class CreateCveEngineCpeProducts < ActiveRecord::Migration
  def change
    create_table :cve_engine_cpe_products do |t|
      t.string :cpe_name, index: {name: :idx_ce_cp_cpe_name, unique: true}, null: false
      t.string :part, index: {name: :idx_ce_cp_part}
      t.string :vendor, index: {name: :idx_ce_cp_vendor}
      t.string :product, index: {name: :idx_ce_cp_product}
      t.string :version, index: {name: :idx_ce_cp_version}
      t.string :update_name, index: {name: :idx_ce_cp_update}
      t.string :edition, index: {name: :idx_ce_cp_edition}
      t.string :language, index: {name: :idx_ce_cp_language}
      t.string :sw_edition, index: {name: :idx_ce_cp_sw_edition}
      t.string :target_sw, index: {name: :idx_ce_cp_target_sw}
      t.string :target_hw, index: {name: :idx_ce_cp_target_hw}
      t.string :other, index: {name: :idx_ce_cp_other}

      t.timestamps null: false
    end

    add_index :cve_engine_cpe_products, [:vendor, :product], name: :idx_ce_cp_vendor_product
    add_index :cve_engine_cpe_products, [:product, :version], name: :idx_ce_cp_product_version
    add_index :cve_engine_cpe_products, [:vendor, :product, :version], name: :idx_ce_cp_vendor_product_version

  end
end
