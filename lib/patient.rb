class Patient
  attr_accessor :name

  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    appt = appointment.new(doctor, self, date)
    
  end
