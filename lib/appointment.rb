class Appointment

  attr_accessor :date, :patient

  def initialize(name)
    @@ll << self
