class Team
  attr_accessor :name, :motto
  ALL = []

  def initialize(name:, motto:)
    @name = name
    @motto = motto
    ALL << self
  end

  def self.all
    ALL
  end

end
