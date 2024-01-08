.PHONY clean

dep:
	go mod tidy
	go mod vendor

build:
	dep
	go build
linter:
	gocritic check ./

run:
	dbup
	./RSStorage.exe

dbup:
	goose postgres "user=postgres password=postgres dbname=rssagg sslmode=disable" up

dbupdate:
	dbup

dbdown:
	goose postgres "user=postgres password=postgres dbname=rssagg sslmode=disable" down

clean:
	dbdown
	rm ./RSStorage.exe