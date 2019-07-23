#! /bin/sh
cat >> /usr/share/elasticsearch/plugins/ik/config/IKAnalyzer.cfg.xml <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE properties SYSTEM "http://java.sun.com/dtd/properties.dtd">
<properties>
        <comment>IK Analyzer 扩展配置</comment>
        <!--用户可以在这里配置自己的扩展字典 -->
        <entry key="ext_dict"></entry>
         <!--用户可以在这里配置自己的扩展停止词字典-->
        <entry key="ext_stopwords"></entry>
        <!--用户可以在这里配置远程扩展字典 -->
        <entry key="remote_ext_dict">$remote_ext_dict</entry>
        <!--用户可以在这里配置远程扩展停止词字典-->
        <entry key="remote_ext_stopwords">$remote_ext_stopwords</entry>
</properties>
EOF
chown -R root:root /usr/share/elasticsearch/plugins/ik/config/IKAnalyzer.cfg.xml