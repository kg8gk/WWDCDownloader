# WWDCDownloader

搭配iWangKe提供的[下载脚本][0]使用，避免session视频的重复下载。

## Usage

	curl https://developer.apple.com/videos/wwdc/2014/ | grep -ioI 'http.*._hd_.*dl=1">HD' | sed -e 's/\?dl=1">HD//g' | xargs ruby downloader.rb | xargs -n1 axel -a -n 8

## References

* **[iWangKe的WWDC Sessions下载脚本]**：http://www.iwangke.me/2014/06/07/wwdc-2014-download-script/

[0]:(http://www.iwangke.me/2014/06/07/wwdc-2014-download-script/) "下载脚本"