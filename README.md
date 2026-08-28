# 📝 My Notes App

A mobile note-taking application built with **Flutter** and **Firebase**.  
The app provides user authentication and allows each user to create, manage, favorite, and delete personal notes using **Cloud Firestore**.

## ✨ Features

- 🔐 User Registration & Login
- 👤 User-specific notes
- ➕ Create new notes
- ✏️ Edit and manage note content
- ⭐ Mark notes as Favorite
- 🌐 Mark notes as Public
- 🗑️ Delete notes
- ☁️ Store notes in Cloud Firestore
- ⚡ Real-time note synchronization
- 📱 Clean and simple Flutter UI

## 🛠️ Technologies

| Technology | Usage |
|---|---|
| Flutter | Mobile application framework |
| Dart | Programming language |
| Firebase Core | Firebase integration |
| Firebase Authentication | User authentication |
| Cloud Firestore | Cloud database and real-time data |

## 📂 Project Structure

```text
lib/
├── main.dart
├── screens/
└── services/
```

The project separates the application screens from Firebase-related services to keep the code organized and easier to maintain.

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone YOUR_REPOSITORY_URL
cd YOUR_PROJECT_FOLDER
```

### 2. Install dependencies

```bash
flutter pub get
```

### 3. Configure Firebase

Create/connect a Firebase project and configure Firebase for your Flutter application.

Make sure the required Firebase configuration files are added to the appropriate platform folders.

### 4. Run the application

```bash
flutter run
```

## 🔥 Firebase

The application uses:

- **Firebase Authentication** for account registration and login.
- **Cloud Firestore** for storing and retrieving notes.
- **Firebase Core** for initializing Firebase inside the Flutter application.

Notes are associated with the authenticated user so that users can manage their own notes.

## 🔄 Application Flow

```text
Start App
   ↓
Login / Sign Up
   ↓
Firebase Authentication
   ↓
Home Screen
   ↓
Create / View Notes
   ↓
Cloud Firestore
   ↓
Real-time Updates
```

## 🎯 Project Purpose

This project demonstrates how to build a Flutter application with a Firebase backend, including authentication, cloud database operations, user-specific data, and real-time synchronization.

## 👨‍💻 Author

**Your Name**

---

⭐ If you find this project useful, consider giving it a star!
