REBAR=./rebar
RELX=./relx

NODE_DIR=nodes/my-node

# Build tasks:

all: release

dependencies:
	@${REBAR} get-deps

applications: dependencies
	@${REBAR} compile

release: applications
	@${RELX} \
		-d \
		-r . \
		-c ${NODE_DIR}/relx.config \
		-o ${NODE_DIR}/_rel \
		release

relclean:
	@rm -rf ${NODE_DIR}/_rel

clean: relclean
	@${REBAR} clean
