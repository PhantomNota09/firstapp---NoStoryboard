# First App - Programmatic UI (No Storyboard)

A simple iOS application demonstrating how to create all UI elements programmatically using UIKit without Interface Builder or Storyboards. This project showcases creating screens, labels, buttons, text fields, image views, table views, and custom table view cells entirely in code.

## 📱 Project Overview

This app demonstrates a complete authentication flow and data display using only programmatic UI:

- **Welcome Screen** - Landing page with navigation options
- **Login Screen** - User authentication interface
- **Sign Up Screen** - New user registration
- **Home Screen** - Main content display with a table view

## 🎯 Main Goal

**Create all UI elements programmatically without using Storyboards or Interface Builder**, including:

- ✅ View Controllers
- ✅ Labels (`UILabel`)
- ✅ Buttons (`UIButton`)
- ✅ Text Fields (`UITextField`)
- ✅ Image Views (`UIImageView`)
- ✅ Table Views (`UITableView`)
- ✅ Custom Table View Cells (`UITableViewCell`)
- ✅ Auto Layout Constraints (NSLayoutConstraint)
- ✅ Navigation Flow

## 📂 Screen Breakdown

### 1. Welcome Screen (`WelcomeVC.swift`)
**UI Components:**
- `UILabel` - Welcome message
- `UIImageView` - App logo (commented out, ready for implementation)
- `UIButton` - Log In button
- `UIButton` - Sign Up button

**Key Features:**
- System-aware colors (`.systemBackground`, `.label`)
- Custom button styling with corner radius
- Programmatic navigation to Login and Sign Up screens

### 2. Login Screen (`LoginVC.swift`)
**UI Components:**
- `UILabel` - Page title
- `UITextField` - Username input
- `UITextField` - Password input (secure entry)
- `UIButton` - Forgot Password link
- `UIButton` - Log In action button
- `UIButton` - Sign Up navigation button

**Key Features:**
- Text field border styling
- Secure text entry for password
- Button target-action pattern
- Responsive layout with Auto Layout

### 3. Sign Up Screen (`SignupVC.swift`)
**UI Components:**
- `UILabel` - Page title
- `UITextField` - Full Name input
- `UITextField` - Email input
- `UITextField` - Password input (secure entry)
- `UITextField` - Confirm Password input (secure entry)
- `UIButton` - Sign Up action button
- `UIButton` - Login navigation link

**Key Features:**
- Multiple text field form
- Password confirmation field
- Link-style button for navigation
- Complex constraint relationships

### 4. Home Screen (`HomePage.swift`)
**UI Components:**
- `UILabel` - Screen title
- `UITableView` - Scrollable data display
- Custom `NumberCell` - Reusable table view cell
- `UIButton` - Sign Out button

**Key Features:**
- `UITableViewDelegate` & `UITableViewDataSource` implementation
- Custom reusable cell (`NumberCell`)
- Cell registration and dequeuing
- Programmatic table view configuration
- Data-driven UI (displays numbers 1-10)

## 🔧 Key Techniques Demonstrated

### 1. Programmatic UI Setup
Every view controller follows this pattern:
```swift
override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    
    setupLabel()
    setupTextField()
    setupButton()
    setupTableView()
}
```

### 2. Auto Layout Without Storyboards
All constraints are created programmatically:
```swift
// Disable autoresizing masks
element.translatesAutoresizingMaskIntoConstraints = false

// Activate constraints
NSLayoutConstraint.activate([
    element.centerXAnchor.constraint(equalTo: view.centerXAnchor),
    element.topAnchor.constraint(equalTo: otherElement.bottomAnchor, constant: 20),
    element.widthAnchor.constraint(equalToConstant: 300),
    element.heightAnchor.constraint(equalToConstant: 40)
])
```

### 3. Custom Table View Cells
The `NumberCell` class demonstrates:
- Custom cell initialization
- Programmatic subview layout
- Cell configuration method
- Reusability pattern

### 4. Button Actions
Using the target-action pattern:
```swift
button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)

@objc private func buttonTapped() {
    // Handle button tap
}
```

### 5. Navigation
Programmatic navigation without segues:
```swift
let nextVC = TargetViewController()
navigationController?.pushViewController(nextVC, animated: true)
```

### 6. Scene-Based Window Setup
The `SceneDelegate` creates the window and root view controller programmatically:
```swift
let objLogin = WelcomeVC()
let navController = UINavigationController(rootViewController: objLogin)

self.window = UIWindow(windowScene: scene)
self.window?.rootViewController = navController
self.window?.makeKeyAndVisible()
```

## 🎨 UI Elements Used

### Labels
- Title labels with custom fonts
- Multi-line support with `numberOfLines = 0`
- Text alignment and color customization

### Text Fields
- Border styles (`.line`)
- Placeholder text
- Secure text entry for passwords
- Custom font sizes

### Buttons
- Custom background colors
- Title colors for different states (normal, highlighted)
- Corner radius and clipping
- Target-action event handling

### Table Views
- Delegate and data source protocols
- Cell registration
- Cell reuse identifiers
- Custom row heights
- Data binding

### Image Views
- Prepared but commented out in `WelcomeVC`
- Ready for logo or icon implementation

## 🎓 Learning Objectives

This project teaches:
1. **No Storyboard Development** - Complete UI in code
2. **Auto Layout Mastery** - Programmatic constraints
3. **UIKit Fundamentals** - Core UI components
4. **Table View Implementation** - Data display and custom cells
5. **Navigation Patterns** - Programmatic screen transitions
6. **Delegation** - Table view delegate and data source
7. **Target-Action Pattern** - Button handling
8. **Scene Lifecycle** - Modern UIKit architecture

## 🔍 Notable Features

- **100% Programmatic UI** - No Interface Builder
- **Reusable Cell Pattern** - `NumberCell` demonstrates best practices
- **Navigation Controller** - Proper navigation stack management
- **Secure Text Entry** - Password fields configured correctly
- **Responsive Layout** - Adapts to different screen sizes
- **Optional Safety** - Proper optional handling throughout
