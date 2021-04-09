class TrainSearch

   include PageObject

   page_url 'https://www.irctc.co.in/nget/train-search'
   button(:submit_covid, class: 'btn btn-primary')
   text_field(:search_train_source_edit_box, class: 'ng-tns-c58-8 ui-inputtext ui-widget ui-state-default ui-corner-all ui-autocomplete-input ng-star-inserted')
   text_field(:search_train_destination_edit_box, class: 'ng-tns-c58-9 ui-inputtext ui-widget ui-state-default ui-corner-all ui-autocomplete-input ng-star-inserted')
   text_field(:choose_date, class: 'ng-tns-c59-10 ui-inputtext ui-widget ui-state-default ui-corner-all ng-star-inserted')
   div(:choose_quota, class: 'ng-tns-c66-12 ui-dropdown ui-widget ui-state-default ui-corner-all')
   div(:choose_journey_class, class: 'ng-tns-c66-11 ui-dropdown ui-widget ui-state-default ui-corner-all')


  span(:choose_from_list, text: 'NEW DELHI - NDLS')

  def covid_ok covid
    submit_covid_element.click
  end

  def search_train_source starting_place
    search_train_source_edit_box_element.set starting_place
  end

  def search_train_destination ending_place
    search_train_destination_edit_box_element.set ending_place
  end

  def calender_details
    choose_date_element.set $new_date
  end

  def journey_quota quota
    choose_quota_element.map(&:text)
  end

   def journey_class journey
     choose_journey_class_element.map(&:text)
   end
  end

