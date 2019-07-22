class Doctor

  attr_reader :name, :patient

  @@all =[]

  def initialize(name)
    @name = name
    @@all = << self
  end

  def self.all
    @all
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def appointment
  end

  def patients
    self.appointments.patients
  end

  end
