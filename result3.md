# NixOS
## Pasca Install no-cache
ssh-copy-id root@192.168.100.25
time { nixos-rebuild --flake .#nixos-vm --target-host root@192.168.100.25 switch; }
192.168.100.25 

|real | user | sys|
|-----|------|----|
3m29.511s | 0m12.695s | 0m14.709s
3m27.362s | 0m12.970s | 0m14.277s
3m28.368s | 0m12.887s | 0m14.580s

192.168.100.26
time { nixos-rebuild --flake .#nixos-vm --target-host root@192.168.100.26 switch; }
|real | user | sys|
|-----|------|----|
3m28.804s | 0m12.822s | 0m14.634s
3m27.731s | 0m12.900s | 0m14.437s
3m36.570s | 0m13.163s | 0m14.496s

## Pasca Install cache
ssh-copy-id root@192.168.100.25
time { nixos-rebuild --flake .#nixos-vm --target-host root@192.168.100.25 switch; }
192.168.100.25 

|real | user | sys|
|-----|------|----|
1m4.359s | 0m3.129s | 0m6.261s
1m9.078s | 0m3.287s | 0m7.239s
1m13.626s | 0m3.178s | 0m6.930s


192.168.100.26
time { nixos-rebuild --flake .#nixos-vm --target-host root@192.168.100.26 switch; }
|real | user | sys|
|-----|------|----|
1m12.569s | 0m3.389s | 0m6.435s
1m12.321s | 0m3.414s | 0m6.465s
1m13.510s | 0m3.168s | 0m6.520s

## Penerapan ulang
192.168.100.25
|real | user | sys|
|-----|------|----|
0m6.881s | 0m0.241s | 0m0.088s 
0m3.998s | 0m0.223s | 0m0.088s
0m2.899s | 0m0.227s | 0m0.086s

192.168.100.26
|real | user | sys|
|-----|------|----|
0m7.471s | 0m0.247s | 0m0.089s 
0m4.524s | 0m0.231s | 0m0.078s 
0m2.802s | 0m0.235s | 0m0.079s
