#import <CocoaHTTPServer/WebSocket.h>
#import <CocoaLumberjack/CocoaLumberjack.h>
#import <Foundation/Foundation.h>

#define WebSocketLoggerDidDieNotification @"WebSocketLoggerDidDie"

@interface WebSocketLogger : DDAbstractLogger <DDLogger> {
    WebSocket *websocket;
    BOOL       isWebSocketOpen;
}

- (id)initWithWebSocket:(WebSocket *)ws;

@end

@interface WebSocketFormatter : NSObject <DDLogFormatter> {
    NSDateFormatter *dateFormatter;
}

@end
