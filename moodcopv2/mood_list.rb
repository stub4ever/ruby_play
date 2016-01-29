require 'nokogiri'
require 'open-uri'
require 'csv'
require_relative 'user'

class MoodList
  def initialize(csv_file)
    @status = []
    @csv_file
  end

  def add_status(mood)
    @status << mood
  end

  def remove_status(mood)
    @status.delete_at(mood)
  end

  def all
    @status
  end
end


  # - insert emailadress X

  # - Giving mood options

  # - Receive random moods quotes > choose

  # - Set 3 main goals today

  # - Write for each goal an step plan

  # - Get inspirational random quotes > choose

  # - Get all Status > date > name

