# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if House.count == 0
  10.times do
    House.create(
      name: "ハウス名",
      address: "住所",
      access: "アクセス",
      description: "説明",
      gender_type: "男女"
    )
  end
end

if room.count == 0
  10.times do
    room.create(
      house_id: "2",
      name: "部屋名",
    )
  end
end