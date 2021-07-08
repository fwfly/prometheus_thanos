mkdir -p data/{local-prometheus-data,prom0,prom1,prom2}

cat > data/local-prometheus-data/prometheus.yml << EOF
# When the Thanos remote-write-receive component is started,
# this is an example configuration of a Prometheus server that
# would scrape a local node-exporter and replicate its data to
# the remote write endpoint.
scrape_configs:
  - job_name: node
    scrape_interval: 1s
    static_configs:
    - targets: ['node-exporter:9100']
EOF
