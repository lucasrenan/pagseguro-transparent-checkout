module PagSeguro
  def self.configuration
    @@configuration ||= PagSeguro::Config.new
  end
end

PagSeguro.environment = :sandbox

puts "init:"
puts ENV['PAGSEGURO_EMAIL'].inspect
puts

PagSeguro.configure do |config|
  config.token = ENV['PAGSEGURO_TOKEN']
  config.email = ENV['PAGSEGURO_EMAIL']
end
