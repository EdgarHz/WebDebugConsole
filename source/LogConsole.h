//
//  LogConsole.h
//  LogConsole
//
//  Created by hzy on 5/8/16.
//
//

#import <Foundation/Foundation.h>
@class DDFileLogger;
@class HTTPServer;

@interface LogConsole : NSObject {
    HTTPServer *httpServer;
}
@property (nonatomic, assign) int port; //default 12345
@property (nonatomic, readonly) DDFileLogger *fileLogger;

+ (instancetype)shared;
- (void)setupLogger;
- (void)setupRemoteConsole;
@end
