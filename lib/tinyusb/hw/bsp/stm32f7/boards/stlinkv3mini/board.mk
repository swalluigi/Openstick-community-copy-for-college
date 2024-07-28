MCU_VARIANT = stm32f723xx

# Only OTG-HS has a connector on this board
PORT ?= 1
SPEED ?= high

CFLAGS += \
  -DSTM32F723xx \
  -DHSE_VALUE=25000000 \

# Linker
LD_FILE_GCC = $(BOARD_PATH)/STM32F723xE_FLASH.ld

# flash target using on-board stlink
flash: flash-stlink
