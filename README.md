# Dynamic Wallpaper

This repository is a set of scripts and tools designed to automatically get and set daily Bing background images as wallpapers on macOS-based computers. The repository includes scripts that automatically download the Bing Image of the Day and set it as wallpaper, as well as tools for scheduling tasks and customizing scripts settings. In addition, the repository also contains detailed documentation to help users configure and use the scripts effectively. Overall, the goal of the repository is to provide an easy-to-use and automated solution for those who want to enjoy Bing's stunning images as their wallpapers on macOS.

## Installation

- Clone the repository

```bash
git clone https://github.com/rdomenzain/dynamic-wallpaper.git
```

- Add execute permissions to the scripts

```bash
chmod +x task.sh
```

- Give Full Disk Access to cron

  1. Go to `System Preferences` > `Privacy & Security` > `Full Disk Access`
  2. Click on the `(+)` icon to add an item to the list
  3. Press `command+shift+G`, type `/usr/sbin/cron` and click `Go`
  4. Select the `cron` file and click `Open`

- Execute install.sh

Arguments:

Use `-n` to enable notifications

```bash
# With notifications
$ sh ./install.sh -n

# Without notifications
$ sh ./install.sh
```

### Change schedule

Currently, the script is set to change the wallpaper every hour. To change this, edit the file `install.sh` and change the value of `* */1 * * *`.

Please refer to [crontab.guru](https://crontab.guru/) for more information.

### Check crontab

To check if the crontab was installed correctly, execute the following command:

```bash
$ crontab -l
```

Expected output:

```bash
* */1 * * * /Users/YOURUSER/Documents/dynamic-wallpaper/task.sh -n >> /dev/null 2>&1
```


## Uninstall

- Execute uninstall.sh

```bash
$ sh ./uninstall.sh
```

## License

See [LICENSE](LICENSE) for more information.
