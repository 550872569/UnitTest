# UnitTest
UnitTest

```
1. 单元测试的目的是为了测试数据合法性
eg:
    创建一个数据模型，属性 age name
    age 数据区间 0~120；
    name 不能为空，
    
2. 引入模型类头文件到UnitTest文件
3. 创建一个test 开头的函数用于测试
4. 在test 函数中用XCTAssert 测试数据合法性
eg：
    XCTAssert(obj.name != nil, @"姓名为空");
    如果 obj.name 数据为空，会报错 到这一行，说明有一个输入源数据name 为空，向上查找即可
    XCTAssert(obj.age > 0 && obj.age < 130, @"年龄超限");
    如果输入源的age 131 那么断言 就会报错 年龄超限 如果 断言为true 那么不报错

5. 点击刚才创建的test开头函数的左边有一个run按钮开始测试


XCTAssert 想当于 XCTAssertTrue  如果条件为！那么报错
XCTAssertFalse 相反 如果条件为！ 不报错 否则报错
XCTAssertNotNil 条件不能为NIl 不报错，否则报错

```
