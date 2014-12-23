//
//  AKHighPassButterworthFilter.m
//  AudioKit
//
//  Auto-generated on 12/23/14.
//  Copyright (c) 2014 Aurelius Prochazka. All rights reserved.
//
//  Implementation of Csound's butterhp:
//  http://www.csounds.com/manual/html/butterhp.html
//

#import "AKHighPassButterworthFilter.h"
#import "AKManager.h"

@implementation AKHighPassButterworthFilter
{
    AKParameter * _audioSource;
}

- (instancetype)initWithAudioSource:(AKParameter *)audioSource
                    cutoffFrequency:(AKParameter *)cutoffFrequency
{
    self = [super initWithString:[self operationName]];
    if (self) {
        _audioSource = audioSource;
        _cutoffFrequency = cutoffFrequency;
    }
    return self;
}

- (instancetype)initWithAudioSource:(AKParameter *)audioSource
{
    self = [super initWithString:[self operationName]];
    if (self) {
        _audioSource = audioSource;
        // Default Values
        _cutoffFrequency = akp(500);    
    }
    return self;
}

+ (instancetype)audioWithAudioSource:(AKParameter *)audioSource
{
    return [[AKHighPassButterworthFilter alloc] initWithAudioSource:audioSource];
}

- (void)setOptionalCutoffFrequency:(AKParameter *)cutoffFrequency {
    _cutoffFrequency = cutoffFrequency;
}

- (NSString *)stringForCSD {
    return [NSString stringWithFormat:
            @"%@ butterhp AKAudio(%@), AKControl(%@)",
            self,
            _audioSource,
            _cutoffFrequency];
}

@end
