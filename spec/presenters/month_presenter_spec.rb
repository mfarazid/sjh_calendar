require 'spec_helper'

describe MonthPresenter do
  let(:month) { MonthPresenter.new(1434, 12) }

  describe "#name" do
    it "gives the correct month name" do
      expect(month.name).to eq("Zilhaj al-Haraam")
    end
  end

  describe "#each_week" do
    it "gives the correct number of weeks" do
      expect(month.each_week.to_a.length).to be(6)
    end

    it "contains seven days in every week" do
      month.each_week { |week| expect(week.length).to be(7) }
    end
  end

  describe "#previous_month_filler" do
    it "gives the correct number of filler days from the previous month" do
      hijri_date = HijriDate::Date.new(1434, 12, 1)
      gregorian_date = Date.jd(hijri_date.jd)
      expect(month.previous_month_filler(hijri_date, gregorian_date).to_a.length).to be(6)
    end
  end

  describe "#next_month_padding" do
    it "gives the correct number of filler days from the next month" do
      hijri_date = HijriDate::Date.new(1435, 1, 1)
      gregorian_date = Date.jd(hijri_date.jd)
      expect(month.next_month_filler(hijri_date, gregorian_date).to_a.length).to be(6)
    end
  end
end
