class FortuneFactory < Avram::Factory
  def initialize
    text "#{sequence("Have a Lucky day!")}"

    # Default assign to user 1 for now
    # We will show how to override this further down
    user_id 1
  end
end
