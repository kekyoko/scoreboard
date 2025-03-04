# README for Scoreboard System

## Description

This scoreboard system is designed to provide an organized display of players currently online, their ranks, and additional information. It allows easy access to player profiles and administrative functions, enhancing the gaming experience.

## Installation

1. Copy the scoreboard files into your addons.

## Features

- **Player Display**: Shows all online players with their names, ranks, ping, and additional statistics.
- **Administrative Tools**: Allows staff members to perform actions such as teleporting players, copying Steam IDs, and viewing player profiles.
- **Responsive Design**: The scoreboard is designed to fit various screen resolutions seamlessly.

## Key Components

### Materials

The scoreboard uses various materials for icons and branding, including:

- Player rank icons
- Ping status indicators
- Social media icons (Discord, Steam, etc.)

### Functions

- **ToggleScoreboard**: Opens and closes the scoreboard.
- **createPlayerPanel**: Creates a panel for each player displaying their information.
- **createOptions**: Generates context menu options for player interactions.

### Hooks

The system overrides the default scoreboard hooks to integrate the custom scoreboard:

- `ScoreboardShow`: Displays the scoreboard when activated.
- `ScoreboardHide`: Handles scoreboard hiding.


## Configuration

You can customize various elements of the scoreboard in the code, such as:

- The icons used for player ranks and statuses.
- The layout and design of the scoreboard.
- Administrative actions available in the context menu.

## License

This scoreboard system is distributed under the MIT License. You are free to use, modify, and distribute it, provided that attribution is given to the original author.
