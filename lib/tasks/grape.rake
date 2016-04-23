namespace :grape do
  desc "routes"
  task :routes => :environment do
    ReactComments::Base.routes.map { |route| puts "#{route} \n" }
  end
end
