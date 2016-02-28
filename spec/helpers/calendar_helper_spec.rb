require 'spec_helper'

describe CalendarHelper, :type => :helper do
  describe "the previous year" do
    it "exoect to be one less than the specified year" do
      expect(prev_year(1434)).to be(1433)
    end

    it "exoect to be the minimum year if the specified year is the minimum year" do
      expect(prev_year(CalendarPresenter::MIN_YEAR)).to be(CalendarPresenter::MIN_YEAR)
    end
  end

  describe "the next year" do
    it "expect to be one more than the specified year" do
      expect(next_year(1434)).to be(1435)
    end

    it "expect to be the maximum year if the specified year is the maximum year" do
      expect(next_year(CalendarPresenter::MAX_YEAR)).to be(CalendarPresenter::MAX_YEAR)
    end
  end
end
