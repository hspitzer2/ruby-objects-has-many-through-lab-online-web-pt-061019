class Patient
  attr_accessor :name, :appointment, :doctor

  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    appt = Appointment.new(doctor, self, date)
    appt
  end

  def appointments
    Appointment.all.select |appointments|
    appointments.patient == self
  end

  def doctors
    Appointment.all.map do |doctor|
      patient.doctor

  end
end
