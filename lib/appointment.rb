class Appointment

  attr_accessor :date, :patient

  def initialize(date, patient)
    @date = date
    @patient = patient
    @@ll << self
  end

  def patient
    @patient
  end

  def doctor
  end
