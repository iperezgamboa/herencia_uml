class Appointment
    def initialize(location, purpose, hour, min)
      @location = location
      @purpose = purpose
      @hour = hour
      @min = min
    end
end

class MonthlyAppointment < Appointment
    def initialize(location,purpose,hour,min,day)
        @day = day
    end

    def occurs_on?(day)
        @day == day ? true : false
    end
end

puts MonthlyAppointment.new('Nasa', 'Aliens', 8, 15, 23)
# Reunión mensual en NASA sobre Aliens el día 23 a la(s) 8:15.

class DailyAppointment < Appointment

    def occurs_on?(hour,min)
        @hour == hour && @min == min ? true : false
    end
end

puts DailyAppointment.new('Desafío Latam', 'Educación', 8, 15)
# Reunión diaria en Desafío Latam sobre Educación a la(s) 8:15.

class OneTimeAppointment < Appointment
    def initialize(location, purpose, hour, min, day, month, year)
        @day = day
        @month = month
        @year = year
    end

    def occurs_on?(day, month, year)
        @day == day && @month == month && @year == year ? true : false 
    end
end
puts OneTimeAppointment.new('Desafío Latam', 'Trabajo', 14, 30, 4, 6, 2019)
# Reunión única en Desafío Latam sobre Trabajo el 4/6/2019 a la(s) 14:30.