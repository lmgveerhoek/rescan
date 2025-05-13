# Rescan

Scan your Plex media libraries for missing files and triggers rescans when needed. 
It also provides Discord notification summaries.

## Features

- Scans specified directories for media files
- Checks if files exist in Plex libraries
- Triggers Plex rescans for missing items
- Sends Discord notifications with detailed summaries
- Supports both movie and TV show libraries
- Configurable scan intervals and behavior
- Docker support for easy deployment

## Prerequisites

- Python 3.11 or higher
- Plex Media Server
- Discord webhook URL (for notifications)

## Installation

### Docker (Recommended)

1. Clone the repository:
```bash
git clone https://github.com/Pukabyte/rescan.git
cd rescan
```

2. Copy the example config:
```bash
cp config-example.ini config.ini
```

3. Edit `config.ini` with your settings:
```ini
[plex]
server = http://your-plex-server:32400
token = your_plex_token

[scan]
directories = /path/to/your/media

[notifications]
enabled = true
discord_webhook_url = your_discord_webhook_url
```

4. Run with Docker Compose:
```bash
docker-compose up -d
```

### Manual Installation

1. Clone the repository:
```bash
git clone https://github.com/Pukabyte/rescan.git
cd rescan
```

2. Install dependencies:
```bash
pip install -r requirements.txt
```

3. Copy and configure the config file:
```bash
cp config-example.ini config.ini
```

4. Edit `config.ini` with your settings

5. Run the script:
```bash
python rescan.py
```

## Configuration

### Plex Settings
- `server`: Your Plex server URL (e.g., http://localhost:32400)
- `token`: Your Plex authentication token

### Scan Settings
- `directories`: Comma-separated list of directories to scan
- `scan_interval`: Seconds to wait between Plex rescans
- `run_interval`: Hours between full scans
- `symlink_check`: Enable/disable broken symlink detection

### Notification Settings
- `enabled`: Enable/disable Discord notifications
- `discord_webhook_url`: Your Discord webhook URL

## Discord Notifications

The script sends detailed notifications to Discord including:
- Overview of missing items
- Library-specific statistics
- Broken symlinks (if enabled)
- Errors and warnings

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Acknowledgments

- [PlexAPI](https://github.com/pkkid/python-plexapi) for Plex server interaction
- [Discord.py](https://github.com/Rapptz/discord.py) for Discord webhook support 