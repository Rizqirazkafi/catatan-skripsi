{
  description = "Flake untuk menulis skripsi dalam format LaTeX";

  inputs = { nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-23.11"; };

  outputs = { self, nixpkgs }@inputs:
    let
      system = "x86_64-linux";
      lib = nixpkgs.lib;
      pkgs = import nixpkgs {
        inherit system;
        config = { allowUnfree = true; };
      };
    in {
      devShells.${system}.default = pkgs.mkShell {
        nativeBuildInputs = with pkgs;
          [
            #Declare ltex-packages
            nodejs
          ];
      };
    };

  packages.x86_64-linux.hello = nixpkgs.legacyPackages.x86_64-linux.hello;

  packages.x86_64-linux.default = self.packages.x86_64-linux.hello;

}
