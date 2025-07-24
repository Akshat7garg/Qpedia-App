# Qpedia

**Qpedia** is an open-source Flutter application designed to provide students with a mobile platform to access educational resources, including question papers and lecture notes, hosted on [qpedia.vercel.app](https://qpedia.vercel.app/). The app features an intuitive UI with animated transitions, dynamic navigation, and seamless PDF viewing, making academic content easily accessible on the go.

---

## Features

- **Animated Landing Screen**: Welcomes users with a pulsing circular animation and a sleek gradient background.
- **University Resource Navigation**: Filter question papers and lecture notes by subject, year, and unit/semester using dynamic dropdown menus.
- **PDF Viewing**: Seamlessly displays networked PDFs from `qpedia.vercel.app` with Syncfusion PDF Viewer, including a "Coming Soon" fallback for unavailable content.
- **Responsive Homepage**: Offers a card-based interface for quick navigation to educational categories like Question Papers and Lecture Notes.

---

## Tech Stack

- **Frontend**: Flutter, Dart
- **Libraries**: 
  - `syncfusion_flutter_pdfviewer` - For rendering networked PDFs
  - `http` - For fetching content from `qpedia.vercel.app`
  - `flutter_svg` - For SVG asset rendering
  - `permission_handler` - For potential file permissions (future use)
  - `path_provider` - For potential file storage (future use)
- **Content Source**: [qpedia.vercel.app](https://qpedia.vercel.app/)

---

## Installation

### Prerequisites
- **Flutter SDK**: Version 3.x.x or later
- **Dart**: Version 2.x.x or later
- **IDE**: VS Code, Android Studio, or similar
- **Device**: Android/iOS emulator or physical device

### Steps
1. **Clone the Repository**:
   ```bash
   git clone https://github.com/yourusername/qpedia.git
   cd qpedia

