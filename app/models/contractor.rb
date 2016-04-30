class Contractor < ApplicationRecord
  validates :first_name, :last_name, :company, :position, presence: true
  has_attached_file :photo, styles: { medium: "295x295>",
                                        thumb: "100x100#",
                                        small: "50x50#"},
                                        default_url: ":style/profile_default.jpg"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/

  def full_name
    "#{first_name} #{last_name}"
  end
  def to_s
    full_name
  end
end
