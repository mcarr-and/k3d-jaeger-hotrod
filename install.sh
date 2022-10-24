./scripts/cluster-create.sh
./scripts/install-jaeger-hotrod-demo.sh

curl -I "http://localhost:8070/dispatch?customer=392" -H "host:hotrod.localhost"

curl -I "http://localhost:8070/dispatch?customer=123" -H "host:hotrod.localhost"