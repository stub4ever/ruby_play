require_relative 'view'
require_relative 'user'

class Controller
  def initialize(moodlist)
    @view = View.new
    @moodlist = moodlist
  end

  def introduction
    @view.moodcop_intro
  end

  def create_mood
    #ask user email
    get_email = @view.ask_user_mood
    #ask user mood
  end

end
