# Stanford CS193p Spring 2020

## [Lecture 1](https://youtu.be/jbtqIBpUG7g)

* Introduction to course structure and curriculum
* Started project **Memorize**
* Familiarized with Xcode
* Basic intro into SwiftUI layout and analogy between Views and Lego bricks


## [Lecture 2](https://youtu.be/4GjXq2Sr55Q)

* Imperative programming *bad*
    * You need a good understand of time, view lifecycle, and understand when each function is called to layout views, etc.
    * In a nutshell is “nightmare to manage”, there’s so many states your brain and keep track until bugs appear
* Declarative programming *good*
    * A reflection of your states and models
    * Your UI is reactive, automatically updates based on your view states
* MVVM
    * Model -> ViewModel -> View
    * Model: UI independent, “the brains of the operation”
    * ViewModel: Interprets **Model** data and simplifies it for the **View**, processes user actions from the **View**
    * View: Uses the **ViewModel** as the source of truth and notifies user actions(intents) by calling functions
* Functions are people, aka types (almost forgot about this 😅)
* Generic types = “I don’t care” types
