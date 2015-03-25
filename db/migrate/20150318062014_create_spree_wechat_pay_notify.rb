class CreateSpreeWechatPayNotify < ActiveRecord::Migration
  def change
    create_table :spree_wechat_pay_notifies do |t|
      t.string :transaction_id
      t.string :out_trade_no
      t.string :open_id
      t.string :trade_mode
      t.string :trade_state
      t.string :total_fee
      t.text   :source_data
      t.datetime :created_at
    end
  end
end
