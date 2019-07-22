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
    Patient.all.select |patient|
    appointments.patient