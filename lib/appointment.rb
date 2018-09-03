class Appointment
  attr_accessor :date, :patient, :doctor
  @@all = []

  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
    doctor.appointments << self
    patient.appointments << self
  end

  def self.all
    @@all
  end

end
