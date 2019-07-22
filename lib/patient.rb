class Patient
  attr_reader :name, :appointment, :doctor

  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @all
  end

  def new_appointment(date, doctor)
    appt = Appointment.new(date, self, doctor)
    appt
  end

  def appointments
    Appointment.all.select do |appointment|
    appointment.patient == self
   end
 end


  def doctors
   appointments.all.map do |appointment|
      appointment.patient
    end
  end
end
