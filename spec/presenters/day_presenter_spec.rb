require 'spec_helper'

describe DayPresenter do
  let(:hijri_date_1) { HijriDate::Date.new(1434, 12, 1) }
  let(:hijri_date_2) { HijriDate::Date.new(1434, 12, 2) }
  let(:hijri_date_3) { HijriDate::Date.new(1434, 12, 28) }
  let(:hijri_date_4) { HijriDate::Date.new(1435, 2, 29) }

  let(:gregorian_date_1) { Date.new(2013, 10, 5) }
  let(:gregorian_date_2) { Date.new(2013, 10, 6) }
  let(:gregorian_date_3) { Date.new(2013, 11, 1) }
  let(:gregorian_date_4) { Date.new(2014, 1, 1) }

  describe "#gregorian_day" do
    it "presents the Gregorian day, month and year at the beginning of the Hijri month" do
      presenter = DayPresenter.new(hijri_date_1, gregorian_date_1, hijri_date_1.day_of_year)
      expect(presenter.gregorian_day).to eq("5 Oct 2013")
    end

    it "presents just the Gregorian day when it's not the beginning of a Gregorian month or year" do
      presenter = DayPresenter.new(hijri_date_2, gregorian_date_2, hijri_date_2.day_of_year)
      expect(presenter.gregorian_day).to eq("6")
    end

    it "presents just the Gregorian day when the day is a filler day" do
      presenter = DayPresenter.new(hijri_date_2, gregorian_date_2, hijri_date_2.day_of_year, true)
      expect(presenter.gregorian_day).to eq("6")
    end

    it "presents the Gregorian day and month at the beginning of a Gregorian month" do
      presenter = DayPresenter.new(hijri_date_3, gregorian_date_3, hijri_date_3.day_of_year)
      expect(presenter.gregorian_day).to eq("1 Nov")
    end

    it "presents the Gregorian day, month and year at the beginning of a Gregorian year" do
      presenter = DayPresenter.new(hijri_date_4, gregorian_date_4, hijri_date_4.day_of_year)
      expect(presenter.gregorian_day).to eq("1 Jan 2014")
    end
  end

end
