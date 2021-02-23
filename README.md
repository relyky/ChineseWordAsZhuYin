# ChineseWordAsZhuYin
中文字轉注音資料庫

# 開發環境
SQL Server 2017

## 使用範例
print dbo.CastWordAsPinYin('我怎麼這麼聰明')
print dbo.CastWordAsZhuYin('我怎麼這麼聰明')
>>>>>>
ㄨㄛㄗㄣㄇㄛㄓㄜㄇㄛㄘㄨㄥㄇㄧㄥ
ㄨㄛˇㄗㄣˇㄇㄛˊㄓㄜˋㄇㄛˊㄘㄨㄥㄇㄧㄥˊ

# 參考資料
*[教育部國語辭典公眾授權網](https://language.moe.gov.tw/001/Upload/Files/site_content/M0001/respub/dict_concised_download.html)

## 想到再參考
*[中文到注音的轉換](https://www.chineseconverter.com/zh-tw/convert/zhuyin)
*[中文轉注音](https://github.com/Tocknicsu/bopomofo)
