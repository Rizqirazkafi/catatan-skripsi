# Hasil pengujian

Pengujian dilakukan di Proxmox 7.4-18 dengan koneksi internet 1Gbps baik 
link local maupun outbound.

## NixOS
### NixOS 1
Skenario pertama yaitu pasca install dengan sistem kosong

__!!PORT 22!!__

Single target (server -> server) nix-target-4 192.168.30.20
case : cache already built

|real | user | sys|
|-----|------|----|
0m8.709s |0m0.264s | 0m0.133s|
0m8.314s | 0m0.259s | 0m0.127s|
0m8.215s | 0m0.274s | 0m0.141s |

case : cache not built

|real | user | sys|
|-----|------|----|
1m47.661s | 0m8.998s | 0m4.256s |
1m48.931s | 0m9.025s | 0m4.146s |
1m50.640s | 0m9.050s | 0m4.117s |

Single target nix-target-3 192.168.30.25 
case : cache already built

|real | user | sys|
|-----|------|----|
1m11.445s | 0m4.325s | 0m6.508
0m4.131s|0m0.189s|0m0.094s|

case : cache not built
|real | user | sys|
|-----|------|----|
3m23.585s | 0m11.772s | 0m11.070s
0m4.489s | 0m0.232s | 0m0.081s

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

__192.168.30.20__
|real | user | sys|
|-----|------|----|
0m2.785s | 0m0.225s | 0m0.080s |
0m2.768s | 0m0.217s | 0m0.081s |
0m2.781s | 0m0.234s | 0m0.069s |

## Ansible
### Ansible 1
Skenario pertama pasca install 
__192.168.100.21__
__192.168.100.22__

|real | user | sys|
|-----|------|----|
2m49.679s | 0m10.537s | 0m3.311s|
0m14.290s | 0m6.483s | 0m1.807s |

__192.168.100.21__

|real | user | sys|
|-----|------|----|
3m9.988s | 0m8.048s | 0m2.277s|
2m53.877s | 0m7.674s | 0m2.188s|
2m59.979s | 0m7.759s | 0m2.247s |

__192.168.100.22__

|real | user | sys|
|-----|------|----|
2m18.634s | 0m6.902s | 0m1.933s|
2m21.097s | 0m7.008s | 0m1.865s |
2m22.440s | 0m7.026s | 0m1.854s |

0m13.184s | 0m4.023s | 0m0.943s |
### Ansible 2
|real | user | sys|
|-----|------|----|
0m14.267s | 0m6.513s | 0m1.888s|
0m14.034s| 0m6.260s | 0m1.844s |
0m.13.643s | 0m6.252s | 0m1.867s |

__192.168.100.21__

|real | user | sys|
|-----|------|----|
0m13.249s | 0m4.061s | 0m0.918s |
0m12.399s | 0m3.925s | 0m0.903s |
0m12.730s | 0m3.891s | 0m0.938s |


__192.168.100.22__

|real | user | sys|
|-----|------|----|
0m12.992s | 0m3.911s | 0m0.973s |
0m12.440s | 0m3.889s | 0m0.955s |
0m12.679s | 0m3.888s | 0m0.922s |


### Ansible 3
|real | user | sys|
|-----|------|----|
0m42.991s | 0m6.986s | 0m2.059s |
0m13.847s | 0m6.367s | 0m1.832s |
0m14.220s | 0m6.375s | 0m1.782s |

### Ansible 4
|real | user | sys|
|-----|------|----|
0m16.344s | 0m6.367s | 0m1.894s|
0m13.665s | 0m6.359s | 0m1.746s |
0m14.007s | 0m6.352s | 0m1.850s |
