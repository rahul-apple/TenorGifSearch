//
//	TenorGif.m
//
//	Create by RAHUL'S MAC MINI on 16/12/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "TenorGif.h"

NSString *const kTenorGifDims = @"dims";
NSString *const kTenorGifPreview = @"preview";
NSString *const kTenorGifSize = @"size";
NSString *const kTenorGifUrl = @"url";

@interface TenorGif ()
@end
@implementation TenorGif




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kTenorGifDims] isKindOfClass:[NSNull class]]){
		self.dims = dictionary[kTenorGifDims];
	}	
	if(![dictionary[kTenorGifPreview] isKindOfClass:[NSNull class]]){
		self.preview = dictionary[kTenorGifPreview];
	}	
	if(![dictionary[kTenorGifSize] isKindOfClass:[NSNull class]]){
		self.size = [dictionary[kTenorGifSize] integerValue];
	}

	if(![dictionary[kTenorGifUrl] isKindOfClass:[NSNull class]]){
		self.url = dictionary[kTenorGifUrl];
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
		dictionary[kTenorGifDims] = self.dims;
	}
	if(self.preview != nil){
		dictionary[kTenorGifPreview] = self.preview;
	}
	dictionary[kTenorGifSize] = @(self.size);
	if(self.url != nil){
		dictionary[kTenorGifUrl] = self.url;
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
		[aCoder encodeObject:self.dims forKey:kTenorGifDims];
	}
	if(self.preview != nil){
		[aCoder encodeObject:self.preview forKey:kTenorGifPreview];
	}
	[aCoder encodeObject:@(self.size) forKey:kTenorGifSize];	if(self.url != nil){
		[aCoder encodeObject:self.url forKey:kTenorGifUrl];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.dims = [aDecoder decodeObjectForKey:kTenorGifDims];
	self.preview = [aDecoder decodeObjectForKey:kTenorGifPreview];
	self.size = [[aDecoder decodeObjectForKey:kTenorGifSize] integerValue];
	self.url = [aDecoder decodeObjectForKey:kTenorGifUrl];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	TenorGif *copy = [TenorGif new];

	copy.dims = [self.dims copyWithZone:zone];
	copy.preview = [self.preview copyWithZone:zone];
	copy.size = self.size;
	copy.url = [self.url copyWithZone:zone];

	return copy;
}
@end