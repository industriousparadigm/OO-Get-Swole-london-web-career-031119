class Lifter
  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    Lifter.all << self
  end

  def self.all
    @@all
  end

  def get_memberships
    Membership.all.select { |membership| membership.lifter == self }
  end

  def get_gyms
    get_memberships.map(&:gym)
  end

  def self.sum_of_lift_totals
    Lifter.all.map(&:lift_total).reduce(:+)
  end

  def self.average_lift_total
    (sum_of_lift_totals / Lifter.all.size.to_f).round(2)
  end

  def total_cost
    get_memberships.map(&:cost).reduce(:+)
  end

  def sign_up(gym, cost)
    Membership.new(gym, self, cost)
  end


end

# Lifter

# Get a list of all lifters

# Get a list of all the memberships that a specific lifter has

# Get a list of all the gyms that a specific lifter has memberships to

# Get the average lift total of all lifters

# Get the total cost of a specific lifter's gym memberships

# Given a gym and a membership cost, sign a specific lifter up for a new gym