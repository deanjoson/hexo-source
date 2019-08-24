---
title: 一、Java环境准备
tags:
  - JAVA
  - 学习
  - 入门
categories:
  - JAVA学习路线
toc: true
author: 邓军
date: 2019-08-24 11:27:24
---

## Java版本的选择
#### 1、Oracle官方对目前发行Java se版本的支持 [官方说明](https://www.oracle.com/technetwork/java/java-se-support-roadmap.html)
![OracleJavaSE支持时间图](https://file-blog.coolwang.cn/hexo-client/2019/08/24/5089daf0-c617-11e9-85bc-8999f0bf4dd0.png)

#### 2、OSCHINA对目前版本的使用统计图 [文章出处](https://www.oschina.net/question/2918182_2287320)
![WX201908241035582x.png](https://file-blog.coolwang.cn/hexo-client/2019/08/24/f8cd1c90-c617-11e9-85bc-8999f0bf4dd0.png)

#### 3、结论
最新的长期支持版本是2018年9月发布的JAVA11，但由于其发布时间还过短，生产验证不足，且部分框架还不支持，故如果是个人学习研究建议学习可以选择JAVA SE 11版本，但是目前用于企业级应用开发和生产还是建议使用上一个长期支持版本JAVA8。并且目前主流的JAVA框架均是基于JAVA8进行开发的。所以JAVA8也是一个不错的选择，能满足目前的对于日常开发应用的需求。而类似JAVA9、JAVA10、JAVA12、JAVA13这类每半年发布的版本实际为新增功能或安全补丁等测试型版本，其可能会删除部分类加载器及基础功能，导致日常使用出现问题，但可作为研究使用。同时其包含的安全补丁类也会随着长期支持版的小版本进行发布如：8u20,8u21

## Java环境安装
#### 1、Oracle官方下载安装包 [JAVA8下载地址](https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)
![WX20190824105637.png](https://file-blog.coolwang.cn/hexo-client/2019/08/24/d8c3f100-c61a-11e9-85bc-8999f0bf4dd0.png)
同意许可证，选择操作系统对应的版本进行下载

#### 2、安装JAVA
略。MAC和Windows为傻瓜式安装，只按照步骤一步一步点击即可。

#### 3、配置环境变量
- 检查是否已自动配置（mac默认配置，无需手动配置）
```bash
#打开终端执行 java -version 查看是否正确安装java运行时环境
#打开终端执行 javac -version 查看是否正确安装java编译器环境
#如果出现找不到命令则进行后续操作
 ~  java -version
java version "1.8.0_211"
Java(TM) SE Runtime Environment (build 1.8.0_211-b12)
Java HotSpot(TM) 64-Bit Server VM (build 25.211-b12, mixed mode)
 ~ javac -version
javac 1.8.0_211
```
- 配置环境变量，将JAVA安装目录下的bin目录加入环境变量中。