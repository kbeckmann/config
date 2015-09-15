# Config files for running Arch smoothly on a Lenovo Yoga 3
These are my configs in order to run Arch on a Lenovo Yoga 3. Might be interesting for someone struggling to get it all to run smoothly.



```
|-- .Xresources  - Config xterm
|-- .asoundrc    - Set default sound device to 1 
|-- bin
|   |-- acpi_interrupt_disable
|-- etc
|   |-- X11
|   |   `-- xorg.conf.d
|   |       |-- 20-intel.conf      - Configures the driver, enables v-sync
|   |       `-- 50-synaptics.conf  - Configures the touchpad
|   |-- modprobe.d
|   |   `-- wifi.conf              - Disables ideapad_laptop (seems broken)
|   `-- systemd
|       `-- system
|           |-- acpi_interrupt_disable.service - Disables an annoying acpi interrupt
|           |-- bluetooth-auto-power@.service  - Enables bluetooth after boot and wakeup
|           `-- i3lock.service                 - Launch i3lock before going to sleep


```
