class Doctor
  @@all=[]

  def self.all
    @@all
  end

  attr_accessor :name, :appointments, :patient

  def initialize(name)
    @name = name
  
    @@all << self
  end


  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self 
    end 
  end 
  
    def new_appointment(date, patient)
     Appointment.new(patient, date, self)
  
    end
  
  # def genres
  #   songs.map do |song|
  #     song.genre
  #   end
  # end
  
  def patients
    appointments.map do |appointment|
      appointment.patient
    end
  end
end


# describe '#patients' do
#     it 'has many patients, through appointments' do
#       doctor_who = Doctor.new('The Doctor')
#       hevydevy = Patient.new('Devin Townsend')
#       doctor_who.new_appointment('Friday, January 32nd', hevydevy)

#       expect(doctor_who.patients).to include(hevydevy)
#     end
#   end






