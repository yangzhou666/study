all: clean banwenyuctl

clean:
	rm -rf ./dist/*

banwenyuctl:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -ldflags "-w -s" -v -o ./dist/banwenyuctl main.go

.PHONY: clean banwenyuctl

