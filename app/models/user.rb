class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :acts, dependent: :destroy #dependent: :destroはユーザーを削除した際に，そのユーザーの投稿したメッセージも自動で削除されるようになる。
end
