# elevator_tracker_app

A Flutter project designed to track and manage elevators in buildings.

# Features

- Start: Simple and intuitive design for easy interaction.
- Houses: Add, delete, and navigate through a list of buildings.
- Lift: Move the elevator to selected floors and receive event notifications.

# Programming Approaches

The Elevator Tracker app employs the following programming approaches:

- Flutter Bloc Pattern: Manages state and user interactions efficiently.
- Provider Package: Implements dependency injection and state management.
- Dependency Injection: Organizes app components effectively.
- Repository Pattern: Separates concerns for data management, handling local and remote sources.
-

# Project Structure

The app follows a structured architecture with distinct layers:

- Data Sources:
  SQLite Data Source: Dedicated to SQLite database operations for local storage.

- Repository:
  The repository layer acts as an abstraction over data sources, providing a clean API for data
  access.
  Houses Repository: Manages logic for retrieving houses, handling both local and remote sources.

- Presentation Layer:
  Bloc (Business Logic Component): Manages app state and business logic, handling user interactions.
  UI Components: User interface components responsible for rendering views.
  This modular approach enhances code readability, maintainability, and testability, ensuring a
  robust and scalable architecture for the Elevator Tracker app.

- Push Notification:
  The Elevator Tracker app includes native push notification functionality to keep users informed
  about elevator events. The logic for push notifications is implemented on both the iOS and Android
  platforms.
