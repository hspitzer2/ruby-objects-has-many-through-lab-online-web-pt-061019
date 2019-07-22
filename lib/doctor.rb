class Doctor

  attr_accessor :name, :patient

  @@all =[]

  def initialize( )

  @@all = << self
  end

  def self.all
    @all
  end

  def new_appointment(patient, date)
    nu_appt = Doctor.new(patient, self, date)
  end

  def appointment
  end
  
  def patients
    self.appointments.patients
  end

  end
