PROTOSUSR  := proto/user/*.proto
PROTOTSK := proto/task/*.proto
OUT_DIR_USR := ./proto
OUT_DIR_TSK := ./proto

gen-usr:
	protoc \
	  -Iproto \
	  --go_out=$(OUT_DIR_USR) --go_opt=paths=source_relative \
	  --go-grpc_out=$(OUT_DIR_USR) --go-grpc_opt=paths=source_relative \
	  $(PROTOSUSR)

gen-tsk:
	protoc \
	  -Iproto \
	  --go_out=$(OUT_DIR_TSK) --go_opt=paths=source_relative,Mproto/task/task.proto=github.com/Suhach/protoc-cont/task \
	  --go-grpc_out=$(OUT_DIR_TSK) --go-grpc_opt=paths=source_relative,Mproto/task/task.proto=github.com/Suhach/protoc-cont/task \
	  $(PROTOTSK)

clean:
	find . -name "*.pb.go" -delete