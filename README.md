# buyvm-stock-tg-notify
一个用于监控 buyvm 库存的脚本
A script to monitor buyvm(frantech) stock

如何使用：
1. 通过 `@BotFather` 创建一个 bot，你会得到一个 token
2. 给你的机器人发一些消息
3. 通过 `@RawDataBot` （或者其它方式）获取你的 id
4. 在 VPS 上克隆这个仓库
5. 修改 `check.sh` ，填入变量，URL 变量是你想监控的产品的订购页面的网址
6. 用 crontab 设定定时任务，定期执行脚本，当有货时，会收到 tg 机器人通知

How to use:
1. Create a new telegram bot via `@BotFather`, you will get a token
2. Send your bot some message
3. Get your user id via `@RawDataBot`
4. Clone this repository in your VPS
5. Modify `check.sh`, fill the variable. The URL variable is order page url of the product you want to monitor
6. Set crontab job to run this script cyclically. When the product is available, you will get a notification from your bot
