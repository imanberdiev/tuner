# TuneUp — Тюнер для Гитары и Укулеле 🎸🪕

Хроматический тюнер для Android с поддержкой гитары, укулеле и баса.

## Возможности
- 🎸 **Гитара** — Стандарт, Drop D, Open G, DADGAD, Half Down
- 🪕 **Укулеле** — Стандарт, Low G, Баритон, D строй
- 🎵 **Бас** — Стандарт, 5 струн, Drop D
- Хроматический определитель нот
- Стрелочный метр точности (центы)
- Регулировка эталонного тона A4 (430–450 Hz)
- Индикатор громкости микрофона
- Визуальная индикация "В строе" ✅

---

## Сборка APK в Android Studio

### Шаг 1 — Установка Android Studio
Скачайте с: https://developer.android.com/studio

### Шаг 2 — Открыть проект
1. Запустите Android Studio
2. File → Open → выберите папку `android-project`
3. Дождитесь синхронизации Gradle (~2-5 минут)

### Шаг 3 — Установить SDK
Если появится сообщение об отсутствии SDK:
- Tools → SDK Manager
- Установите Android SDK Platform 34
- Примите лицензии

### Шаг 4 — Собрать APK
```
Build → Build Bundle(s) / APK(s) → Build APK(s)
```
Или в терминале внутри проекта:
```bash
./gradlew assembleDebug
```

APK будет в: `app/build/outputs/apk/debug/app-debug.apk`

### Шаг 5 — Установить на телефон
**Способ 1 — USB:**
1. На телефоне: Настройки → О телефоне → нажмите 7 раз на "Номер сборки"
2. Настройки → Для разработчиков → включите "Отладка по USB"
3. В Android Studio нажмите ▶ (Run)

**Способ 2 — Файлом:**
1. Скопируйте APK на телефон
2. Откройте файловый менеджер → найдите APK
3. Нажмите на файл → Установить
4. Разрешите "Установку из неизвестных источников" если попросит

---

## Структура проекта
```
android-project/
├── app/
│   ├── src/main/
│   │   ├── assets/www/
│   │   │   └── index.html          ← Весь тюнер (HTML/CSS/JS)
│   │   ├── java/com/tuner/app/
│   │   │   └── MainActivity.java   ← Android WebView обёртка
│   │   ├── res/
│   │   │   ├── layout/activity_main.xml
│   │   │   ├── values/strings.xml
│   │   │   └── mipmap-*/           ← Иконки
│   │   └── AndroidManifest.xml
│   └── build.gradle
├── build.gradle
└── settings.gradle
```

## Требования
- Android 5.0+ (API 21+)
- Разрешение на использование микрофона
- Java 8+

---
TuneUp v1.0 | MIT License
