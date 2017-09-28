# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user_emails_seed = [
  "huy.nguyen@eastagile.com",
  "thu.nguyen@eastagile.com",
  "quang.huynh@eastagile.com",
  "nhan.ho@eastagile.com",
  "kien.le@eastagile.com",
  "trinh.le@eastagile.com",
  "thai.xuan@eastagile.com",
  "anh.trinh@eastagile.com",
  "phong.nguyen@eastagile.com",
  "duc.pham@eastagile.com",
  "hieu.hoang@eastagile.com",
  "thao.tran@eastagile.com",
  "phuc.nguyen@eastagile.com",
  "ngoc.bach@eastagile.com",
  "huy.ha@eastagile.com",
  "thao.hoang@eastagile.com",
  "chau.quanh@eastagile.com",
  "loc.le@eastagile.com",
  "tay.nguyen@eastagile.com"
]

DEFAULT_PASSWORD = "R,h+1,KEA"

user_emails_seed.each do |user_email|
  User.create(email: user_email, password: DEFAULT_PASSWORD)
end
