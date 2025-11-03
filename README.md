# 📦 ACCheckoutSDK

ACCheckoutSDK is a lightweight, in-app iOS checkout SDK. This repository includes the source code, Cocoapods integration, and automated build & release flow.

---

## 🚧 Branching Workflow

- All development is done on **feature branches** pulled out of `develop`.
- When a feature is complete, it's merged into `develop`.
- Once QA approves a version, `develop` is merged into **`release/xcframework`**.
- From `release/xcframework`, we run the release script to:
  - Update version numbers
  - Build a new `.xcframework`
  - Tag and push to Git

---

## 🚀 Releasing a New Version

> ✅ **IMPORTANT:** Only run the release script from the `release/xcframework` branch, and only after QA approval.

### 1. ✅ Prerequisites

- Xcode command line tools
- Git
- macOS Terminal
- Permission to push to the repository

Ensure your branch is up to date:

```bash
git checkout release/xcframework
git pull
```

---

### 2. 🔐 Make the Script Executable

Run this once to allow the script to run:

```bash
chmod +x build.sh
```

---

### 3. 🏁 Run the Script

To build and release a new version:

```bash
./build.sh <version>
```

Example:

```bash
./build.sh 1.2.0
```

This will:

- Update the version in:
  - `ACCheckoutSDK/Config/ACConfigManager.swift`
  - `ACCheckoutSDK.podspec`
- Remove old builds
- Archive for iOS & iOS Simulator
- Create a fresh `.xcframework`
- Remove code signing metadata
- Unlock `Info.plist` files
- Commit, tag, and push to Git

---

## 🧰 Script Breakdown

Here’s what `build.sh` does step-by-step:

1. **Reads version argument**
2. **Updates**:
   - `sdkV = "X.X.X"` inside Swift file
   - `s.version = 'X.X.X'` inside `.podspec`
3. **Cleans** old archives & frameworks
4. **Archives**:
   - iOS device build
   - iOS simulator build
5. **Creates** a universal `.xcframework`
6. **Strips** code signing metadata
7. **Commits** changes and pushes a Git tag

Example output:
```
🛠️  Updating version in Swift file
📦 Creating XCFramework
📤 Committing and tagging version 1.2.0
✅ Done: SDK v1.2.0 built, unsigned, tagged, and pushed to Git
```

---

## 📁 Files Affected

- `ACCheckoutSDK/Config/ACConfigManager.swift`
- `ACCheckoutSDK.podspec`
- `ACCheckoutSDK.xcframework`

---

## 🧯 Troubleshooting

| Error | Fix |
|------|-----|
| `Permission denied` | Run `chmod +x build.sh` |
| `No version specified` | Run with version argument: `./build.sh 1.2.0` |
| `File not found` | Make sure you're in the project root |
| `git push failed` | Check your branch and remote permissions |

---

## 📄 License

MIT

---

## 🙋 Questions?

If you’re unsure about the process, ask a team lead before running the script. This process affects production versioning.

---
