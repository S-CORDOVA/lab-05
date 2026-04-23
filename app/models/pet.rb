class Pet < ApplicationRecord
  belongs_to :owner
  has_many :appointments

  before_validation :normalize_species
  before_save :capitalize_name

  validates :name, :species, :date_of_birth, :weight, :owner, presence: true
  validates :species, inclusion: { in: %w[dog cat rabbit bird reptile other] }
  validates :weight, numericality: { greater_than: 0 }
  validate :date_of_birth_cannot_be_in_the_future

  scope :by_species, ->(species) { where(species: species) }

  def normalize_species
    self.species = species.strip.downcase if species
  end

  def capitalize_name
    self.name = name.strip.capitalize if name
  end

  def date_of_birth_cannot_be_in_the_future
    if date_of_birth.present? && date_of_birth > Date.today
      errors.add(:date_of_birth, "ERROR: FECHA EN EL FUTURO")
    end
  end
end