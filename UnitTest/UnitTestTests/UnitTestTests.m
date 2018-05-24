//
//  UnitTestTests.m
//  UnitTestTests
//
//  Created by sogou-Yan on 2018/5/24.
//  Copyright © 2018年 sogou. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "TestObj.h"

@interface UnitTestTests : XCTestCase

@end

@implementation UnitTestTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testNewObj {
//    [self checkObjInitDict:@{@"age":@12,@"name":@"lilei"}];//合法数据
    [self checkObjInitDict:@{@"age":@12,@"name":@"      "}];//XCTAssert(![obj.name containsString:@"  "], @"姓名不合法");//如果数据不包含空格 那么数据合法，否则不合法
    
//    [self checkObjInitDict:@{@"age":@12,@"name":@""}];//XCTAssert(obj.name != nil, @"姓名为空");//判断数据不能为空 否则报错
    
    
//    [self checkObjInitDict:@{@"age":@131,@"name":@"hanmeimei"}];//XCTAssert(obj.age > 0 && obj.age < 130, @"年龄超限");//判断数据为 0-130 否则报错
}

/**
 创建一个数据模型，属性 age name
 age 数据区间 0~120；
 name 不能为空，
 */
- (void)checkObjInitDict:(NSDictionary *)dict {
    NSString *name = dict[@"name"];// 获取数据源 ，和结果做对比
    NSInteger age = [dict[@"age"] integerValue];
    TestObj *obj = [TestObj objWithDict:dict];//实际要测试的方法
    TestObj *obj1;//对象为初始化 为空对象
    XCTAssert(obj.name != nil, @"姓名为空");//判断数据不能为空 否则报错
    XCTAssert([name isEqualToString:obj.name], @"姓名不一致");//判断数据一致性 否则报错 防止objWithDict 内部出错
    XCTAssert(age == obj.age, @"年龄不一致");//判断数据一致性 否则报错 防止objWithDict 内部出错
    XCTAssert(obj.age > 0 && obj.age < 130, @"年龄超限");//判断数据为 0-130 否则报错
//    XCTAssert(![obj.name containsString:@"  "], @"姓名不合法");//如果数据不包含空格 那么数据合法，否则不合法
//    XCTAssertTrue(![obj.name containsString:@"  "], @"姓名不合法");
//    XCTAssertFalse([obj.name containsString:@"  "], @"姓名不合法");

//    XCTAssertNotNil(obj1);//判断不为空，为空报错
    
    NSLog(@"obj:%@",obj);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
