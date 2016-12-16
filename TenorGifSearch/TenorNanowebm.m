//
//	TenorNanowebm.m
//
//	Create by RAHUL'S MAC MINI on 16/12/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "TenorNanowebm.h"

NSString *const kTenorNanowebmDims = @"dims";
NSString *const kTenorNanowebmPreview = @"preview";
NSString *const kTenorNanowebmUrl = @"url";

@interface TenorNanowebm ()
@end
@implementation TenorNanowebm




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kTenorNanowebmDims] isKindOfClass:[NSNull class]]){
		self.dims = dictionary[kTenorNanowebmDims];
	}	
	if(![dictionary[kTenorNanowebmPreview] isKindOfClass:[NSNull class]]){
		self.preview = dictionary[kTenorNanowebmPreview];
	}	
	if(![dictionary[kTenorNanowebmUrl] isKindOfClass:[NSNull class]]){
		self.url = dictionary[kTenorNanowebmUrl];
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
		dictionary[kTenorNanowebmDims] = self.dims;
	}
	if(self.preview != nil){
		dictionary[kTenorNanowebmPreview] = self.preview;
	}
	if(self.url != nil){
		dictionary[kTenorNanowebmUrl] = self.url;
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
		[aCoder encodeObject:self.dims forKey:kTenorNanowebmDims];
	}
	if(self.preview != nil){
		[aCoder encodeObject:self.preview forKey:kTenorNanowebmPreview];
	}
	if(self.url != nil){
		[aCoder encodeObject:self.url forKey:kTenorNanowebmUrl];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.dims = [aDecoder decodeObjectForKey:kTenorNanowebmDims];
	self.preview = [aDecoder decodeObjectForKey:kTenorNanowebmPreview];
	self.url = [aDecoder decodeObjectForKey:kTenorNanowebmUrl];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	TenorNanowebm *copy = [TenorNanowebm new];

	copy.dims = [self.dims copyWithZone:zone];
	copy.preview = [self.preview copyWithZone:zone];
	copy.url = [self.url copyWithZone:zone];

	return copy;
}
@end