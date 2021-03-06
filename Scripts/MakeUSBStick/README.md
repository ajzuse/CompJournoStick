## How to make bootable USB stick

1. Get a fresh USB stick. It needs to be 8 GB or more and 32 GB or less. ***If you have one you want to re-use, back up everything on it, because this process will wipe it clean!***
1. You'll need a real computer running Fedora 19 plus the packages installed by the 'FedoraWorkstationInstall/install-all.bash' script for the next part. I haven't been able to get this to work from a virtual machine yet. Plug the USB stick into a port. You should see a dialog window offering to open it in the File Manager. Select 'Open with Files'.
1. In a terminal window, type
    ```
    df -h
    ```
You should see something like this:
    ```
    Filesystem      Size  Used Avail Use% Mounted on
    devtmpfs        1.8G     0  1.8G   0% /dev
    tmpfs           1.9G  216K  1.9G   1% /dev/shm
    tmpfs           1.9G  7.8M  1.9G   1% /run
    tmpfs           1.9G     0  1.9G   0% /sys/fs/cgroup
    /dev/sda2       143G   22G  115G  16% /
    tmpfs           1.9G  396K  1.9G   1% /tmp
    /dev/sdb2       226G   34G  181G  16% /data
    /dev/sdc1       7.5G  4.0K  7.5G   1% /run/media/znmeb/606C-2D0F
    ```
On my machine, the USB stick is the one 'Mounted on' '/run/media/znmeb/606C-2D0F'. Yours will probably be different, but the '/run/media' part should be the same. Write down the 'Filesystem' name for that row, in this case, '/dev/sdc1'.
1. Go into the File Manager window that opened when you selected 'Open with Files'. You'll see the USB stick listed under 'Devices' with an 'Eject' button to the right. Press the 'Eject' button.
1. Go back to the terminal window and type 'df -h' again. ***The row for the USB stick should be gone!***
1. Type
    ```
    ./make-usb<TAB>
    ```
The command will be completed.
1. Type '/dev/sdX', where 'X' is the character after 'sd' in the 'Filesystem' name you wrote down above. In my case, the completed command is
    ```
    ./make-usb-stick.bash /dev/sdc
    ```
Now press <ENT>.
1. The script will check the ISO file for errors. You should see something like this:
    ```
    Verifying image...
    /opt/CompJournoStick/CompJournoStick.iso:   b281baff738250dbc92f01189f274b30
    Fragment sums: 4fda78557dde4512d7c5cd13718b2eec9f3961a83eb73832bab5f36fabf2
    Fragment count: 20
    Press [Esc] to abort check.
    Checking: 100.0%
    
    The media check is complete, the result is: PASS.
    
    It is OK to use this media.
    WARNING: THIS WILL DESTROY ANY DATA ON /dev/sdc!!!
    Press Enter to continue or ctrl-c to abort
    ```
***Make sure that the device name listed is actually the USB stick! If it isn't you will destroy the data on some other hard drive!*** Then press 'Enter" to continue. This will also take some time, depending on how fast your USB port and drive are. On my laptop with a USB 3.0 port and a 32 GB USB 3.0 stick, it only takes a few minutes.
