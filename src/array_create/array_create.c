#include <array_create/array_create.h>

array_t* array_create(array_free_func_t freer)
{
    const size_t INITIAL_CAPACITY = 4;
    array_t* array = malloc(sizeof(array_t));
    if (array == NULL) {
        printf("Error: memory allocation!");
        exit(1);
    }
    array->capacity = INITIAL_CAPACITY;
    array->size = 0;
    array->freer = freer;
    array->items = malloc(sizeof(void*) * array->capacity);
    if (!array->items) {
        free(array);
        return NULL;
    }
    return array;
}
