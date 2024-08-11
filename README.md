# JWT Authentication with Flutter and Node.js

This project demonstrates a simple authentication system using JSON Web Tokens (JWT) for a Flutter application, with the backend powered by Node.js. The app uses the Provider package for state management.

## Table of Contents

- [Features](#features)
- [Getting Started](#getting-started)
- [Backend Setup](#backend-setup)
- [Frontend Setup](#frontend-setup)
- [State Management](#state-management)
- [Project Structure](#project-structure)
- [Screenshots](#screenshots)
- [Contributing](#contributing)
- [License](#license)

## Features

- User registration and login.
- JWT-based authentication.
- Securely stored tokens using SharedPreferences.
- State management with the Provider package.
- Navigation based on authentication state.

## Getting Started

### Prerequisites

- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)
- Node.js: [Install Node.js](https://nodejs.org/)
- MongoDB: [Set up MongoDB](https://docs.mongodb.com/manual/installation/)

### Backend Setup

1. Clone the repository:
    ```bash
    git clone https://github.com/Shubham-Zone/JWT-AUTH-FLUTTER-NODEJS.git
    cd JWT-AUTH-FLUTTER-NODEJS
    ```

2. Navigate to the backend directory:
    ```bash
    cd backend
    ```

3. Install dependencies:
    ```bash
    npm install
    ```

4. Create a `.env` file in the `backend` directory and add your MongoDB connection string and JWT secret:
    ```bash
    MONGO_URI=your_mongo_uri
    JWT_SECRET=your_jwt_secret
    ```

5. Start the server:
    ```bash
    npm start
    ```

### Frontend Setup

1. Navigate to the frontend directory:
    ```bash
    cd frontend
    ```

2. Install dependencies:
    ```bash
    flutter pub get
    ```

3. Run the app:
    ```bash
    flutter run
    ```

## State Management

The app uses the Provider package to manage the state of the authenticated user. The `UserProvider` class holds the user data and provides methods to update the user state throughout the app.

### Key Components

- `AuthService`: Handles user authentication, including sign-up, sign-in, and sign-out.
- `UserProvider`: Manages the state of the current user.
- `SharedPreferences`: Stores the JWT token locally on the device.

## Project Structure

```plaintext
JWT-AUTH-FLUTTER-NODEJS/
├── backend/                # Node.js backend
│   ├── models/             # MongoDB models
│   ├── routes/             # API routes
│   ├── controllers/        # Controller logic
│   ├── index.js            # Entry point for the backend
│   └── .env.example        # Example environment file
├── frontend/               # Flutter frontend
│   ├── lib/
│   │   ├── models/         # User model
│   │   ├── provider/       # State management
│   │   ├── screens/        # UI screens
│   │   ├── services/       # Authentication service
│   │   └── utils/          # Utility functions
│   └── pubspec.yaml        # Flutter dependencies
└── README.md               # Project README
```

## Contributing

Contributions are welcome! Please open an issue or submit a pull request if you have any ideas for improvements or find any bugs.
