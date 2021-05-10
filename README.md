# spider-ershoufang-20210510

- 2021-05-10链家二手房数据(天津)

## 说明

- 爬虫爬 链家-天津-二手房的数据
- 练手项目-爬取的内容都放在一个表了

## 版本信息

- python3.8 自行安装依赖 
  - scrapy 2.3
  - pymysql 
- mysql5.7.27

### 运行项目

```
# 克隆项目
git clone git@github.com:slTrust/spider-ershoufang-20210510.git
# 进入项目目录后
cd ershoufang

# 安装项目依赖
# pip3 install  xxx
pip3 install "scrapy==2.3"
pip3 install pymysql

# 大前提， 建库建表 参考 如下文件 
https://github.com/slTrust/spider-ershoufang-20210510/blob/main/ershoufang/db/sql.sql
# 推荐使用 docker 开启数据库，操作简单

# 建库建表之后
pipelines.py 里 设置你的数据库账号密码

# 运行 
scrapy crawl lianjia --nolog  

# 效率
笔记本 mac pro 16G 1.4Ghz 四核Intel Core i5 
大约40分钟能爬 2w条数据
```
