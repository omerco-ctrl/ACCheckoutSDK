## ACCheckoutSDK v3.0.4 – November 2025

### 🚀 New Features
- Added 3DS2 secure checkout flow for better authentication support.
- Introduced sandbox test card validation.
- Added `ACCheckoutManager.shared.version` for runtime version tracking.

### 🧩 Improvements
- Optimized initialization speed by ~20%.
- Reduced SDK binary size from 5.2 MB → 4.1 MB.
- Improved logging format and consistency.

### 🐞 Bug Fixes
- Fixed rare crash during asynchronous payment token validation.
- Fixed missing delegate callback when transaction fails before session start.
- Fixed memory leak in `ACPaymentSession` teardown.

### ⚙️ SDK Integration Notes
- Minimum supported iOS version: **13.0**
- Swift version: **5.7+**
- Compatible with **Xcode 16.0+**

### 🔧 Developer Notes
- Framework now distributed as `.xcframework`.
- The SDK version can be checked via:
  ```swift
  print(ACCheckoutManager.shared.version)
