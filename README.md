# my-c-array

Dynamic array implementation in C with a modular, folder-based structure.

## 🔧 Features

- **🧩 Modular Operations:** Efficient functions for array append, prepend, resize, delete, and access.
- **🛠️ Custom Memory Management:** Define custom free functions for array element deallocation.
- **🔓 Expandable:** Easily extendable with additional array-related functions.
- **🌍 Cross-Platform:** Build scripts for both Linux (bash or make) and Windows (batch).
- **📂 Organized Structure:** Each module is in its own directory for easy maintenance.
- **📚 Static Library:** Compiles into libmyarray.a for easy reuse in other projects.
- **⚙️ C Standard:** Written in pure C for maximum compatibility.
- **🚀 Easy to Build:** Simple setup for compiling and integrating into other projects.

## 🗂️ Suggested Directory Layout

```
my-c-array/
├── Makefile
├── build.sh
├── build.bat
├── libmyarray.a  (after build)
├── src/
│   ├── array_append/
│   │   ├── array_append.c
│   │   └── array_append.h
│   └── ...
```

## 🛠️ Build Instructions

### Linux / macOS

```bash
chmod +x build.sh
./build.sh
```

Or using `make`:

```bash
make
```

### Windows

```cmd
build.bat
```

This will compile the source files under `src/`, place the object files in `build/`, and generate a static library `libmyarray.a` or an executable if you add a `main.c`.

## 📦 Features

- Modular directory layout
- Cross-platform build scripts (`.sh` and `.bat`)
- Basic operations like:
  - `array_create`
  - `array_append`
  - `array_delete`
  - `array_get`
  - `array_resize`
  - `array_prepend`
  - `array_size`

## 📄 Example Header

Here’s what the base array type looks like:

```c
#ifndef _ARRAY_TYPE_H_
#define _ARRAY_TYPE_H_

#include <stddef.h>  // for size_t

typedef void (*array_free_func_t)(void*);

typedef struct {
    void** items;              // actual data
    size_t capacity;           // total capacity
    size_t size;               // current number of elements
    array_free_func_t freer;   // custom free function (NULL means no-op)
} array_t;

#endif
```

## 📜 License

MIT License  
© 2025 Max Base
