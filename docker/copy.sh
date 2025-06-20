#!/bin/sh

# 复制项目的文件到对应docker路径，便于一键生成镜像。
usage() {
	echo "Usage: sh copy.sh"
	exit 1
}


# copy sql
echo "begin copy sql "
cp ../sql/ry_20250523.sql ./mysql/db
cp ../sql/ry_config_20250224.sql ./mysql/db

# copy html
echo "begin copy html "
cp -r ../slf-ui/dist/** ./nginx/html/dist


# copy jar
echo "begin copy slf-gateway "
cp ../slf-gateway/target/slf-gateway.jar ./slf/gateway/jar

echo "begin copy slf-auth "
cp ../slf-auth/target/slf-auth.jar ./slf/auth/jar

echo "begin copy slf-visual "
cp ../slf-visual/slf-monitor/target/slf-visual-monitor.jar  ./slf/visual/monitor/jar

echo "begin copy slf-modules-system "
cp ../slf-modules/slf-system/target/slf-modules-system.jar ./slf/modules/system/jar

echo "begin copy slf-modules-file "
cp ../slf-modules/slf-file/target/slf-modules-file.jar ./slf/modules/file/jar

echo "begin copy slf-modules-job "
cp ../slf-modules/slf-job/target/slf-modules-job.jar ./slf/modules/job/jar

echo "begin copy slf-modules-gen "
cp ../slf-modules/slf-gen/target/slf-modules-gen.jar ./slf/modules/gen/jar

