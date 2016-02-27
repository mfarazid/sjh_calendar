require 'csv'

class Event < ActiveFile::Base
  set_root_path "#{Rails.root}/lib/assets"
  set_filename "events"

  class << self
    def extension
      'csv'
    end

    def load_file
      csv_options = {
        :quote_char => '"',
        :col_sep => ',',
        :headers => true,
        :header_converters => :symbol
      }

      id = 0
      data = []
      CSV.foreach(full_path, csv_options) do |row|
        data << event_hash(id, row)
        id += 1
      end
      data
    end
  end

  def self.event_hash(id, data)
    {
      id: id,
      date: data[:date].to_i,
      month: data[:month].to_i,
      year: data[:year].to_i,
      title: data[:title],
      description: data[:description],
      priority: data[:priority].to_i,
      order: data[:order].to_i,
      phase: data[:phase],
    }
  end

  def self.all_for_date(date)
    events = self.find_all_by_month_and_date(date.month, date.day).sort_by { |event| event.order }
    events.find_all { |event| event.year <= date.year }
  end
end
