{ config, pkgs, fetchFromGitHub, ... }: 

{
  programs.home-manager.enable = true;

  home.username = "elliott";
  home.homeDirectory = "/home/elliott";

  home.packages = with pkgs; [
  ];

  home.stateVersion = "24.05";

  programs = {
    tmux = (import ./tmux.nix { inherit pkgs fetchFromGitHub; });
  };
}
