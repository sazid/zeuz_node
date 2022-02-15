all:
	GOOS=linux GOARCH=amd64 go build -o bin/zeuz_node-linux-amd64 cmd/zeuz_node.go
	GOOS=darwin GOARCH=amd64 go build -o bin/zeuz_node-mac-amd64 cmd/zeuz_node.go
	GOOS=windows GOARCH=amd64 go build -o bin/zeuz_node.exe cmd/zeuz_node.go

	GOOS=linux GOARCH=arm64 go build -o bin/zeuz_node-linux-arm64 cmd/zeuz_node.go
	GOOS=darwin GOARCH=arm64 go build -o bin/zeuz_node-mac-arm64 cmd/zeuz_node.go

test:
	go test ./...

clean:
	go clean
	rm -rf bin/
