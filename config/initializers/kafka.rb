require 'kafka'
require 'racecar'

$kafka = Kafka.new(['kafka:9092'],
    client_id: 'kproject_api'
)

Racecar.configure do |config|
    config.brokers = ['kafka:9092']
    config.client_id = 'kproject_api'
    config.group_id = 'kproject_api_group'
end