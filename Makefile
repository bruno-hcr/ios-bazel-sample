.PHONY : xcode run build

xcode:
	bazel run //:xcodeproj && open BazelSample.xcodeproj

run:
	bazel run //:BazelSample

build:
	bazel build //:BazelSample