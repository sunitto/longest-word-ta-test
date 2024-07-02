class Game < ApplicationRecord
  belongs_to :user
  has_many :parties

  def ten_random_letters
    vowels = %w[a e i o u]
    consonants = %w[b c d f g h j k l m n p q r s t v w x y z]
    ten_letters = []
    5.times do
      ten_letters << vowels.sample
    end
    5.times do
      ten_letters << consonants.sample
    end
    ten_letters.shuffle.join
  end
end
