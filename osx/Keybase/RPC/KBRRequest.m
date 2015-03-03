//
//  KBRRequest.m
//  Keybase
//
//  Created by Gabriel on 12/16/14.
//  Copyright (c) 2014 Gabriel Handford. All rights reserved.
//

#import "KBRRequest.h"

@implementation KBRRequest

- (instancetype)init {
  [NSException raise:NSGenericException format:@"Use initWithClient:"];
  return nil;
}

- (instancetype)initWithClient:(id<KBRPClient>)client {
  if ((self = [super init])) {
    _client = client;
    _sessionId = [client nextSessionId];
  }
  return self;
}

@end
