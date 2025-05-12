CC = gcc
CFLAGS = -Wall -Wextra -O2 -Iinclude -Isrc
SRC_DIR = src
OBJ_DIR = build
LIB_NAME = libmyarray.a

SRCS := $(shell find $(SRC_DIR) -name "*.c")
OBJS := $(patsubst $(SRC_DIR)/%.c, $(OBJ_DIR)/%.o, $(SRCS))

all: $(LIB_NAME)

$(LIB_NAME): $(OBJS)
	@ar rcs $@ $^
	@echo "Created $@"

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(OBJ_DIR) $(LIB_NAME)

.PHONY: all clean
