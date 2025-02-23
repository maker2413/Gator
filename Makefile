createdb:
	docker exec -it postgres12 createdb --username=root --owner=root gator

dropdb:
	docker exec -it postgres12 dropdb gator

startpostgres:
	docker run --rm --name postgres12 -p 5432:5432 \
	-e POSTGRES_USER=root \
	-e POSTGRES_PASSWORD=secret \
	-d postgres:12-alpine

stoppostgres:
	docker stop postgres12

gooseup:
	cd sql/schema/ && \
	goose postgres "postgres://root:secret@localhost:5432/gator" up;

goosedown:
	cd sql/schema/ && \
	goose postgres "postgres://root:secret@localhost:5432/gator" down;

sqlc:
	sqlc generate
