Todo App
A simple and elegant Todo application built with SwiftUI and Core Data for iOS.

Features
✅ Create Tasks - Add new todo items with a clean, intuitive interface
📝 Edit Tasks - Inline editing for pending tasks
✔️ Mark Complete - Toggle tasks between pending and completed states
📋 Organized Sections - Separate views for pending and completed tasks
💾 Persistent Storage - All data is saved using Core Data
🧪 Testing Support - In-memory Core Data configuration for unit tests
Technologies
SwiftUI - Modern declarative UI framework
Core Data - Apple's object graph and persistence framework
MVVM Architecture - Clean separation of concerns
Project Structure
Todo/
├── Models/
│   ├── TodoItem+CoreDataClass.swift     # Core Data entity
│   ├── TodoItem+CoreDataProperties.swift
│   └── TodoModel.xcdatamodeld           # Core Data schema
├── Providers/
│   └── CoreDataProvider.swift           # Core Data stack management
├── Extensions/
│   └── String+Extensions.swift          # String validation helpers
└── Views/
    ├── ContentView.swift                # Main todo list view
    └── TodoCellView.swift              # Individual todo item cell
Core Data Schema
TodoItem Entity:

title (String) - The task description
isCompleted (Boolean) - Completion status
Key Components
CoreDataProvider
Manages the Core Data stack with support for both persistent and in-memory storage.

swift
let provider = CoreDataProvider()              // Persistent storage
let testProvider = CoreDataProvider(inMemory: true)  // In-memory for testing
ContentView
The main interface featuring:

Text field for adding new tasks
Validation to prevent empty submissions
Separate sections for pending and completed tasks
Real-time updates with @FetchRequest
TodoCellView
Individual task cell with:

Checkbox toggle for completion status
Editable text field for pending tasks
Read-only text for completed tasks
How It Works
Adding Tasks: Type in the text field and press Enter/Return. The task is validated and saved to Core Data.
Editing Tasks: Tap on any pending task to edit its text inline. Press Enter to save changes.
Completing Tasks: Tap the checkbox icon to toggle between pending and completed states.
Data Persistence: All changes are automatically saved to Core Data and persist between app launches.
String Validation
The app includes a custom isEmptyOrWhitespace property that prevents users from creating tasks with only whitespace:

swift
extension String {
    var isEmptyOrWhitespace: Bool {
        trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
}
Requirements
iOS 15.0+
Xcode 13.0+
Swift 5.5+
Installation
Clone the repository:
bash
git clone https://github.com/toha-gornich/Todo.git
Open the project in Xcode:
bash
cd Todo
open Todo.xcodeproj
Build and run the project (⌘ + R)
Testing
The app includes support for unit testing with in-memory Core Data storage:

swift
let testProvider = CoreDataProvider(inMemory: true)
This ensures tests run quickly without affecting persistent data.


License
This project is available for personal and educational use.

Author
toha-gornich

Made with ❤️ using SwiftUI and Core Data

