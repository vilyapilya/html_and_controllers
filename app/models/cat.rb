class Cat < ApplicationRecord
  CAT_COLOR = ["Black", "White", "Red", "Turquoise"]

  validates :birth_date, :color, :name, :sex, :description, presence: true
  validates :color, inclusion: CAT_COLOR
  validates :sex, inclusion: ["M", "F"]

  def age
    cur_year = DateTime.now.year
    birth_year = self.birth_date.year

    age = cur_year - birth_year
  end

  def all_color
    CAT_COLOR
  end
end
