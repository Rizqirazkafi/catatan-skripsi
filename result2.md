# NixOS1
## Cache Built
__PORT 22__
nix-uefi -> nix-target-4 192.168.100.25

|real | user | sys|
|-----|------|----|
1m40.721s | 0m3.563s | 0m6.304s |
1m39.842s | 0m3.500s | 0m6.616s |
1m40.714s | 0m3.463s | 0m6.367s |

nix-uefi -> nix-target-5 192.168.100.26

|real | user | sys|
|-----|------|----|
1m45.303s | 0m3.544s | 0m6.513s |
1m43.955s | 0m3.476s | 0m6.326s |
1m43.938s | 0m3.523s | 0m6.382s |

## No Cache

nix-uefi -> nix-target-4 192.168.100.25
|real | user | sys|
|-----|------|----|
3m38.709s | 0m12.379s | 0m11.836s |
3m34.648s | 0m12.282s | 0m11.082s |
3m39.477s | 0m12.199s | 0m11.162s |

nix-uefi -> nix-target-5 192.168.100.26
|real | user | sys|
|-----|------|----|
3m31.792s | 0m12.334s | 0m11.336s |
3m33.855s | 0m12.200s | 0m11.512s |
4m45.959s | 0m12.659s | 0m11.563s |
3m35.859s | 0m12.278s | 0m11.968s |

## NixOS 2
__PORT 9005__
nix-uefi -> nix-target-4 192.168.100.25
|real | user | sys|
|-----|------|----|
0m5.128s | 0m0.210s |0m0.086s|
0m4.186s | 0m0.229s | 0m0.073s |
0m2.774s | 0m0.228s | 0m0.076s |

nix-uefi -> nix-target-5 192.168.100.26
|real | user | sys|
|-----|------|----|
0m4.870s | 0m0.222s | 0m0.083s |
0m4.222s| 0m0.228s | 0m0.071s |
0m2.765s | 0m0.234s | 0m0.072s |

## NixOS 3
nix-uefi -> nix-target-4 192.168.100.25
|real | user | sys|
|-----|------|----|
0m50.808s | 0m6.168s | 0m2.358s |
0m3.348s | 0m0.230s | 0m0.074s |
0m2.775s | 0m0.230s | 0m0.067s |

nix-uefi -> nix-target-5 192.168.100.26
|real | user | sys|
|-----|------|----|
0m29.654s | 0m5.908s | 0m1.833s |
0m2.993s | 0m0.213s | 0m0.091s|
0m2.700s | 0m0.222s | 0m0.073s |

## NixOS 4 
nix-uefi -> nix-target-4 192.168.100.25
|real | user | sys|
|-----|------|----|
0m3.007s| 0m0.219s | 0m0.078s|
0m2.918s| 0m0.219s | 0m0.085s |
0m3.190s | 0m0.218s | 0m0.088s |
