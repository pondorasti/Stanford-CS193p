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


## [Lecture 3](https://youtu.be/SIYdYpPXil4)

* Function Signatures support external and internal names
* Property wrappers, `@ObservableObject, @ObservedObject`, can make your UI react to changes
* Protocols (constrains & gains)
   * *Stripped down* version of a class/struct
   * **Protocol Inheritance** is legal
   * Use **Extension** to create a default implementation for **Protocols**
* Extensions
   * Conform to **Protocols** via **Extensions**
   * **Generics** combined with **Extensions** => superpowers
* Layout
   * Views/Modifiers are compiled from outermost to innermost
   
   
## [Lecture 4](https://youtu.be/eHEeWzFP6O4)

* `self` is not necessary in `@escaping` functions from SwiftUI views because views are represented as structs which are values types, therefore they don’t live in the heap.
* Enum
   * Value types
   * Cases can have associated values
   * Switch statements are exhaustive, they need to cover all of the possible states
   * You can create functions and computed properties, only associated values are stored, which makes sense because **Enums** are a discrete type
   * Support for **Protocols**, `CaseIterable` 👀
* Optional
   * **Optional** is just an **Enum** 🤯
   * It either has *some* value or *none*
   * “!” crash operator
   * use `if let` to unwrap the optional value 
   * nil coalescing operator `myOptional ?? defaultValue`
