# Flutter MVVM Clean Architecture

As a Flutter developer you must know this Architecture.

Project Mapping

lib/
├── app.dart                   # Main app widget
├── main.dart                  # Entry point of the application
├── config/
│   ├── router.dart            # Route management
│   └── dio_interceptor.dart  # Dio interceptors for logging or auth
├── core/
│   ├── constants/             # App-wide constants (e.g., strings, colors)
│   └── utils/                 # Utility functions/helpers
├── data/
│   ├── datasources/
│   │   └── post_remote_datasource.dart   # Handles API calls for posts
│   ├── models/
│   │   └── post_model.dart               # Data models representing API response
│   └── repositories/
│       └── post_repository_impl.dart    # Implementation of repository interface
├── domain/
│   ├── entities/
│   │   └── post.dart                    # Business logic model (Entity)
│   ├── repositories/
│   │   └── post_repository.dart        # Abstract repository interface
│   └── usecases/
│       └── get_posts.dart              # Use case for fetching posts
├── presentation/
│   ├── blocs/
│   │   └── post/
│   │       ├── post_bloc.dart          # Bloc for handling post logic
│   │       ├── post_event.dart         # Events for PostBloc
│   │       └── post_state.dart         # States for PostBloc
│   ├── views/
│   │   └── post_page.dart              # UI for displaying posts
│   └── widgets/                        # Reusable widgets (empty for now)
├── di/
│   └── service_locator.dart            # Dependency injection setup using GetIt
└── test/
└── presentation/
└── blocs/
└── post_bloc_test.dart     # Unit tests for PostBloc
