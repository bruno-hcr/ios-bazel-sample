.PHONY : xcode run build

script:
	@chmod u+r+x ./scripts/install_dependencies.sh

install:
	@make script && ./scripts/install_dependencies.sh

xcode:
	@make bazel run //:xcodeproj && open BazelSample.xcodeproj

run:
	@make bazel run //:BazelSample

build:
	@make bazel build //:BazelSample