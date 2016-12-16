//
//	TenorLoopedmp4.m
//
//	Create by RAHUL'S MAC MINI on 16/12/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "TenorLoopedmp4.h"

NSString *const kTenorLoopedmp4Dims = @"dims";
NSString *const kTenorLoopedmp4Duration = @"duration";
NSString *const kTenorLoopedmp4Preview = @"preview";
NSString *const kTenorLoopedmp4Url = @"url";

@interface TenorLoopedmp4 ()
@end
@implementation TenorLoopedmp4




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kTenorLoopedmp4Dims] isKindOfClass:[NSNull class]]){
		self.dims = dictionary[kTenorLoopedmp4Dims];
	}	
	if(![dictionary[kTenorLoopedmp4Duration] isKindOfClass:[NSNull class]]){
		self.duration = [dictionary[kTenorLoopedmp4Duration] integerValue];
	}

	if(![dictionary[kTenorLoopedmp4Preview] isKindOfClass:[NSNull class]]){
		self.preview = dictionary[kTenorLoopedmp4Preview];
	}	
	if(![dictionary[kTenorLoopedmp4Url] isKindOfClass:[NSNull class]]){
		self.url = dictionary[kTenorLoopedmp4Url];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.dims != nil){
		dictionary[kTenorLoopedmp4Dims] = self.dims;
	}
	dictionary[kTenorLoopedmp4Duration] = @(self.duration);
	if(self.preview != nil){
		dictionary[kTenorLoopedmp4Preview] = self.preview;
	}
	if(self.url != nil){
		dictionary[kTenorLoopedmp4Url] = self.url;
	}
	return dictionary;

}

/**
 * Implementation of NSCoding encoding method
 */
/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
- (void)encodeWithCoder:(NSCoder *)aCoder
{
	if(self.dims != nil){
		[aCoder encodeObject:self.dims forKey:kTenorLoopedmp4Dims];
	}
	[aCoder encodeObject:@(self.duration) forKey:kTenorLoopedmp4Duration];	if(self.preview != nil){
		[aCoder encodeObject:self.preview forKey:kTenorLoopedmp4Preview];
	}
	if(self.url != nil){
		[aCoder encodeObject:self.url forKey:kTenorLoopedmp4Url];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.dims = [aDecoder decodeObjectForKey:kTenorLoopedmp4Dims];
	self.duration = [[aDecoder decodeObjectForKey:kTenorLoopedmp4Duration] integerValue];
	self.preview = [aDecoder decodeObjectForKey:kTenorLoopedmp4Preview];
	self.url = [aDecoder decodeObjectForKey:kTenorLoopedmp4Url];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	TenorLoopedmp4 *copy = [TenorLoopedmp4 new];

	copy.dims = [self.dims copyWithZone:zone];
	copy.duration = self.duration;
	copy.preview = [self.preview copyWithZone:zone];
	copy.url = [self.url copyWithZone:zone];

	return copy;
}
@end