run:
	go run cmd/ordersystem/main.go cmd/ordersystem/wire_gen.go

migrate:
	migrate -path=sql/migrations -database "mysql://root:root@tcp(localhost:3307)/orders" -verbose up

migratedown:
	migrate -path=sql/migrations -database "mysql://root:root@tcp(localhost:3307)/orders" -verbose down

.PHONY: migrate migratedown