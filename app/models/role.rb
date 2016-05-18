class Role < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  def self.symbolized_roles
    self.all.map do |role|
      (role.name.downcase.parameterize.sub('-', '_')+ '?').to_sym
    end
  end

  def project_engineer?
    (self.name.downcase.parameterize.sub('-', '_')+ '?').to_sym == :project_engineer?
  end
end
