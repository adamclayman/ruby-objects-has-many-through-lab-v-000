class Patient
  attr_accessor :name
  attr_writer :appointments
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
end
