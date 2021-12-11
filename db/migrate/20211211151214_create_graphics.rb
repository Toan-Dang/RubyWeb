class CreateGraphics < ActiveRecord::Migration[6.1]
  def change
    create_table :graphics do |t|
      t.string :NameGPU
      t.string :GPUType
      t.string :GPUMemory
      t.string :Core
    end
  end
end
