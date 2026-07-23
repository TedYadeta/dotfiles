{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
    buildInputs = with pkgs; [
        busybox # This will supplement most of the utilities
        # adduser - Supplied by busybox
        apt 
        base-files
        base-passwd
        bash
        bsdextrautils
        bsdutils
        ca-certificates
        coreutils
        # cpio - Supplied by busybox
        cron-daemon-common
        cron
        dash
        dbus-bin
        dbus-daemon
        dbus-session-bus-common
        dbus-system-bus-common
        dbus
        # debconf-i18n
        # debconf
        # debian-archive-keyring
        # debianutils
        # dhcpcd-base
        diffutils
        dmidecode
        # dpkg
        e2fsprogs
        fdisk
        findutils
        gcc-14-base
        grep
        groff-base
        gzip
        hostname
        ifupdown
        init-system-helpers
        init
        iproute2
        iputils-ping
        kmod
        less
        libacl1
        # ...
        linux-sysctl-defaults
        locales
        login.defs
        login
        logrotate
        logsave
        man-db
        mawk
        mount
        nano
        ncurses-base
        ncurses-bin
        netbase
        nftables
        openssl-provider-legacy
        openssl
        passwd
        perl-base
        procps
        readline-common
        sed
        sensible-utils
        sqv
        sudo
        # systemd-sysv
        systemd
        sysvinit-utils
        tar
        tzdata
        udev
        util-linux
        vim-common
        vim-tiny
        zlib1g
        
    ];
}
