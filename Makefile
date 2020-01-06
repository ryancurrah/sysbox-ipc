#
# sysbox-ipc Makefile
#

.PHONY: clean sysbox-ipc sysipc-grpc-fs-proto sysipc-grpc-mgr-proto

SYSIPC_GRPC_FS_DIR  := sysboxFsGrpc
SYSIPC_GRPC_MGR_DIR := sysboxMgrGrpc

sysbox-ipc: sysipc-grpc-fs-proto sysipc-grpc-mgr-proto

sysipc-grpc-fs-proto:
	$(MAKE) -C $(SYSIPC_GRPC_FS_DIR)/protobuf

sysipc-grpc-mgr-proto:
	$(MAKE) -C $(SYSIPC_GRPC_MGR_DIR)/protobuf

clean:
	$(MAKE) -C $(SYSIPC_GRPC_FS_DIR)/protobuf clean
	$(MAKE) -C $(SYSIPC_GRPC_MGR_DIR)/protobuf clean
