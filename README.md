# Stanford CS193p Spring 2020

# Curriculum 
* [Lecture 1: Course Logistics and Introduction to SwiftUI](#Lecture-1-Course-Logistics-and-Introduction-to-SwiftUI)
* [Lecture 2: MVVM and the Swift Type System]()
* [Lecture 3: Reactive UI Protocols Layout]()
* [Lecture 4: Grid enum Optionals]()

## Lecture 1: Course Logistics and Introduction to SwiftUI

* [**Youtube Video**](https://youtu.be/jbtqIBpUG7g)
* Introduction to course structure and curriculum
* Started project **Memorize**
* Familiarized with Xcode
* Basic intro into SwiftUI layout and analogy between Views and Lego bricks


## Lecture 2: MVVM and the Swift Type System

* [**Youtube Video**](https://youtu.be/4GjXq2Sr55Q)
* [**Reading Assignment - Intro to Swift**](https://github.com/Pondorasti/Stanford-CS193p/blob/master/Lecture%202%20Resources/Readin%20Assignment%201%20-%20Intro%20to%20Swift.pdf)
* [**Assignment - Memorize**](https://github.com/Pondorasti/Stanford-CS193p/blob/master/Lecture%202%20Resources/Assignment%201%20-%20Memorize.pdf)
* Imperative programming *bad*
    * You need a good understand of time, view lifecycle, and understand when each function is called to layout views, etc.
    * In a nutshell is “nightmare to manage”, there’s so many states your brain and keep track until bugs appear
* Declarative programming *good*
    * A reflection of your states and models
    * Your UI is reactive, automatically updates based on your view states
* MVVM ([Diagram](https://github.com/Pondorasti/Stanford-CS193p/blob/master/Lecture%202%20Resources/MVVM.png))
    * Model -> ViewModel -> View
    * Model: UI independent, “the brains of the operation”
    * ViewModel: Interprets **Model** data and simplifies it for the **View**, processes user actions from the **View**
    * View: Uses the **ViewModel** as the source of truth and notifies user actions(intents) by calling functions
* Functions are people, aka types (almost forgot about this 😅)
* Generic types = “I don’t care” types
* [Struct VS Class Picture](https://github.com/Pondorasti/Stanford-CS193p/blob/master/Lecture%202%20Resources/StructVSClass.png)


## Lecture 3: Reactive UI Protocols Layout

* [**Youtube Video**](https://youtu.be/SIYdYpPXil4)
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
   
   
## Lecture 4: Grid enum Optionals

* [**Youtube Video**](https://youtu.be/eHEeWzFP6O4)
* [**Reading Assignment - Functional Programming**](https://github.com/Pondorasti/Stanford-CS193p/blob/master/Lecture%204%20Resources/Readin%20Assignment%202%20-%20Functional%20Programming.pdf)
* [**Assignment - More Memorize**](https://github.com/Pondorasti/Stanford-CS193p/blob/master/Lecture%204%20Resources/Assignment%202%20-%20More%20Memorize.pdf)
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
