# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  if House.count == 0
    10.times do |i|
      house = House.create(
        name: "ハウス名#{i}",
        address: "住所",
        access: "アクセス",
        description: "説明",
        gender_type: i % 3 + 1
      )
      10.times do |i|
        Room.create(
          house_id: house.id,
          name: "部屋名",
          rent: (i + 1) * 10000,
          service_fee: 3000,
          other_fee: 0,
          tatami_size: i + 6,
          condition: "清掃業者(週1回程度)",
        )
      end
    end
  end