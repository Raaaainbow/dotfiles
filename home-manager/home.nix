{ config, pkgs, lib, ... }:

let
    gruvboxplus = import ./gruvbox-plus.nix { inherit pkgs; };
in
{
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "sebastiant";
  home.homeDirectory = "/home/sebastiant";

  programs.git = {
    enable = true;
    userName = "Raaaainbow";
    userEmail = "sebastian@tjr.dk";
  };

  gtk.enable = true;

  gtk.cursorTheme = {
    package = pkgs.bibata-cursors;
    name = "Bibata-Modern-Ice";
  };

/*
  gtk.theme = {
    package = pkgs.gruvbox-gtk-theme;
    name = "oomox-gruvbox-dark";
  };
*/

  gtk.iconTheme = {
    package = pkgs.gruvbox-dark-icons-gtk;
    name = "";
  };

  qt = {
    enable = true;
    platformTheme.name = "gtk";
    style.name = "adwaita-dark";
    style.package = pkgs.adwaita-qt;
  };
  
  programs.neovim = {
    enable = true;
    vimAlias = true;
  };

  programs.bash = {
    enable = true;
    shellAliases = {
    # 
    };
  };

  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "24.11"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = [
    pkgs.gruvbox-dark-icons-gtk
  ];

  # Home Manager is pretty good at managing dotfiles. The primary way to manage
  # plain files is through 'home.file'.
  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
