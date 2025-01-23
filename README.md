# Arch Mouse Settings Setup

This repository contains a Bash script (`mouse_setup.sh`) that automates the configuration of mouse and touchpad settings on Arch Linux systems. The script is designed to enhance user experience by disabling mouse acceleration, enabling tapping on touchpads, and inverting scroll direction for all pointer devices.

## Features

- **Disable Mouse Acceleration:** Sets the acceleration speed to 0 for all mice, providing a consistent pointer movement.
- **Enable Tapping on Touchpad:** Activates tapping functionality on touchpad devices for easier navigation.
- **Invert Scroll Direction:** Changes the scroll direction to natural scrolling for all pointer devices.

## Prerequisites

- An Arch Linux-based operating system with `xinput` installed. You can install it using:

  ```bash
  sudo pacman -S xorg-xinput
  ```
  
- Sufficient permissions to modify input device settings (may require sudo).

## Usage

1. Clone the repository:
  ```bash
  git clone https://github.com/yourusername/arch-mouse-settings-setup.git
  cd arch-mouse-settings-setup
  ```

2. Make the script executable:
   ```bash
   chmod +x mouse_setup.sh
   ```

3. Run the script:
   ```bash
   ./mouse_setup.sh
   ```

**Note**: You may need to run the script with sudo if you encounter permission issues.

## Customization

Feel free to modify the script to suit your preferences. You can adjust the acceleration speed, enable or disable tapping, and change the scroll direction settings as needed.

## Contributing

Contributions are welcome! If you have suggestions or improvements, please open an issue or submit a pull request.

## License

This project is licensed under the MIT License. See the LICENSE file for details.
