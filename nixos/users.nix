{ pkgs, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.dpauli = {
    isNormalUser = true;
    description = "dilan";
    extraGroups = [ "networkmanager" "input" "wheel" "video" "audio" "tss" ];
    shell = pkgs.fish;
    packages = with pkgs; [
      youtube-music
      discord
      tdesktop
      vscode
      brave
    ];
  };

  # Change runtime directory size
  services.logind.settings.Login = {
    RuntimeDirectorySize="8G";
  };
}
