更新记录：
==========

1.0.6.1
------
1. 修复excel里配置成list而协议不是repeated时的错误提示
2. 使用[log4j2](http://logging.apache.org/log4j/2.x/)来输出日志
3. 控制台输出颜色支持

1.0.6.0
------
1. javascript的写入全局可以设置导出的到统一名字空间(lua和其他输出很容易在上层做包装，但是js不行，所以js特别处理一下)
2. 修正数组嵌套数组的结构转换丢失的BUG
3. 补充msgpack的读取说明，补充node.js的读取示例代码
4. 修正一些导出头字段名错误的问题
5. 修正XML输出数组类型数据会多一层的BUG
6. XML输出数组将会带数据索引号
7. 统一版本号管理，从POM文件中自动生成
8. 更新sample数据

1.0.5.0
------
1. 增加javascript的导出支持

1.0.4.0
------
1. 返回码改为失败的数量，无失败则返回0（用以和jre执行崩溃的返回码是1相统一）
2. 更新build-helper-maven-plugin到1.10
3. 更新maven-shade-plugin到2.4.3
4. 更新json到20160212
5. 优化转换错误的一些错误提示

1.0.3.0
------
1. 依赖库更新,全部更新到目前为止的最新稳定版
2. 增加导出enum名称集的功能
3. 修正没有元信息表时，公式选项被忽略的BUG
4. 修正Shceme数据未覆盖时会使用上一次的配置而不是默认值的BUG
5. xml输出允许指定根节点Tag Name

1.0.2.1
------
1. 允许把枚举类型提取到外部
2. 优化protobuf的读取逻辑，对于相同的描述文件不再反复转换
3. 整理部分字符串拼接代码
4. macro数据缓存（几乎一个项目的macro表只有一个，但是要转换的表有几十个，所以对macro可以做特殊的预处理）

1.0.2.0
------
1. 增加通过std输入转换列表的功能，提升转换速度
2. 更换gnu.getopt为commons-cli，优化参数转换代码