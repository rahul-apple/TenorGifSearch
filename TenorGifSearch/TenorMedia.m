//
//	TenorMedia.m
//
//	Create by RAHUL'S MAC MINI on 16/12/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "TenorMedia.h"

NSString *const kTenorMediaGif = @"gif";
NSString *const kTenorMediaLoopedmp4 = @"loopedmp4";
NSString *const kTenorMediaMp4 = @"mp4";
NSString *const kTenorMediaNanogif = @"nanogif";
NSString *const kTenorMediaNanomp4 = @"nanomp4";
NSString *const kTenorMediaNanowebm = @"nanowebm";
NSString *const kTenorMediaTinygif = @"tinygif";
NSString *const kTenorMediaTinymp4 = @"tinymp4";
NSString *const kTenorMediaTinywebm = @"tinywebm";
NSString *const kTenorMediaWebm = @"webm";

@interface TenorMedia ()
@end
@implementation TenorMedia




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kTenorMediaGif] isKindOfClass:[NSNull class]]){
		self.gif = [[TenorGif alloc] initWithDictionary:dictionary[kTenorMediaGif]];
	}

	if(![dictionary[kTenorMediaLoopedmp4] isKindOfClass:[NSNull class]]){
		self.loopedmp4 = [[TenorLoopedmp4 alloc] initWithDictionary:dictionary[kTenorMediaLoopedmp4]];
	}

	if(![dictionary[kTenorMediaMp4] isKindOfClass:[NSNull class]]){
		self.mp4 = [[TenorLoopedmp4 alloc] initWithDictionary:dictionary[kTenorMediaMp4]];
	}

	if(![dictionary[kTenorMediaNanogif] isKindOfClass:[NSNull class]]){
		self.nanogif = [[TenorGif alloc] initWithDictionary:dictionary[kTenorMediaNanogif]];
	}

	if(![dictionary[kTenorMediaNanomp4] isKindOfClass:[NSNull class]]){
		self.nanomp4 = [[TenorLoopedmp4 alloc] initWithDictionary:dictionary[kTenorMediaNanomp4]];
	}

	if(![dictionary[kTenorMediaNanowebm] isKindOfClass:[NSNull class]]){
		self.nanowebm = [[TenorNanowebm alloc] initWithDictionary:dictionary[kTenorMediaNanowebm]];
	}

	if(![dictionary[kTenorMediaTinygif] isKindOfClass:[NSNull class]]){
		self.tinygif = [[TenorGif alloc] initWithDictionary:dictionary[kTenorMediaTinygif]];
	}

	if(![dictionary[kTenorMediaTinymp4] isKindOfClass:[NSNull class]]){
		self.tinymp4 = [[TenorLoopedmp4 alloc] initWithDictionary:dictionary[kTenorMediaTinymp4]];
	}

	if(![dictionary[kTenorMediaTinywebm] isKindOfClass:[NSNull class]]){
		self.tinywebm = [[TenorNanowebm alloc] initWithDictionary:dictionary[kTenorMediaTinywebm]];
	}

	if(![dictionary[kTenorMediaWebm] isKindOfClass:[NSNull class]]){
		self.webm = [[TenorNanowebm alloc] initWithDictionary:dictionary[kTenorMediaWebm]];
	}

	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.gif != nil){
		dictionary[kTenorMediaGif] = [self.gif toDictionary];
	}
	if(self.loopedmp4 != nil){
		dictionary[kTenorMediaLoopedmp4] = [self.loopedmp4 toDictionary];
	}
	if(self.mp4 != nil){
		dictionary[kTenorMediaMp4] = [self.mp4 toDictionary];
	}
	if(self.nanogif != nil){
		dictionary[kTenorMediaNanogif] = [self.nanogif toDictionary];
	}
	if(self.nanomp4 != nil){
		dictionary[kTenorMediaNanomp4] = [self.nanomp4 toDictionary];
	}
	if(self.nanowebm != nil){
		dictionary[kTenorMediaNanowebm] = [self.nanowebm toDictionary];
	}
	if(self.tinygif != nil){
		dictionary[kTenorMediaTinygif] = [self.tinygif toDictionary];
	}
	if(self.tinymp4 != nil){
		dictionary[kTenorMediaTinymp4] = [self.tinymp4 toDictionary];
	}
	if(self.tinywebm != nil){
		dictionary[kTenorMediaTinywebm] = [self.tinywebm toDictionary];
	}
	if(self.webm != nil){
		dictionary[kTenorMediaWebm] = [self.webm toDictionary];
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
	if(self.gif != nil){
		[aCoder encodeObject:self.gif forKey:kTenorMediaGif];
	}
	if(self.loopedmp4 != nil){
		[aCoder encodeObject:self.loopedmp4 forKey:kTenorMediaLoopedmp4];
	}
	if(self.mp4 != nil){
		[aCoder encodeObject:self.mp4 forKey:kTenorMediaMp4];
	}
	if(self.nanogif != nil){
		[aCoder encodeObject:self.nanogif forKey:kTenorMediaNanogif];
	}
	if(self.nanomp4 != nil){
		[aCoder encodeObject:self.nanomp4 forKey:kTenorMediaNanomp4];
	}
	if(self.nanowebm != nil){
		[aCoder encodeObject:self.nanowebm forKey:kTenorMediaNanowebm];
	}
	if(self.tinygif != nil){
		[aCoder encodeObject:self.tinygif forKey:kTenorMediaTinygif];
	}
	if(self.tinymp4 != nil){
		[aCoder encodeObject:self.tinymp4 forKey:kTenorMediaTinymp4];
	}
	if(self.tinywebm != nil){
		[aCoder encodeObject:self.tinywebm forKey:kTenorMediaTinywebm];
	}
	if(self.webm != nil){
		[aCoder encodeObject:self.webm forKey:kTenorMediaWebm];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.gif = [aDecoder decodeObjectForKey:kTenorMediaGif];
	self.loopedmp4 = [aDecoder decodeObjectForKey:kTenorMediaLoopedmp4];
	self.mp4 = [aDecoder decodeObjectForKey:kTenorMediaMp4];
	self.nanogif = [aDecoder decodeObjectForKey:kTenorMediaNanogif];
	self.nanomp4 = [aDecoder decodeObjectForKey:kTenorMediaNanomp4];
	self.nanowebm = [aDecoder decodeObjectForKey:kTenorMediaNanowebm];
	self.tinygif = [aDecoder decodeObjectForKey:kTenorMediaTinygif];
	self.tinymp4 = [aDecoder decodeObjectForKey:kTenorMediaTinymp4];
	self.tinywebm = [aDecoder decodeObjectForKey:kTenorMediaTinywebm];
	self.webm = [aDecoder decodeObjectForKey:kTenorMediaWebm];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	TenorMedia *copy = [TenorMedia new];

	copy.gif = [self.gif copyWithZone:zone];
	copy.loopedmp4 = [self.loopedmp4 copyWithZone:zone];
	copy.mp4 = [self.mp4 copyWithZone:zone];
	copy.nanogif = [self.nanogif copyWithZone:zone];
	copy.nanomp4 = [self.nanomp4 copyWithZone:zone];
	copy.nanowebm = [self.nanowebm copyWithZone:zone];
	copy.tinygif = [self.tinygif copyWithZone:zone];
	copy.tinymp4 = [self.tinymp4 copyWithZone:zone];
	copy.tinywebm = [self.tinywebm copyWithZone:zone];
	copy.webm = [self.webm copyWithZone:zone];

	return copy;
}
@end