.PHONY clean

build:
	go build

run:
	./RSStorage.exe

clean:
	rm ./RSStorage.exe