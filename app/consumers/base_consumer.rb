class BaseConsumer < Racecar::Consumer
    subscribes_to 'general_topic'

    def process(message)
        puts "Received message: #{message.value}"
        Rails.logger.info "Message: #{message.value} \n ================= \n"
    end
end