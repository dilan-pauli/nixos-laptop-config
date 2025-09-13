{ config, lib, ... }:

{
    # Intel integrated graphics (Intel UHD Graphics 620)
    services.xserver.videoDrivers = [ "intel" ];

    # Ensure the i915 kernel module is loaded early
    boot.kernelModules = lib.mkDefault [ "i915" ];

    # Enable modesetting/OpenGL support for integrated Intel GPU
    hardware.opengl.enable = true;
    hardware.opengl.driSupport = true;
    hardware.opengl.driSupport32Bit = false;

    # For Wayland, the modesetting driver is used automatically.
    # If you need specific VA-API or media drivers, add them to
    # environment.systemPackages in your configuration.nix or the
    # appropriate module using pkgs (e.g. intel-media-driver, libva-utils).
}