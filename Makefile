.PHONY : xcode run build

script:
	@chmod u+r+x ./scripts/install_dependencies.sh

install:
	@make script && ./scripts/install_dependencies.sh

xcode:
	bazel run //:xcodeproj && open BazelSample.xcodeproj

run:
	bazel run //:BazelSample

build:
	bazel build //:BazelSample