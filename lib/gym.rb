class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def get_memberships
    Membership.all.select { |membership| membership.gym == self }
  end

  def get_lifters
    get_memberships.map(&:lifter)
  end

  def get_lifter_names
    get_lifters.map(&:name)
  end

  def get_sum_of_lift_totals
    get_lifters.map(&:lift_total).reduce(:+)
  end

end

# Gym

# Get a list of all gyms

# Get a list of all memberships at a specific gym

# Get a list of all the lifters that have a membership to a specific gym

# Get a list of the names of all lifters that have a membership to that gym

# Get the combined lift total of every lifter has a membership to that gym