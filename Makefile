SAC2C_EXEC ?=
BUILD_DIR ?= build
TARGETS ?= "seq;seq_checks;mt_pth"
GENERATOR ?= "Unix Makefiles"

.PHONY: build clean

build:
	cmake -B $(BUILD_DIR) -G $(GENERATOR) -DSAC2C_EXEC=$(SAC2C_EXEC) -DTARGETS=$(TARGETS)
	+cmake --build $(BUILD_DIR)

clean:
	$(RM) -r $(BUILD_DIR)
