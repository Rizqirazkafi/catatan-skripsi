# Hasil pengujian

Pengujian dilakukan di Proxmox 7.4-18 dengan koneksi internet 1Gbps baik 
link local maupun outbound.

## NixOS
### NixOS 1
Skenario pertama yaitu pasca install dengan sistem kosong

18 Mei 2024

Single target (server -> server) nix-target-2 192.168.30.20
case : cache already built

|real | user | sys|
|-----|------|----|
1m4.684s|0m4.152s|0m5.701s|
0m14.432s|0m0.190s|0m0.092s|

Single target nix-target-3 192.168.30.25 
case : cache already built

|real | user | sys|
|-----|------|----|
1m11.445s | 0m4.325s | 0m6.508
0m4.131s|0m0.189s|0m0.094s|

### NixOS 2
Penerapan ulang setelah pasca install

__192.168.30.20__

|real | user | sys|
|-----|------|----|
0m4.256s | 0m0.192s | 0m0.084s
0m2.562s | 0m0.192s| 0m0.089s
0m2.506s | 0m0.200s | 0m0.078s

__192.168.30.25__

|real | user | sys|
|-----|------|----|
0m3.868s | 0m0.194s | 0m0.087s
0m2.670s | 0m0.194s| 0m0.087s
0m2.658s | 0m0.192s | 0m0.008s


### NixOS 3 
Pengujian dengan penambahan paket GO 1.21.5

__192.168.30.20__
|real | user | sys|
|-----|------|----|
0m52.362s | 0m7.317s | 0m2.315s|
0m2.674s | 0m0.180s| 0m0.092s|
0m2.550s| 0m0.189s | 0m0.090s|

Di run ke 2 & 3 lebih singkat karena GO sudah di build dan nixos-rebuild hanya
perlu memeriksa apakah closure untuk paket GO sudah di copy ke target atau belum.

__192.168.30.25__
|real | user | sys|
|-----|------|----|
0m5.292s | 0m0.530s | 0m0.366s|
0m2.655s | 0m0.202s| 0m0.081s|
0m2.635s| 0m0.203s | 0m0.072s|

### NixOS 4 
Pengujian dengan penghapusan paket GO 1.21.5

__192.168.30.20__
|real | user | sys|
|-----|------|----|
0m2.685s | 0m0.200s | 0m0.081s|
0m2.540s | 0m0.198s| 0m0.081s|
0m2.569s| 0m0.192s | 0m0.084s|
