# Install aria2c static binary

#echo "[setup] Installing...."
#wget https://github.com/CypherpunkSamurai/TARclonef/raw/master/aria2-1.35.0-static-linux-amd64_patch_P3TERX.tar.gz > /dev/null
#tar xf aria2-1.35.0-static-linux-amd64_patch_P3TERX.tar.gz > /dev/null
#rm aria2-1.35.0-static-linux-amd64_patch_P3TERX.tar.gz 
#chmod 755 aria2c

#export MAX_DOWNLOAD_SPEED=0
#tracker_list=$(curl -Ns https://raw.githubusercontent.com/ngosang/trackerslist/master/trackers_all.txt | awk '$1' | tr '\n' ',')
#export MAX_CONCURRENT_DOWNLOADS=7
#./aria2c --enable-rpc --rpc-listen-all=false --rpc-listen-port 6800 --check-certificate=false \
   --max-connection-per-server=10 --rpc-max-request-size=1024M \
   --bt-tracker="[$tracker_list]" --bt-max-peers=0 --seed-time=0.01 --min-split-size=10M \
   --follow-torrent=mem --split=10 \
   --daemon=true --allow-overwrite=true --max-overall-download-limit=$MAX_DOWNLOAD_SPEED \
   --max-overall-upload-limit=1K --max-concurrent-downloads=$MAX_CONCURRENT_DOWNLOADS \
   --peer-id-prefix=-qB4250- --user-agent==qBittorrent/4.2.5
