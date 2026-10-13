# My C Array 📊

![C Array](https://img.shields.io/badge/C%20Array-Dynamic%20Array%20Implementation-brightgreen)  
[![Releases](https://img.shields.io/badge/Releases-v1.0.0-blue)](https://github.com/mikiyadd/my-c-array/releases)

Welcome to the **My C Array** repository! This project provides a dynamic array implementation in C, organized in a modular, folder-based structure. This README will guide you through the features, installation, usage, and more.

## Table of Contents

1. [Introduction](#introduction)
2. [Features](#features)
3. [Installation](#installation)
4. [Usage](#usage)
5. [Structure](#structure)
6. [Examples](#examples)
7. [Contributing](#contributing)
8. [License](#license)
9. [Contact](#contact)

## Introduction

Dynamic arrays are a powerful data structure that can grow or shrink in size as needed. This implementation provides an easy-to-use interface for managing arrays in C. With a focus on modular design, you can easily integrate this into your projects.

For the latest releases, visit [Releases](https://github.com/mikiyadd/my-c-array/releases). Download the latest version and execute it to get started.

## Features

- **Dynamic Resizing**: Automatically adjust the size of the array.
- **Modular Design**: Organized into folders for easy navigation.
- **Easy Integration**: Simple API for adding and removing elements.
- **Memory Management**: Handles memory allocation and deallocation efficiently.
- **Cross-Platform**: Works with both GCC and Clang compilers.

## Installation

To install the My C Array library, follow these steps:

1. Clone the repository:
   ```bash
   git clone https://github.com/mikiyadd/my-c-array.git
   ```

2. Navigate to the project directory:
   ```bash
   cd my-c-array
   ```

3. Compile the code:
   ```bash
   gcc -o my_c_array src/*.c
   ```

4. Run the program:
   ```bash
   ./my_c_array
   ```

For the latest releases, visit [Releases](https://github.com/mikiyadd/my-c-array/releases). Download the latest version and execute it to get started.

## Usage

Using the dynamic array is straightforward. Here’s a simple example:

1. Include the header file:
   ```c
   #include "dynamic_array.h"
   ```

2. Create a dynamic array:
   ```c
   DynamicArray *array = create_dynamic_array();
   ```

3. Add elements:
   ```c
   add_element(array, 10);
   add_element(array, 20);
   ```

4. Access elements:
   ```c
   int value = get_element(array, 0); // value will be 10
   ```

5. Clean up:
   ```c
   free_dynamic_array(array);
   ```

## Structure

The repository follows a modular structure for easy navigation:

```
my-c-array/
├── src/
│   ├── dynamic_array.c
│   └── dynamic_array.h
├── examples/
│   └── example.c
└── tests/
    └── test_dynamic_array.c
```

- **src/**: Contains the source code for the dynamic array.
- **examples/**: Provides example usage of the library.
- **tests/**: Includes test cases to ensure functionality.

## Examples

Here are a few examples of how to use the dynamic array:

### Example 1: Basic Operations

```c
#include "dynamic_array.h"

int main() {
    DynamicArray *array = create_dynamic_array();

    add_element(array, 1);
    add_element(array, 2);
    add_element(array, 3);

    for (int i = 0; i < array->size; i++) {
        printf("%d\n", get_element(array, i));
    }

    free_dynamic_array(array);
    return 0;
}
```

### Example 2: Resizing the Array

```c
#include "dynamic_array.h"

int main() {
    DynamicArray *array = create_dynamic_array();

    for (int i = 0; i < 100; i++) {
        add_element(array, i);
    }

    printf("Size after adding elements: %d\n", array->size);

    free_dynamic_array(array);
    return 0;
}
```

## Contributing

Contributions are welcome! If you want to improve the library or add features, follow these steps:

1. Fork the repository.
2. Create a new branch:
   ```bash
   git checkout -b feature/your-feature-name
   ```

3. Make your changes and commit them:
   ```bash
   git commit -m "Add your message here"
   ```

4. Push to your branch:
   ```bash
   git push origin feature/your-feature-name
   ```

5. Create a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Contact

For any questions or feedback, feel free to reach out:

- **Email**: your_email@example.com
- **GitHub**: [mikiyadd](https://github.com/mikiyadd)

Thank you for checking out **My C Array**! We hope you find it useful in your projects.