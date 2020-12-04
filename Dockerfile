FROM snowplow/stream-enrich-kinesis

COPY ./config.hocon /snowplow/config/config.hocon
COPY ./resolver.json /snowplow/config/resolver.json
COPY ./enrichments /snowplow/config/enrichments

ENTRYPOINT [ "/home/snowplow/bin/kinesis" ]

CMD [ "--config", "/snowplow/config/config.hocon", "--resolver", "file:/snowplow/config/resolver.json", "--enrichments", "file:/snowplow/config/enrichments/", "--force-cached-files-download" ]
