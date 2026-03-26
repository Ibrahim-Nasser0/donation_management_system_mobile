<div align="center">

# 🤝 Donation Management System
### Premium Mobile App for Donors

[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![BLoC](https://img.shields.io/badge/BLoC-State_Management-00B4D8?style=for-the-badge&logo=dart&logoColor=white)](https://bloclibrary.dev)
[![Clean Arch](https://img.shields.io/badge/Clean_Architecture-2_Layers-4CAF50?style=for-the-badge)]()

> A high-performance, premium donation application built with a **Pragmatic Clean Architecture** (Data & Presentation layers), providing a seamless experience for donors to support urgent humanitarian and community cases.

**Note:** This repository contains the **Mobile Application** (intended for normal users/donors). There is a separate **Desktop Application** designed specifically for **Admins and Employees**.

</div>

---

## ✨ Features

| Feature | Description |
|---|---|
| 🔐 **Secure Authentication** | Full donor registration and login flow with input validation |
| 🚨 **Urgent Cases** | Real-time highlights of cases requiring immediate financial support |
| 📖 **Recent Stories** | A beautiful grid view showcasing success stories and ongoing community projects |
| 📊 **Impact Tracking** | Gamified user profile with an "Impact Score" to visualize your contributions |
| 📑 **Case Details** | In-depth case views with parallax scrolling and dynamic progress bars |
| 💳 **Premium Payments** | Interactive credit card management and secure donation processing |
| 🔔 **Follow & Notify** | Ability to follow specific cases and receive updates on their progress |
| 📱 **Adaptive UI** | Pixel-perfect responsive design with shimmer loaders and micro-interactions |

---

## 🏗️ Architecture

This project follows a **Pragmatic 2-Layer Architecture** (Presentation & Data) to ensure a solid separation of concerns while avoiding the over-engineering often associated with a formal Domain layer for projects of this scale.

### Why this Architecture?

| Principle | Details |
|---|---|
| **Reduced Boilerplate** | By merging domain logic into the data/presentation layers, we avoid redundant mapping code. |
| **Separation of Concerns** | UI (Widgets/Cubit) is kept strictly separate from Data sourcing (API/Models). |
| **Maintainability** | Features are isolated; modifying one feature doesn't impact others. |
| **Development Speed** | Faster implementation cycle without sacrificing the ability to scale later. |

### Layer Diagram

```
┌──────────────────────────────────────────────────────────────────────┐
│                        PRESENTATION LAYER                            │
│                                                                      │
│    ┌─────────────┐      ┌────────────────┐      ┌────────────────┐   │
│    │  Pages &    │ ───▶ │   BLoC/Cubit   │ ───▶│    States &    │   │
│    │  Screens    │      │   + Events     │      │    Widgets     │   │
│    └─────────────┘      └───────┬────────┘      └────────────────┘   │
│                                 │                                    │
└─────────────────────────────────┼────────────────────────────────────┘
                                  │  calls repositories
┌─────────────────────────────────▼────────────────────────────────────┐
│                             DATA LAYER                               │
│                                                                      │
│    ┌─────────────┐      ┌────────────────┐      ┌────────────────┐   │
│    │   Models    │      │  Repositories  │      │  Data Sources  │   │
│    │  (fromJson/ │      │ (Business      │      │ Remote (Dio)   │   │
│    │   toJson)   │      │  Implement.)   │      │ Local (Cache)  │   │
│    └─────────────┘      └────────────────┘      └────────────────┘   │
│                                                                      │
└──────────────────────────────────────────────────────────────────────┘
```

### Data Flow

```
  User Action
      │
      ▼
  BLoC Event
      │
      ▼
  Repository Implementation
      │
      ▼
  Remote Data Source (Dio → REST API)
      │
      ▼
  JSON Model (fromJson)
      │
      ▼
  BLoC State ──────── UI Rebuild
```

---

## 🛠️ Tech Stack

### Core
| Technology | Role |
|---|---|
| **Flutter 3.x** | Cross-platform UI framework |
| **Dart** | Primary programming language |

### State Management
| Package | Usage |
|---|---|
| [`flutter_bloc`](https://pub.dev/packages/flutter_bloc) | Predictable state management using BLoC & Cubit |

### Networking & API
| Package | Usage |
|---|---|
| [`dio`](https://pub.dev/packages/dio) | HTTP client with interceptors and specialized error handling |

### UI & UX (Premium Experience)
| Package | Usage |
|---|---|
| [`animations`](https://pub.dev/packages/animations) | Material Design Motion system (FadeThrough, SharedAxis) |
| [`lottie`](https://pub.dev/packages/lottie) | High-quality vector animations for success feedback |
| [`shimmer`](https://pub.dev/packages/shimmer) | Skeleton loading screens for better perceived performance |
| [`flutter_credit_card`](https://pub.dev/packages/flutter_credit_card) | Aesthetic interactive payment card UI |
| [`flutter_screenutil`](https://pub.dev/packages/flutter_screenutil) | Responsive sizing across all mobile devices |

---

## 📁 Project Structure

```
lib/
│
├── core/
│   ├── constant/               # App colors, themes, strings
│   ├── shared/                 # Reusable widgets (CustomButton, ShimmerBox, etc.)
│   ├── utils/                  # App Router, Dependency Injection, Helper functions
│   └── network/                # Api Client setup
│
├── features/
│   ├── splash/                 # Intro animations
│   ├── auth/                   # Login & Registration
│   ├── home/                   # Dashboard, Urgent Cases & Stories (Grid/List)
│   ├── case_details/           # Parallax Case Views & Progress tracking
│   ├── donations/              # User's donation history
│   ├── payment/                # Credit Card management
│   ├── profile/                # Impact Score & User settings
│   └── followed/               # Cases followed by user
│
└── main.dart                   # Entry point
```

---

## 🚀 Getting Started

### Prerequisites
- Flutter SDK `>=3.0.0`
- Android Studio or VS Code
- A valid internet connection (for API calls)

### Installation

```bash
# 1. Clone the repository
git clone https://github.com/Ibrahim-nasser0/donation_management_system_mobile.git

# 2. Navigate to the project
cd donation_management_system_mobile

# 3. Install dependencies
flutter pub get

# 4. Run the app
flutter run
```

---

<div align="center">

Built with 💙 by [Ibrahim Nasser](https://github.com/Ibrahim-nasser0)

[![GitHub](https://img.shields.io/badge/GitHub-Ibrahim--nasser0-181717?style=for-the-badge&logo=github)](https://github.com/Ibrahim-nasser0)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Ibrahim_Nasser-0077B5?style=for-the-badge&logo=linkedin)](https://linkedin.com/in/ibrahim-Nasser-mobile)

</div>
