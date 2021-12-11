class CreateCameras < ActiveRecord::Migration[6.1]
  def change
    create_table :cameras do |t|
      t.string :Webcam
      t.string :FCamResolution
      t.string :BCamResolution
      t.string :Flash
      t.string :Video
      t.string :Special
 
    end
  end
end
