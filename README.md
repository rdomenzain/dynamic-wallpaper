# Dynamic Wallpaper

This repository is a set of scripts and tools designed to automatically get and set daily Bing background images as wallpapers on macOS-based computers. The repository includes scripts that automatically download the Bing Image of the Day and set it as wallpaper, as well as tools for scheduling tasks and customizing scripts settings. In addition, the repository also contains detailed documentation to help users configure and use the scripts effectively. Overall, the goal of the repository is to provide an easy-to-use and automated solution for those who want to enjoy Bing's stunning images as their wallpapers on macOS.

## Installation

- Clone the repository

```bash
git clone https://github.com/rdomenzain/dynamic-wallpaper.git
```

- Execute install.sh

```bash
$ cd dynamic-wallpaper
$ sh ./install.sh
```

### Change schedule

Currently, the script is set to change the wallpaper every hour. To change this, edit the file `install.sh` and change the value of `0 * * * *`.

Please refer to [crontab.guru](https://crontab.guru/) for more information.

### Check crontab

To check if the crontab was installed correctly, execute the following command:

```bash
$ crontab -l
```

Expected output:

```bash
# m h  dom mon dow   command
0 * * * * /Users/YOURUSER/Documents/dynamic-wallpaper/wallpaper.sh  > /dev/null 2>&1
```


## Uninstall

- Execute uninstall.sh

```bash
$ cd dynamic-wallpaper
$ sh ./uninstall.sh
```

## License

See [LICENSE](LICENSE) for more information.
