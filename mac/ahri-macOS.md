## Ahris VPN
### 1 Macos
#### 1.1 settings on local
- 1) download and unzip client
```
unzip ahri_0.9.3_macos.zip
```
- 2) change dir
```
cd ahri_0.9.3_darwin_amd64/client/
```

- 3) modify server ip in 'start.sh' if needed; modify 'ahri.hosts' if you want to add other webs

#### 1.2 start VPN
- 4) start local service and check the log
```
  sh start.sh
  tail a.log
```
- 5) start macOS Proxy service
```
networksetup -setsocksfirewallproxy Wi-Fi 127.0.0.1 23456 && networksetup -setsocksfirewallproxystate Wi-Fi on
```

#### 1.3 stop VPN
- 6) stop local service
```
sh stop.sh
```
- 7) stop macOS Proxy service
```
networksetup -setsocksfirewallproxy Wi-Fi '' '' && networksetup -setsocksfirewallproxystate Wi-Fi off
```
