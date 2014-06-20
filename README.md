# WWDCDownloader

* 搭配iWangKe提供的[下载脚本][0]使用，避免session视频的重复下载。

* 字幕文件重命名脚本现已加入WWDCDownloader:点击[qiaoxueshi][1]clone一份session字幕

## Usage

### 下载文件

	curl https://developer.apple.com/videos/wwdc/2014/ | grep -ioI 'http.*._hd_.*dl=1">HD' | sed -e 's/\?dl=1">HD//g' | xargs ruby downloader.rb | xargs -n1 axel -a -n 8

### 重命名脚本

    1. 首先在视频目录下clone一份字幕文件：

        `git clone https://github.com/qiaoxueshi/WWDC_2014_Video_Subtitle`

    2. 接着把字幕挪到跟视频同一个目录下：

        `mv WWDC_2014_Video_Subtitle/*.srt .`

    3. 更改rename_subtitle权限：

        `chmod 744 rename_subtitles.rb`

    4. 执行它：

        ./rename_subtitles.rb

    5. 当然，要直接执行也是OK的：

       ruby rename_subtitles.rb

## References

* **[iWangKe的WWDC Sessions下载脚本]**：http://www.iwangke.me/2014/06/07/wwdc-2014-download-script/
* **[qiaoxueshi的字母repo]**: https://github.com/qiaoxueshi/WWDC_2014_Video_Subtitle
[0]: http://www.iwangke.me/2014/06/07/wwdc-2014-download-script/ "下载脚本"
[1]: https://github.com/qiaoxueshi/WWDC_2014_Video_Subtitle "字幕"