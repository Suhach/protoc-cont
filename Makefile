PROTOS  := proto/*.proto
OUT_DIR := ./proto

generate:
	protoc \
	  -Iproto \
	  --go_out=$(OUT_DIR) --go_opt=paths=source_relative \
	  --go-grpc_out=$(OUT_DIR) --go-grpc_opt=paths=source_relative \
	  $(PROTOS)

clean:
	find . -name "*.pb.go" -delete