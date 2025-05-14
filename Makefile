PROTOSUSR  := proto/user/*.proto
PROTOTSK := proto/task/*.proto
OUT_DIR_USR := ./
OUT_DIR_TSK := ./

gen-usr:
	protoc \
	  --go_out=$(OUT_DIR_USR) --go_opt=paths=source_relative \
	  --go-grpc_out=$(OUT_DIR_USR) --go-grpc_opt=paths=source_relative \
	  $(PROTOSUSR)

gen-tsk:
	protoc \
	  --go_out=$(OUT_DIR_TSK) --go_opt=paths=source_relative \
	  --go-grpc_out=$(OUT_DIR_TSK) --go-grpc_opt=paths=source_relative \
	  $(PROTOTSK)

clean:
	find . -name "*.pb.go" -delete