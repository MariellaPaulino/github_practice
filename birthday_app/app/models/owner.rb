class Owner
    def name
        name = "Rick"
    end

    def birthdate
        birthdate = Date.new(1985, 11, 14)
    end

    def countdown
        today = Date.today
        birthday = Date.new(today.year, birthdate.month, birthdate.day)

        # if your birthday this year is greater than today (i.e., IN THE FUTURE)
        if birthday > today

            # then the countdown to your birthday will be the difference between your birthday in the future and today’s date
            countdown = (birthday - today).to_i

            # otherwise, the countdown to your birthday will be the difference between the date of your birthday next year and today’s date
        else
            countdown = (birthday.next_year - today).to_i
        end
    end
end