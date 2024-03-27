load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "build_bazel_rules_apple",
    sha256 = "65eafafe94b8573e74160b7f587d091a0fa34d69e6d2c41c4afb1eef140383ec",
    url = "https://github.com/bazelbuild/rules_apple/releases/download/3.3.0/rules_apple.3.3.0.tar.gz",
)

load(
    "@build_bazel_rules_apple//apple:repositories.bzl",
    "apple_rules_dependencies",
)

apple_rules_dependencies()

load(
    "@build_bazel_rules_swift//swift:repositories.bzl",
    "swift_rules_dependencies",
)

swift_rules_dependencies()

load(
    "@build_bazel_rules_swift//swift:extras.bzl",
    "swift_rules_extra_dependencies",
)

swift_rules_extra_dependencies()

load(
    "@build_bazel_apple_support//lib:repositories.bzl",
    "apple_support_dependencies",
)

apple_support_dependencies()


http_archive(
    name = "com_github_tinderapp_pinoperation",
    urls = ["https://github.com/TinderApp/PINOperation/archive/687bcb7323f4d444f1fb9a6319e909d9c74b9ca5.zip"],
    sha256 = "82100fd8af3f7ff90385348fa738f594659480b75f6adc25eac7b1373cfd0e6c",
    strip_prefix = "PINOperation-687bcb7323f4d444f1fb9a6319e909d9c74b9ca5"
)