# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repository is

A CocoaPods binary-distribution repo for `MoneyHashCore` — the shared core xcframework consumed by the MoneyHashPayment and MoneyHashLeanTest SDKs. There is **no source code here**: the repo contains only `MoneyHashCore.podspec` and the prebuilt `MoneyHashCore.xcframework` (device `ios-arm64` and simulator `ios-arm64_x86_64-simulator` slices). The framework is built elsewhere and the binary artifact is committed here.

## Common commands

```bash
# Validate the podspec (binary pod, local source)
# --allow-warnings is required: the spec uses `:path` source, which lint
# flags ("Missing primary key for `source` attribute") since it expects git/http
pod lib lint MoneyHashCore.podspec --allow-warnings

# Inspect the framework's public interface
cat MoneyHashCore.xcframework/ios-arm64/MoneyHashCore.framework/Modules/MoneyHashCore.swiftmodule/*.swiftinterface
```

There is no build, test, or lint tooling beyond CocoaPods — changes here are limited to the podspec and replacing the committed xcframework binary.

## Releasing a new version

1. Replace `MoneyHashCore.xcframework` with the newly built artifact (both device and simulator slices).
2. Bump `s.version` in `MoneyHashCore.podspec`.
3. Keep `s.ios.deployment_target` (currently `14.0`) in sync with how the framework was built.
