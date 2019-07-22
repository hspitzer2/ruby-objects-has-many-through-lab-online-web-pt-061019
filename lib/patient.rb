class Patient
  attr_reader :name, :appointment
  attr_accessor :doctor

  @@all =[]

  def initialize(name)
    @doctors = doctors
    @name = name
    @@all << self
  end

  def self.all
    @all
    @@all << self
  end

  def new_appointment(date, doctors)
    appt = Appointment.new(date, self, doctor_howser)
    appt
  end

  def appointments
    Appointment.all.select do |appointment|
    appointment.patient == self
   end
 end


  def doctors
   appointments.map do |appointment|
      appointment.doctors
    end
  end
end
