return {
    commands = {
        screensaver = "i3lock -u -c 000000",
        volumeUp = "amixer -D pulse sset Master 10%+",
        volumeDown = "amixer -D pulse sset Master 10%-",
        volumeMute = "amixer set Master toggle",
        screenshot = "shutter -s -e -o=\"~/Pictures/Screenshot `date +\"%Y-%m-%d %H:%M\"`.png\""
    },
    menu = {
        {
            "tools",
            {
                { "disk management", "gnome-disks" },
                { "disks space", "baobab" },
                { "screen management", "arandr" },
                { "themes", "lxappearance" },
                { "sound", "alsamixergui" },
                { "restart", awesome.restart },
                { "quit", awesome.quit }
            }
        },
        {
            "Debian", debian.menu.Debian_menu.Debian
        }
    },
    keyboard_layouts = {
        { "us", "", "US" },
        { "lt", "", "LT" }
    },
    toolbar = {
        position = "bottom",
        ontop = false,
        widgets = {
            "widgets.separator",
            "widgets.kblayout",
            "widgets.separator",
            "widgets.battery",
            "widgets.separator",
            "widgets.volume"
        }
    },
    popup_bar = {
        width = 200,
        position = "left",
        tasklist = {
            item_height = 50
        },
        widgets = {
            "widgets.clock_big",
            "widgets.calendar"
        }
    },
    terminal = "x-terminal-emulator",
    modkey = "Mod4",
}
