class FutureDate
def calculate_future_date no_of_days
  $new_date =  Time.now + 60 * 60 * 24 * no_of_days #Logic for next day +365

  month = new_date.strftime("%m") # Strftime method is for passing parameter as a string
  day = new_date.strftime("%d")
  year = new_date.strftime("%Y")

  calender_date = "#{month}/#{day}/#{year}"
end
end