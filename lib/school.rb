class School

    attr_reader :start_time,
                :hours_in_school_day,
                :student_names

    def initialize(start_time, hours_in_school_day)
        @start_time = start_time
        @hours_in_school_day = hours_in_school_day
        @student_names = []
    end

    def add_student_name(name)
        @student_names << name
    end

    def end_time
        hour = @start_time.split(":").first.to_i + @hours_in_school_day
        minute = @start_time.split(":").last
        hour.to_s + ":" + minute
    end

    def is_full_time?
        @hours_in_school_day > 4
    end

    def standard_student_names
        @student_names.map{ |name| name.downcase.capitalize }
    end

    def convert_end_time_to_clock_time
        hour = @start_time.split(":").first.to_i + @hours_in_school_day
        if hour > 12
            hour -= 12
        end
        minute = @start_time.split(":").last
        hour.to_s + ":" + minute
    end
        
end
