class CreateScoringSystems < ActiveRecord::Migration[5.0]
  def change
    create_table :scoring_systems do |t|
      t.string :name
      t.float :ptsPassing
      t.float :ptsRushing
      t.float :ptsReceiving
      t.float :ptsTD
      t.float :ptsTDPass
      t.float :ptslnterceptFumble
      t.float :ptsExtraPoint
      t.float :ptsTurnover
      t.float :ptsSack
      t.float :ptsSafety
      t.float :ptsBlockedKick

      t.timestamps
    end
  end
end
