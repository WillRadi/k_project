# Kafka-Rails Study Project

This project is focused on studying the integration and usage of Apache Kafka within a Rails application

The references used for the study and construction of this project were:

* Full Cycle free classes about Kafka
* Article [Kafka on Rails Part 1](https://mensfeld.pl/2017/11/kafka-on-rails-using-kafka-with-ruby-on-rails-part-1-kafka-basics-and-its-advantages/)

The gem used to work on the integration with Kafka was Racecar.

## Running the Project

This project is containerized. To run it, simply execute docker-compose up. Three containers will be started:

* kafka
* kproject
* zookeeper

## How to use

### Topics

* To create a new topic, just access the Kafka container and run the following command:

```bash
kafka-topics --create --bootstrap-server kafka:9092 replication-factor 1 --partitions 1 --topic general_topic
```

* To consume the topic directly from the Rails application, you need to start the consumer for the general_topic topic:

```bash
# Inside the kproject console

bundle exec racecar {{ consumer class }}
```
