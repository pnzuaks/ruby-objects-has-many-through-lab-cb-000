class Patient
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
  
  def new_appointment(doctor, date)
    new_app = Appointment.new(self, date, doctor)
    @appointments << new_app
    return new_app
  end
  
  def appointments()
    Appointment.all.select do |app|
      app.patient == self
    end
  end
  
  def doctors()
    @appointments.select do |app|
      app.doctor
    end
  end
  
end