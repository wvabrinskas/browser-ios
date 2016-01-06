/* This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0. If a copy of the MPL was not distributed with this file, You can obtain one at http://mozilla.org/MPL/2.0/. */

let sites500 = ["google.com", "facebook.com", "youtube.com", "yahoo.com", "baidu.com", "wikipedia.org", "live.com", "blogspot.com", "amazon.com", "twitter.com", "qq.com", "taobao.com", "google.co.in", "msn.com", "yahoo.co.jp", "linkedin.com", "sina.com.cn", "wordpress.com", "ebay.com", "google.de", "google.com.hk", "yandex.ru", "google.co.jp", "google.co.uk", "google.fr", "bing.com", "weibo.com", "apple.com", "t.co", "microsoft.com", "163.com", "mail.ru", "paypal.com", "google.com.br", "soso.com", "imdb.com", "google.it", "sohu.com", "tumblr.com", "google.es", "tudou.com", "fc2.com", "google.ru", "bbc.co.uk", "go.com", "livejasmin.com", "vkontakte.ru", "blogger.com", "flickr.com", "craigslist.org", "ask.com", "youku.com", "tmall.com", "googleusercontent.com", "xvideos.com", "babylon.com", "xhamster.com", "ifeng.com", "google.com.mx", "google.ca", "zedo.com", "cnn.com", "espn.go.com", "aol.com", "adobe.com", "amazon.de", "mediafire.com", "about.com", "rakuten.co.jp", "megaupload.com", "conduit.com", "ebay.de", "google.co.id", "alipay.com", "odnoklassniki.ru", "imgur.com", "thepiratebay.org", "ameblo.jp", "pornhub.com", "google.com.tr", "alibaba.com", "cnet.com", "uol.com.br", "amazon.co.uk", "wordpress.org", "godaddy.com", "huffingtonpost.com", "4shared.com", "google.com.au", "360buy.com", "netflix.com", "livedoor.com", "youporn.com", "bp.blogspot.com", "ebay.co.uk", "google.pl", "amazon.co.jp", "chinaz.com", "hao123.com", "nytimes.com", "livejournal.com", "renren.com", "dailymotion.com", "globo.com", "megaclick.com", "douban.com", "google.com.sa", "sparkstudios.com", "stackoverflow.com", "google.nl", "sogou.com", "badoo.com", "cnzz.com", "walmart.com", "reddit.com", "dailymail.co.uk", "vimeo.com", "bankofamerica.com", "secureserver.net", "xnxx.com", "tube8.com", "redtube.com", "google.com.ar", "addthis.com", "filestube.com", "weather.com", "adf.ly", "pengyou.com", "stumbleupon.com", "deviantart.com", "doubleclick.com", "pinterest.com", "goo.ne.jp", "tianya.cn", "mywebsearch.com", "avg.com", "chase.com", "fileserve.com", "google.com.pk", "indiatimes.com", "torrentz.eu", "aweber.com", "google.cn", "pconline.com.cn", "warriorforum.com", "google.co.th", "amazonaws.com", "searchqu.com", "bestbuy.com", "ehow.com", "naver.com", "imageshack.us", "google.com.eg", "foxnews.com", "photobucket.com", "filesonic.com", "skype.com", "myspace.com", "fbcdn.net", "sourceforge.net", "optmd.com", "nicovideo.jp", "search-results.com", "spiegel.de", "taringa.net", "wikimedia.org", "yieldmanager.com", "ganji.com", "wellsfargo.com", "google.co.za", "mozilla.org", "download.com", "etsy.com", "rediff.com", "ups.com", "wikia.com", "orkut.com", "statcounter.com", "comcast.net", "megavideo.com", "secureintl.com", "orkut.com.br", "target.com", "clicksor.com", "blogfa.com", "58.com", "onet.pl", "google.com.my", "espncricinfo.com", "guardian.co.uk", "ucoz.ru", "xunlei.com", "digg.com", "reference.com", "liveinternet.ru", "zol.com.cn", "rambler.ru", "outbrain.com", "bild.de", "yelp.com", "360.cn", "google.co.ve", "56.com", "mashable.com", "answers.com", "ameba.jp", "csdn.net", "allegro.pl", "squidoo.com", "usps.com", "mixi.jp", "terra.com.br", "files.wordpress.com", "free.fr", "adultfriendfinder.com", "rapidshare.com", "people.com.cn", "xinhuanet.com", "w3schools.com", "youjizz.com", "soku.com", "google.be", "google.gr", "orange.fr", "archive.org", "hootsuite.com", "tribalfusion.com", "domaintools.com", "hulu.com", "google.com.co", "twitpic.com", "hatena.ne.jp", "wsj.com", "slideshare.net", "leboncoin.fr", "repubblica.it", "hp.com", "iqiyi.com", "fiverr.com", "telegraph.co.uk", "android.com", "groupon.com", "maktoob.com", "php.net", "web.de", "typepad.com", "hostgator.com", "paipai.com", "cam4.com", "booking.com", "hudong.com", "google.com.ua", "reuters.com", "9gag.com", "kaskus.us", "instagr.am", "samsung.com", "daum.net", "google.com.tw", "isohunt.com", "rutracker.org", "themeforest.net", "google.com.vn", "linkwithin.com", "clickbank.com", "dropbox.com", "google.se", "youdao.com", "hardsextube.com", "51.la", "dell.com", "soufun.com", "ku6.com", "kat.ph", "gmx.net", "salesforce.com", "constantcontact.com", "google.ro", "google.at", "kaixin001.com", "tagged.com", "softonic.com", "cj.com", "google.com.ph", "wp.pl", "ikea.com", "tripadvisor.com", "narod.ru", "washingtonpost.com", "kakaku.com", "nfl.com", "forbes.com", "libero.it", "ign.com", "google.ch", "y8.com", "china.com", "10086.cn", "wordreference.com", "angege.com", "mop.com", "pof.com", "amazon.cn", "fedex.com", "hubpages.com", "newegg.com", "google.com.pe", "google.cl", "scribd.com", "homeway.com.cn", "nba.com", "techcrunch.com", "aizhan.com", "xe.com", "drtuber.com", "nifty.com", "ebay.it", "seesaa.net", "digitalpoint.com", "2ch.net", "126.com", "google.com.sg", "joomla.org", "hotfile.com", "corriere.it", "americanexpress.com", "xing.com", "thefreedictionary.com", "dianping.com", "amazon.fr", "allrecipes.com", "att.com", "in.com", "google.pt", "marca.com", "ezinearticles.com", "google.com.ng", "alimama.com", "ig.com.br", "depositfiles.com", "elpais.com", "uimserv.net", "latimes.com", "soundcloud.com", "google.co.kr", "mercadolivre.com.br", "t-online.de", "sweetim.com", "pandora.com", "yesky.com", "istockphoto.com", "seznam.cz", "over-blog.com", "vancl.com", "usatoday.com", "freelancer.com", "match.com", "trekaklik.com", "goal.com", "weebly.com", "ning.com", "vnexpress.net", "ero-advertising.com", "huanqiu.com", "letv.com", "barnesandnoble.com", "facemoods.com", "netlog.com", "opendns.com", "nih.gov", "wretch.cc", "drudgereport.com", "engadget.com", "w3.org", "videobb.com", "vk.com", "ebay.com.au", "elmundo.es", "kooora.com", "btjunkie.org", "google.ae", "hurriyet.com.tr", "verizonwireless.com", "abcnews.go.com", "sears.com", "pptv.com", "indeed.com", "sakura.ne.jp", "commentcamarche.net", "mynet.com", "biglobe.ne.jp", "iloveyouxi.com", "google.ie", "shutterstock.com", "qunar.com", "kohls.com", "xcar.com.cn", "mgid.com", "chip.de", "metacafe.com", "multiupload.com", "milliyet.com.tr", "spankwire.com", "admin5.com", "leo.org", "autohome.com.cn", "macys.com", "tmz.com", "bluehost.com", "ebay.fr", "choopa.net", "histats.com", "google.co.hu", "gazeta.pl", "yfrog.com", "twimg.com", "zimbio.com", "cntv.cn", "rr.com", "delicious.com", "slickdeals.net", "livedoor.biz", "imagevenue.com", "dangdang.com", "bloomberg.com", "adcash.com", "love21cn.com", "mpnrs.com", "4399.com", "google.dk", "webs.com", "gsmarena.com", "mailchimp.com", "dmm.co.jp", "businessinsider.com", "megacloud.com", "people.com", "multiply.com", "expedia.com", "eastmoney.com", "12306.cn", "extratorrent.com", "softpedia.com", "google.co.il", "swagbucks.com", "informer.com", "am10.ru", "cnblogs.com", "pchome.net", "39.net", "demonoid.me", "viadeo.com", "etao.com", "dianxin.cn", "capitalone.com", "google.cz", "foxsports.com", "lenta.ru", "retailmenot.com", "hdfcbank.com", "toysrus.com", "google.no", "fotolia.com", "mihanblog.com", "51job.com", "115.com", "alphaporno.com", "speedtest.net", "pogo.com", "github.com", "gamespot.com", "media.tumblr.com", "seomoz.org", "it168.com", "sitesell.com", "youm7.com", "17kuxun.com", "drupal.org", "keezmovies.com", "rbc.ru", "time.com", "google.fi", "peyvandha.ir", "irctc.co.in", "ovh.net", "battle.net", "woot.com", "hoopchina.com", "yandex.ua", "ibm.com", "verycd.com", "video-rewardz.com", "overstock.com", "movie2k.to", "bitly.com", "jquery.com", "pch.com", "jibjab.com", "meituan.com", "zanox.com"]

