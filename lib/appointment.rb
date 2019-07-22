class Appointment

  attr_accessor :date, :patient, :doctors

  @@all =[]

  def initialize(date, patient, doctors)
    @date = date
    @patient = patient
    @doctors = doctors
    @@all << self
  end

  def self.all
    @@all
  end



end
