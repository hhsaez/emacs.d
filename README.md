# Instalation
Clone this repository into your Emacs config directory (or create one if none exists).

## Windows
The first time, you need to Emacs as Administrator in order to create the required symliks.

# ORG-ROAM
My Emacs configuration will attempt to use org-roam. Check out the [Intallation Guide](https://www.orgroam.com/manual.html#Installation) to understand how to setup all requirements in the different platforms.

## Windows
`org-mode` expects a directory called `~/.org`, so make sure it exists and/or a symlink is setup correctly.

On Windows, it is better to leave the default directory for .org-roam (`~/.org-roam`) as is, and use a symlink to point it to the expected directory

# Troubleshooting
This configuration will store user-defined settings in a separated file (`custom.el`). If you're having troubles when updating the configuration files and variable values are not set correctly, remove the custom.el file and try again.
