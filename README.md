- 基于[emqttd_plugin_kafka_bridge](https://github.com/msdevanms/emqttd_plugin_kafka_bridge)基础上修改

- 在EMQ Makefile中添加

  ```
  DEPS += emqx_plugin_kafka_bridge
  ```

- 在relx.config中添加

  ```
  kafkamocker，
  ekaf，
  {emqx_plugin_kafka_bridge,load}
  ```

  

  

