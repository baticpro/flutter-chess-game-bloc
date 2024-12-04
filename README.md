# Flutter chess game (Clean architecture)

Flutter chess game fully written on dart. In dependencies only [flutter_bloc](https://pub.dev/packages/flutter_bloc) library.

![chess](https://user-images.githubusercontent.com/19287188/172387937-5b248aad-498c-4f8a-a1af-05abdc04499a.gif)

## Features

I work with this repo only when I've a free time. But I don't have enough )))

My main Idea is:

- Separate domain and presentation ✅
  - Core: contains base classes independent of chess game
  - Domain: contains all business logic (entities and use-cases)
  - Presentation: contains all UI and state management logic
- Create logic that calculates available way for figure ✅
- Add "winning" logic | <b>in progress</b> 👨‍💻|
  - Сheckmate logic
- Players take turns moving figures ✅
- Add AI for playing with player | <b>in hoping</b> 🤖|
