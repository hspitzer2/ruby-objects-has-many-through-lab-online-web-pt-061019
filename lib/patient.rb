class Patient
  attr_accessor :name

  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    appt = Appointment.new(doctor, self, date)
    appt
  end

  def appointment
    Patien.all.select |patient|
    appointments.patients
  end

  def doctors
    patients.map do |doctor|
      patient.doctor

  end
end
