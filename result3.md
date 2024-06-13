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

## Instalasi go

192.168.100.25
|real | user | sys|
|-----|------|----|
0m39.727s | 0m7.400s | 0m2.589s
0m38.222s | 0m7.297s | 0m2.637s
0m40.365s | 0m7.118s | 0m2.905s

192.168.100.26
|real | user | sys|
|-----|------|----|
0m39.300s | 0m7.285s | 0m2.546s
0m39.190s | 0m7.257s | 0m2.687s
0m39.117s | 0m7.305s | 0m2.556s

## Install go cache
192.168.100.25
|real | user | sys|
|-----|------|----|
0m14.169s | 0m0.476s | 0m0.523s
0m13.795s | 0m0.505s | 0m0.451s
0m14.796s | 0m0.485s | 0m0.464s

192.168.100.26
|real | user | sys|
|-----|------|----|
0m11.527s | 0m0.484s | 0m0.470s
0m14.384s | 0m0.492s | 0m0.454s
0m13.683s | 0m0.481s | 0m0.475s

## Uninstall go

192.168.100.26
|real | user | sys|
|-----|------|----|
0m3.046s | 0m0.241s | 0m0.068s
0m2.913s | 0m0.233s | 0m0.082s
0m2.819s | 0m0.229s | 0m0.082s

192.168.100.25 
|real | user | sys|
|-----|------|----|
0m3.299s | 0m0.236s | 0m0.072s
0m3.088s | 0m0.231s | 0m0.080s
0m2.886s | 0m0.224s | 0m0.092s

# Ansible Single 
## Pasca Install
192.168.100.27
|real | user | sys|
|-----|------|----|
2m5.295s | 0m7.074s | 0m2.062s
1m54.364s | 0m6.795s | 0m1.970s
2m35.291s | 0m7.698s | 0m2.109s

192.168.100.28
|real | user | sys|
|-----|------|----|
2m27.849s | 0m7.529s | 0m2.185s
1m56.198s | 0m6.801s | 0m2.105s
2m4.848s | 0m6.991s | 0m2.082s

## Rerun pasca install
192.168.100.27
|real | user | sys|
|-----|------|----|
0m16.025s | 0m4.309s | 0m1.108s
0m15.725s | 0m4.270s | 0m1.122s
0m15.583s | 0m4.270s | 0m1.096s

192.168.100.28
|real | user | sys|
|-----|------|----|
0m15.709s | 0m4.323s | 0m1.083s
0m15.445s | 0m4.272s | 0m1.089s
0m15.491s | 0m4.253s | 0m1.086s

## Go install
192.168.100.27
|real | user | sys|
|-----|------|----|
0m34.498s | 0m4.762s | 0m1.237s
0m26.016s | 0m4.552s | 0m1.165s
0m26.752s | 0m4.584s | 0m1.180s

192.168.100.28
|real | user | sys|
|-----|------|----|
0m26.306s | 0m4.540s | 0m1.149s
0m26.564s | 0m4.534s | 0m1.213s
0m25.830s | 0m4.564s | 0m1.161s

## Uninstall Go
192.168.100.27
|real | user | sys|
|-----|------|----|
0m18.857s | 0m4.435s | 0m1.113s
0m19.608s | 0m4.435s | 0m1.145s
0m18.670s | 0m4.413s | 0m1.162s

192.168.100.28
|real | user | sys|
|-----|------|----|
0m18.791s | 0m4.336s | 0m1.113s
0m18.861s | 0m4.348s | 0m1.133s
0m18.893s | 0m4.417s | 0m1.090s

# Ansible multi target

## Pasca Install
|real | user | sys|
|-----|------|----|
2m32.026s | 0m10.997s | 0m3.703s
3m19.488s | 0m12.124s | 0m3.995s
4m23.604s | 0m13.486s | 0m4.481s

## Rerun
|real | user | sys|
|-----|------|----|
0m17.521s | 0m6.973s | 0m2.093s
0m17.259s | 0m6.898s | 0m2.137s
0m17.250s | 0m6.837s | 0m2.196s

## Install Go
|real | user | sys|
|-----|------|----|
0m29.149s | 0m7.147s | 0m2.230s
0m33.052s | 0m7.427s | 0m2.308s
0m33.041s | 0m7.393s | 0m2.407s

## un-Install Go
|real | user | sys|
|-----|------|----|
0m20.943s | 0m6.971s | 0m2.246s
0m22.876s | 0m7.190s | 0m2.225s
0m21.062s | 0m7.023s | 0m2.289s
