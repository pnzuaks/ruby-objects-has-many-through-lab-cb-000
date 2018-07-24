class Doctor
  attr_reader :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
  end
  
  def self.all()
    @@all
  end
  
  def new_appointment(patient, date)
    new_app = Appointment.new(patient, date, self)
    @appointments << new_app
    return new_app
  end

  def appointments()
    Appointment.all.select do |app|
      app.doctor == self
    end
  end
  
  def patients()
    puts @appointments
    @appointments.collect {|app| app.patient}
  end
end