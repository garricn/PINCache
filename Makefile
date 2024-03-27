PLATFORM="platform=iOS Simulator,name=iPhone 8"
SDK="iphonesimulator"
SHELL=/bin/bash -o pipefail
XCODE_MAJOR_VERSION=$(shell xcodebuild -version | HEAD -n 1 | sed -E 's/Xcode ([0-9]+).*/\1/')
IOS_EXAMPLE_PROJECT="IntegrationTests/PINCache-SPM-Integration/PINCache-SPM-Integration.xcodeproj"
EXAMPLE_SCHEME="PINCache-SPM-Integration"

bazel:
	bazelisk build :PINCache


test:
	xcodebuild clean test -destination ${PLATFORM} -sdk ${SDK} -workspace PINCache.xcworkspace -scheme PINCache \
	ONLY_ACTIVE_ARCH=NO \
	CODE_SIGNING_REQUIRED=NO | xcpretty
