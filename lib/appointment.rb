class Appointment

  attr_accessor :date, :patient, :doctor

  def initialize(date, patient)
    @date = date
    @patient = patient
    @doctor = doctor
    @@ll << self
  end

  def patient
    @patient
  end

  def doctor
  end
