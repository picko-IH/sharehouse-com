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
      name: "クランテラス 品川",
      address: "品川区大井4丁目",
      access: "JR京浜東北線 大井町駅 徒歩9分",
      description: "入居者様にとっての暮らしやすさ、居心地の良さとは何か、を追求しクランテラス品川を設計いたしました。お部屋の天井高は3ｍを確保し、どのお部屋も明るく新生活をスタートするにはピッタリのお家となっております。当社ならではの空間づくりをぜひご覧下さい！",
      gender_type: "male"
    )
  end
end