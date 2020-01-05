class Staff < ApplicationRecord
  belongs_to :language

  validates :name, presence: true, uniqueness: true
  validates :language_id, presence: true

  before_validation :set_default_language, if: Proc.new { |staff| staff.language_id.nil? }

  def set_default_language
    assign_attributes(language_id: Language.first.id)
  end
end
