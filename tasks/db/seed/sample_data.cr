require "../../../spec/support/factories/**"

# Add sample data helpful for development, e.g. (fake users, blog posts, etc.)
#
# Use `Db::Seed::RequiredData` if you need to create data *required* for your
# app to work.
class Db::Seed::SampleData < LuckyTask::Task
  summary "Add sample database records helpful for development"

  def call
    10.times do
      user = UserQuery.new.email("cippaciong@cakeboss.it").first

      10.times do
        FortuneFactory.create do |fortune|
          fortune.text("#{user.email} have a Lucky day!")
          fortune.user_id(user.id)
        end
      end
    end
    puts "Done adding sample data"
  end
end
