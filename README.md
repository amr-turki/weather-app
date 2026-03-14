# 🌦️ Weather App — Flutter & Cubit

A weather application built while mastering **Flutter & Dart**. Beyond just displaying temperature, this project is a deep dive into clean architecture, state management with **Bloc/Cubit**, and handling real-world API data.

---

## 🧠 What's Under the Hood?

### 1. State Management (The Core)

Instead of simple `setState`, this project uses the **Cubit** pattern from the `flutter_bloc` package — creating a clean separation between business logic and UI.

| State | Description |
|---|---|
| `WeatherInitialState` | Default screen shown on launch (welcome/search prompt) |
| `WeatherLoadedState` | Triggered when data arrives, carries `WeatherModel` to the UI |
| `WeatherFailureState` | Gracefully handles errors like "City not found" or network issues |

---

### 2. Networking & Data Modeling

**Dio** is used for API requests due to its robust handling of timeouts and status codes.

- **Service Layer** — `WeatherService` fetches data from [WeatherAPI.com](https://www.weatherapi.com/)
- **Data Model** — `WeatherModel` uses a `fromJson` factory constructor to map complex JSON into clean Dart objects

---

### 3. Custom UI & Polish

- **Dynamic Theming** — App theme and backgrounds shift based on weather condition (e.g., Clear ☀️ vs. Rain 🌧️)
- **Refined Inputs** — `SearchView` uses a custom `InputDecoration` with `focusBorder` and `enabledBorder` for a premium feel
- **BlocBuilder** — `HomeView` rebuilds *only* when weather state actually changes, keeping the UI efficient

---

## 🛠️ Tech Stack

| Layer | Technology |
|---|---|
| Framework | Flutter |
| State Management | Bloc / Cubit |
| API Client | Dio |
| Data Source | WeatherAPI (Forecast v1) |

---

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/your-username/weather_app.git
cd weather_app
```

### 2. Install dependencies

```bash
flutter pub get
```

### 3. Add your API Key

Get a free key from [WeatherAPI.com](https://www.weatherapi.com/) and update the `apiKey` variable in your service file:

```dart
const String apiKey = 'YOUR_API_KEY_HERE';
```

> ⚠️ **Never push your real API key to GitHub.** Use environment variables or a `.env` file and add it to `.gitignore`.

### 4. Run the app

```bash
flutter run
```

---
