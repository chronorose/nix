{
  description = "OS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";

    home-manager.url = "github:nix-community/home-manager/release-25.11";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    llm-agents.url = "github:numtide/llm-agents.nix";
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs: {
    # todo: abstract common stuff away
    nixosConfigurations.redo = nixpkgs.lib.nixosSystem {
      modules = [
        ./configuration.nix
        ./hosts/redo/default.nix
        ./hosts/redo/hardware-configuration.nix

        home-manager.nixosModules.home-manager {
          home-manager.useGlobalPkgs = true;	
          home-manager.useUserPackages = true;
          home-manager.extraSpecialArgs = { inherit inputs; };
          home-manager.users.chronorose = import ./home.nix;
        }
      ];
    };

    nixosConfigurations.relapse = nixpkgs.lib.nixosSystem {
      modules = [
        ./configuration.nix
        ./hosts/relapse/default.nix
        ./hosts/relapse/hardware-configuration.nix

        home-manager.nixosModules.home-manager {
          home-manager.useGlobalPkgs = true;	
          home-manager.useUserPackages = true;
          home-manager.extraSpecialArgs = { inherit inputs; };
          home-manager.users.chronorose = import ./home.nix;
          home-manager.backupFileExtension = "backup";
        }
      ];
    };
  };
}
