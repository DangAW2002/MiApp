# JDK 17 Setup Guide

## 1. Download JDK 17
1. Visit [Eclipse Temurin](https://adoptium.net/temurin/releases/?version=17)
2. Download JDK 17 for your operating system:
   - For Windows: Choose `Windows x64 JDK`
   - For macOS: Choose `macOS x64 JDK`
   - For Linux: Choose `Linux x64 JDK`

## 2. Install JDK 17
### Windows
1. Run the downloaded installer (e.g., `temurin-17.0.9+9_windows-x64.msi`)
2. Follow the installation wizard
3. Default installation path: `C:\Program Files\Eclipse Adoptium\jdk-17.X.X.X-hotspot`
4. Check "Add to PATH" during installation

### Set JAVA_HOME (Windows)
1. Open System Properties (Win + R, type `sysdm.cpl`)
2. Click "Environment Variables"
3. Under "System Variables", click "New"
4. Add:
   - Variable name: `JAVA_HOME`
   - Variable value: `C:\Program Files\Eclipse Adoptium\jdk-17.0.14.7-hotspot`

## 3. Verify Installation
Open Command Prompt/Terminal and run:
```bash
java -version
```

Expected output:
```
openjdk version "17.0.x" 
OpenJDK Runtime Environment Temurin-17.0.x
OpenJDK 64-Bit Server VM Temurin-17.0.x
```

## 4. Update Flutter Project
1. Update `gradle.properties`:
```properties
org.gradle.java.home=C:\\Program Files\\Eclipse Adoptium\\jdk-17.0.14.7-hotspot
```

2. Update `app/build.gradle.kts`:
```kotlin
android {
    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }
    kotlinOptions {
        jvmTarget = "17"
    }
}
```

## 5. Clean and Rebuild
Run these commands in your Flutter project:
```bash
flutter clean
flutter pub get
flutter run
```

## Troubleshooting
- If you get JDK version errors, ensure JAVA_HOME points to JDK 17
- If Android Studio doesn't recognize JDK, set it manually in:
  - File > Settings > Build, Execution, Deployment > Build Tools > Gradle > Gradle JDK
