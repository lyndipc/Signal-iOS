//
//  Copyright (c) 2021 Open Whisper Systems. All rights reserved.
//

NS_ASSUME_NONNULL_BEGIN

dispatch_queue_t NetworkManagerQueue(void);

#define OWSFailDebugUnlessNetworkFailure(error)                                                                        \
    if (error.isNetworkConnectivityFailure) {                                                                          \
        OWSLogWarn(@"Error: %@", error);                                                                               \
    } else {                                                                                                           \
        OWSFailDebug(@"Error: %@", error);                                                                             \
    }

#pragma mark -

@interface HTTPUtils : NSObject

#if TESTABLE_BUILD
+ (void)logCurlForTask:(NSURLSessionTask *)task;
+ (void)logCurlForURLRequest:(NSURLRequest *)originalRequest;
#endif

@end

NS_ASSUME_NONNULL_END
