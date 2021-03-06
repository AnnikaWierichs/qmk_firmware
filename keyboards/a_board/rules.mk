MCU = atmega32u4

# Processor frequency.
F_CPU = 16000000

# Target architecture (see library "Board Types" documentation).
ARCH = AVR8

# Input clock frequency.
F_USB = $(F_CPU)

# Interrupt driven control endpoint task(+60)
OPT_DEFS += -DINTERRUPT_CONTROL_ENDPOINT

# Boot Section Size in *bytes*
#   Teensy halfKay   512
#   Teensy++ halfKay 1024
#   Atmel DFU loader 4096
#   LUFA bootloader  4096
#   USBaspLoader     2048
OPT_DEFS += -DBOOTLOADER_SIZE=4096

# Build Options
#   change to "no" to disable the options, or define them in the Makefile in 
#   the appropriate keymap folder that will get included automatically
#
BOOTMAGIC_ENABLE ?= no # Virtual DIP switch configuration(+1000)
MOUSEKEY_ENABLE ?= no  # Mouse keys(+4700)
EXTRAKEY_ENABLE ?= yes # Audio control and System control(+450)
CONSOLE_ENABLE ?= no   # Console for debug(+400)
COMMAND_ENABLE ?= no   # Commands for debug and configuration
NKRO_ENABLE ?= no      # Nkey Rollover - if this doesn't work, see here: https://github.com/tmk/tmk_keyboard/wiki/FAQ#nkro-doesnt-work
BACKLIGHT_ENABLE ?= no # Enable keyboard backlight functionality
MIDI_ENABLE ?= no      # MIDI controls
AUDIO_ENABLE ?= no     # Audio output on port C6
UNICODE_ENABLE ?= yes  # Unicode
BLUETOOTH_ENABLE ?= no # Enable Bluetooth with the Adafruit EZ-Key HID
RGBLIGHT_ENABLE ?= no  # Enable WS2812 RGB underlight.
API_SYSEX_ENABLE = yes

# Do not enable SLEEP_LED_ENABLE. it uses the same timer as BACKLIGHT_ENABLE
SLEEP_LED_ENABLE ?= no    # Breathing sleep LED during USB suspend
