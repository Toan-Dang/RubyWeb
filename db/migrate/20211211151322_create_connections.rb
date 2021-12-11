class CreateConnections < ActiveRecord::Migration[6.1]
  def change
    create_table :connections do |t|
        t.string :Type
        t.string :WirelessCard
        t.string :Port
        t.string :Special
        t.string :SIM
        t.string :Wifi
        t.string :GPS
        t.string :Blutooth
        t.string :Other
        t.string :PhoneJack
    end
  end
end
