class Appointment

  attr_accessor :date, :patient, :doctor

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@ll << self
  end

  def patient
    self.patient
  end

  def doctor
    self.doctor
  end
end
