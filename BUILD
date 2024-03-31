load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")
load("@build_bazel_rules_swift//swift:swift.bzl", "swift_library")
load("@rules_xcodeproj//xcodeproj:defs.bzl", "top_level_target", "xcodeproj")

swift_library(
    name = "lib",
    srcs = glob(["Sources/**/*.swift"]),
)

ios_application(
    name = "BazelSample",
    bundle_id = "com.example.bazel-sample",
    families = [
        "iphone",
        "ipad",
    ],
    infoplists = ["Resources/Info.plist"],
    minimum_os_version = "17.0",
    visibility = ["//visibility:public"],
    deps = [":lib"],
)

xcodeproj(
    name = "xcodeproj",
    build_mode = "bazel",
    project_name = "BazelSample",
    tags = ["manual"],
    top_level_targets = [
        ":BazelSample",
    ]
)