class Party < ApplicationRecord
  belongs_to :game
  has_many :solutions
   #validates format to match the :ten_letters_word using Regex.escape
  validates :word, presence: true, length: { minimum: 1, maximum: 10 }, format: { with: /\A[#{Regexp.escape(ten_letters_list)}]+\z/ }

  def ten_letters_list
    vowels = %w[a e i o u]
    consonants = %w[b c d f g h j k l m n p q r s t v w x y z]
    ten_letters = []
    5.times do
      ten_letters << vowels.sample
    end
    5.times do
      ten_letters << consonants.sample
    end
    ten_letters.shuffle.join.to_s
  end
end
