# ALExtensions

Common iOS extensions for UIKit. Heavily inspired by [Reusable](https://github.com/AliSoftware/Reusable) by AliSoftware.

## Contents

- **Reusable** – Protocol for table/collection view cell reuse identifiers
- **NibType** – Nib loading for views and view controllers
- **UIView+Extensions** – Layout helpers (e.g. `fillToParent()`)
- **UIViewController+Extensions** – View controller utilities
- **UITableView+Extensions** – Table view registration and dequeue
- **UICollectionView+Extensions** – Collection view registration and dequeue

## Requirements

- iOS 13.0+ / macOS 10.15+
- Swift 5.9+

## Installation

### Swift Package Manager

Add ALExtensions as a dependency in your project’s `Package.swift` or in Xcode via **File → Add Package Dependencies**:

```
https://github.com/alexlivenson/ALExtensions.git
```

Or in `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/alexlivenson/ALExtensions.git", from: "1.0.0")
]
```

Then add `"ALExtensions"` to your target’s dependencies and use `import ALExtensions` in your code.

### CocoaPods

Add to your `Podfile`:

```ruby
pod 'ALExtensions', '~> 1.0'
```

Then run `pod install`.

### Carthage

Add to your `Cartfile`:

```
github "alexlivenson/ALExtensions" ~> 1.0
```

Run `carthage update`, then drag the built `ALExtensions.framework` into your Xcode project.

## License

MIT. See the LICENSE file for details.
