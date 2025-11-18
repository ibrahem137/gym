# Copilot Instructions for the `gym` Flutter Project

## Project Overview
- This is a multi-platform Flutter app (Android, iOS, Web, Windows, macOS, Linux) for gym management.
- Main entry point: `lib/main.dart` and `lib/gym_app.dart`.
- App structure is feature-based: see `lib/features/` for modules like `auth`, `home`, `members`, etc.
- Core utilities and shared logic are in `lib/core/` (e.g., routing, theme, networking).

## Architecture & Patterns
- **Routing:** Centralized in `lib/core/routing/app_router.dart` and `routes.dart`. All navigation uses named routes defined in `Routes`.
- **ScreenUtil:** Responsive UI via `flutter_screenutil` (see `ScreenUtilInit` in `gym_app.dart`).
- **Theme:** Colors and styles managed in `lib/core/theme/colors.dart`.
- **Feature Modules:** Each feature (e.g., `auth`, `members`) has its own UI, widgets, and logic under `lib/features/<feature>/`.
- **Widgets:** Shared/reusable widgets are in `lib/core/widgets/`.

## Developer Workflows
- **Build:** Use standard Flutter commands:
  - `flutter pub get` to fetch dependencies
  - `flutter run` to launch the app
  - `flutter build <platform>` for production builds
- **Test:** Run widget tests with `flutter test`. Example test in `test/widget_test.dart`.
- **Debug:** Use Flutter DevTools or IDE debugging tools. No custom debug scripts.

## Conventions & Practices
- **Routing:** Always add new screens to `Routes` and update `AppRouter` for navigation.
- **State Management:** No global state management detected; use local state or patterns per feature.
- **Assets:** Place images in `assets/images/` and reference via `pubspec.yaml`.
- **Responsive Design:** Use `ScreenUtil` for sizing and layout.
- **Naming:** Use descriptive names for screens, widgets, and routes (e.g., `MembersCard`, `HomeScreen`).

## Integration Points
- **External Packages:**
  - `flutter_screenutil` for responsive UI
  - `sidebarx` for sidebar navigation
  - `cupertino_icons` for iOS icons
- **Platform Support:** Android, iOS, Web, Windows, macOS, Linux (see respective folders).

## Key Files & Directories
- `lib/gym_app.dart`: Main app widget
- `lib/core/routing/`: Routing logic
- `lib/features/`: Feature modules
- `assets/`: Static assets
- `pubspec.yaml`: Dependencies and asset registration
- `test/`: Widget tests

## Example: Adding a New Screen
1. Create your screen in `lib/features/<feature>/ui/screens/`.
2. Add a route name in `lib/core/routing/routes.dart`.
3. Update `AppRouter.generateRoute` to handle the new route.
4. Use `Navigator.pushNamed(context, Routes.<yourRoute>)` to navigate.

---
_If any section is unclear or missing important project-specific details, please provide feedback to improve these instructions._
