//
// Copyright 2021 Signal Messenger, LLC
// SPDX-License-Identifier: AGPL-3.0-only
//

#import "OWSReceiptCredentialRedemptionJobRecord.h"
#import <SignalServiceKit/SignalServiceKit-Swift.h>

@interface OWSReceiptCredentialRedemptionJobRecord ()

@property (nonatomic, nullable) NSData *receiptCredentialPresentation;

@end

@implementation OWSReceiptCredentialRedemptionJobRecord

- (instancetype)initWithPaymentProcessor:(NSString *)paymentProcessor
         receiptCredentialRequestContext:(NSData *)receiptCredentailRequestContext
                receiptCredentailRequest:(NSData *)receiptCredentialRequest
                            subscriberID:(NSData *)subscriberID
                 targetSubscriptionLevel:(NSUInteger)targetSubscriptionLevel
                  priorSubscriptionLevel:(NSUInteger)priorSubscriptionLevel
                                 isBoost:(BOOL)isBoost
                                  amount:(nullable NSDecimalNumber *)amount
                            currencyCode:(nullable NSString *)currencyCode
                    boostPaymentIntentID:(NSString *)boostPaymentIntentID
                                   label:(NSString *)label
{
    self = [super initWithLabel:label];
    if (self) {
        _paymentProcessor = paymentProcessor;
        _receiptCredentailRequestContext = receiptCredentailRequestContext;
        _receiptCredentailRequest = receiptCredentialRequest;
        _subscriberID = subscriberID;
        _targetSubscriptionLevel = targetSubscriptionLevel;
        _priorSubscriptionLevel = priorSubscriptionLevel;
        _isBoost = isBoost;
        _amount = amount;
        _currencyCode = currencyCode;
        _boostPaymentIntentID = boostPaymentIntentID;
    }
    return self;
}

- (nullable instancetype)initWithCoder:(NSCoder *)coder
{
    return [super initWithCoder:coder];
}

// --- CODE GENERATION MARKER

// This snippet is generated by /Scripts/sds_codegen/sds_generate.py. Do not manually edit it, instead run
// `sds_codegen.sh`.

// clang-format off

- (instancetype)initWithGrdbId:(int64_t)grdbId
                      uniqueId:(NSString *)uniqueId
      exclusiveProcessIdentifier:(nullable NSString *)exclusiveProcessIdentifier
                    failureCount:(NSUInteger)failureCount
                           label:(NSString *)label
                          sortId:(unsigned long long)sortId
                          status:(SSKJobRecordStatus)status
                          amount:(nullable NSDecimalNumber *)amount
            boostPaymentIntentID:(NSString *)boostPaymentIntentID
                    currencyCode:(nullable NSString *)currencyCode
                         isBoost:(BOOL)isBoost
                paymentProcessor:(NSString *)paymentProcessor
          priorSubscriptionLevel:(NSUInteger)priorSubscriptionLevel
        receiptCredentailRequest:(NSData *)receiptCredentailRequest
 receiptCredentailRequestContext:(NSData *)receiptCredentailRequestContext
   receiptCredentialPresentation:(nullable NSData *)receiptCredentialPresentation
                    subscriberID:(NSData *)subscriberID
         targetSubscriptionLevel:(NSUInteger)targetSubscriptionLevel
{
    self = [super initWithGrdbId:grdbId
                        uniqueId:uniqueId
        exclusiveProcessIdentifier:exclusiveProcessIdentifier
                      failureCount:failureCount
                             label:label
                            sortId:sortId
                            status:status];

    if (!self) {
        return self;
    }

    _amount = amount;
    _boostPaymentIntentID = boostPaymentIntentID;
    _currencyCode = currencyCode;
    _isBoost = isBoost;
    _paymentProcessor = paymentProcessor;
    _priorSubscriptionLevel = priorSubscriptionLevel;
    _receiptCredentailRequest = receiptCredentailRequest;
    _receiptCredentailRequestContext = receiptCredentailRequestContext;
    _receiptCredentialPresentation = receiptCredentialPresentation;
    _subscriberID = subscriberID;
    _targetSubscriptionLevel = targetSubscriptionLevel;

    return self;
}

// clang-format on

// --- CODE GENERATION MARKER

- (void)updateWithReceiptCredentialPresentation:(NSData *)receiptCredentialPresentation
                                    transaction:(SDSAnyWriteTransaction *)transaction
{
    [self
        anyUpdateReceiptCredentialRedemptionJobRecordWithTransaction:transaction
                                                               block:^(
                                                                   OWSReceiptCredentialRedemptionJobRecord *jobRecord) {
                                                                   jobRecord.receiptCredentialPresentation
                                                                       = receiptCredentialPresentation;
                                                               }];
}

@end
