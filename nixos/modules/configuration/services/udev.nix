{ pkgs, ... }:

{
    services.udev.packages = [
        (pkgs.writeTextFile {
            name = "vial-kb-rule";
            destination = "/lib/udev/rules.d/59-vial.rules";
            text = ''KERNEL=="hidraw*", SUBSYSTEM=="hidraw", ATTRS{serial}=="*vial:f64c2b3c*", MODE="0660", GROUP="users", TAG+="uaccess", TAG+="udev-acl"'';
        })
    ];
}
