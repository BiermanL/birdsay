PROGRAM = birdsay

# Compiler and compiler flags
CC = gcc
CFLAGS = -Wall -Wextra

# Directories
SRC_DIR = src
BIN_DIR = bin

# Targets
all: $(BIN_DIR)/$(PROGRAM)

$(BIN_DIR)/$(PROGRAM): $(SRC_DIR)/$(PROGRAM).c | $(BIN_DIR)
	$(CC) $(CFLAGS) $< -o $@

$(BIN_DIR):
	mkdir -p $(BIN_DIR)

install: $(BIN_DIR)/$(PROGRAM)
	cp $(BIN_DIR)/$(PROGRAM) /usr/local/bin
	echo "Installed $(PROGRAM) to /usr/local/bin"
    
uninstall:
	rm -f /usr/local/bin/$(PROGRAM)
	echo "Uninstalled $(PROGRAM) from /usr/local/bin"

clean:
	rm -rf $(BIN_DIR)

.PHONY: all install uninstall clean
