{
    description = "NixOSfrom scratch with NVIDIA";
    inputs = {
        nixpkgs.url = "nixpkgs/nixos-25.05";
        home-manager = {
            url = "github:nix-community/home-manager/release-25.05";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };

    outputs =
    {
        nixpkgs,
        home-manager,
        ...
    }:
    {
        nixosConfigurations = {
            thinkpad = nixpkgs.lib.nixosSystem {
                system = "x86_64-linux";
                modules = [
                    ./hosts/thinkpad/configuration.nix
                    home-manager.nixosModules.home-manager
                    {
                        home-manager = {
                            useGlobalPkgs = true;
                            useUserPackages = true;
                            users.renas = import ./modules/home-manager/base.nix;
                            backupFileExtension = "backup";
                        };
                    }
                ];
            };
            desktop = nixpkgs.lib.nixosSystem {
                system = "x86_64-linux";
                modules = [
                    ./hosts/desktop/configuration.nix
                    home-manager.nixosModules.home-manager
                    {
                        home-manager = {
                            useGlobalPkgs = true;
                            useUserPackages = true;
                            users.renas = import ./modules/home-manager/base.nix;
                            backupFileExtension = "backup";
                        };
                    }
                ];
            };
        };
    };
}
