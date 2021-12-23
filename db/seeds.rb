# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.first
Act.create!(content: "行動履歴１", user_id: user.id)
Act.create!(content: "行動履歴２", user_id: user.id)
Act.create!(content: "行動履歴３", user_id: user.id)
puts "初期データの投入に成功しました！"