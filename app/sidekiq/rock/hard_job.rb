class Rock::HardJob
  include Sidekiq::Job

  def perform(name,age)
    puts "I am #{name}, #{age}"
  end
end
