//
//	TenorResult.m
//
//	Create by RAHUL'S MAC MINI on 16/12/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "TenorResult.h"

NSString *const kTenorResultComposite = @"composite";
NSString *const kTenorResultCreated = @"created";
NSString *const kTenorResultHasaudio = @"hasaudio";
NSString *const kTenorResultHascaption = @"hascaption";
NSString *const kTenorResultIdField = @"id";
NSString *const kTenorResultItemurl = @"itemurl";
NSString *const kTenorResultMedia = @"media";
NSString *const kTenorResultShares = @"shares";
NSString *const kTenorResultTags = @"tags";
NSString *const kTenorResultTitle = @"title";
NSString *const kTenorResultUrl = @"url";

@interface TenorResult ()
@end
@implementation TenorResult




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kTenorResultComposite] isKindOfClass:[NSNull class]]){
		self.composite = dictionary[kTenorResultComposite];
	}	
	if(![dictionary[kTenorResultCreated] isKindOfClass:[NSNull class]]){
		self.created = [dictionary[kTenorResultCreated] floatValue];
	}

	if(![dictionary[kTenorResultHasaudio] isKindOfClass:[NSNull class]]){
		self.hasaudio = [dictionary[kTenorResultHasaudio] boolValue];
	}

	if(![dictionary[kTenorResultHascaption] isKindOfClass:[NSNull class]]){
		self.hascaption = [dictionary[kTenorResultHascaption] boolValue];
	}

	if(![dictionary[kTenorResultIdField] isKindOfClass:[NSNull class]]){
		self.idField = dictionary[kTenorResultIdField];
	}	
	if(![dictionary[kTenorResultItemurl] isKindOfClass:[NSNull class]]){
		self.itemurl = dictionary[kTenorResultItemurl];
	}	
	if(dictionary[kTenorResultMedia] != nil && [dictionary[kTenorResultMedia] isKindOfClass:[NSArray class]]){
		NSArray * mediaDictionaries = dictionary[kTenorResultMedia];
		NSMutableArray * mediaItems = [NSMutableArray array];
		for(NSDictionary * mediaDictionary in mediaDictionaries){
			TenorMedia * mediaItem = [[TenorMedia alloc] initWithDictionary:mediaDictionary];
			[mediaItems addObject:mediaItem];
		}
		self.media = mediaItems;
	}
	if(![dictionary[kTenorResultShares] isKindOfClass:[NSNull class]]){
		self.shares = [dictionary[kTenorResultShares] integerValue];
	}

	if(![dictionary[kTenorResultTags] isKindOfClass:[NSNull class]]){
		self.tags = dictionary[kTenorResultTags];
	}	
	if(![dictionary[kTenorResultTitle] isKindOfClass:[NSNull class]]){
		self.title = dictionary[kTenorResultTitle];
	}	
	if(![dictionary[kTenorResultUrl] isKindOfClass:[NSNull class]]){
		self.url = dictionary[kTenorResultUrl];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.composite != nil){
		dictionary[kTenorResultComposite] = self.composite;
	}
	dictionary[kTenorResultCreated] = @(self.created);
	dictionary[kTenorResultHasaudio] = @(self.hasaudio);
	dictionary[kTenorResultHascaption] = @(self.hascaption);
	if(self.idField != nil){
		dictionary[kTenorResultIdField] = self.idField;
	}
	if(self.itemurl != nil){
		dictionary[kTenorResultItemurl] = self.itemurl;
	}
	if(self.media != nil){
		NSMutableArray * dictionaryElements = [NSMutableArray array];
		for(TenorMedia * mediaElement in self.media){
			[dictionaryElements addObject:[mediaElement toDictionary]];
		}
		dictionary[kTenorResultMedia] = dictionaryElements;
	}
	dictionary[kTenorResultShares] = @(self.shares);
	if(self.tags != nil){
		dictionary[kTenorResultTags] = self.tags;
	}
	if(self.title != nil){
		dictionary[kTenorResultTitle] = self.title;
	}
	if(self.url != nil){
		dictionary[kTenorResultUrl] = self.url;
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
	if(self.composite != nil){
		[aCoder encodeObject:self.composite forKey:kTenorResultComposite];
	}
	[aCoder encodeObject:@(self.created) forKey:kTenorResultCreated];	[aCoder encodeObject:@(self.hasaudio) forKey:kTenorResultHasaudio];	[aCoder encodeObject:@(self.hascaption) forKey:kTenorResultHascaption];	if(self.idField != nil){
		[aCoder encodeObject:self.idField forKey:kTenorResultIdField];
	}
	if(self.itemurl != nil){
		[aCoder encodeObject:self.itemurl forKey:kTenorResultItemurl];
	}
	if(self.media != nil){
		[aCoder encodeObject:self.media forKey:kTenorResultMedia];
	}
	[aCoder encodeObject:@(self.shares) forKey:kTenorResultShares];	if(self.tags != nil){
		[aCoder encodeObject:self.tags forKey:kTenorResultTags];
	}
	if(self.title != nil){
		[aCoder encodeObject:self.title forKey:kTenorResultTitle];
	}
	if(self.url != nil){
		[aCoder encodeObject:self.url forKey:kTenorResultUrl];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.composite = [aDecoder decodeObjectForKey:kTenorResultComposite];
	self.created = [[aDecoder decodeObjectForKey:kTenorResultCreated] floatValue];
	self.hasaudio = [[aDecoder decodeObjectForKey:kTenorResultHasaudio] boolValue];
	self.hascaption = [[aDecoder decodeObjectForKey:kTenorResultHascaption] boolValue];
	self.idField = [aDecoder decodeObjectForKey:kTenorResultIdField];
	self.itemurl = [aDecoder decodeObjectForKey:kTenorResultItemurl];
	self.media = [aDecoder decodeObjectForKey:kTenorResultMedia];
	self.shares = [[aDecoder decodeObjectForKey:kTenorResultShares] integerValue];
	self.tags = [aDecoder decodeObjectForKey:kTenorResultTags];
	self.title = [aDecoder decodeObjectForKey:kTenorResultTitle];
	self.url = [aDecoder decodeObjectForKey:kTenorResultUrl];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	TenorResult *copy = [TenorResult new];

	copy.composite = [self.composite copyWithZone:zone];
	copy.created = self.created;
	copy.hasaudio = self.hasaudio;
	copy.hascaption = self.hascaption;
	copy.idField = [self.idField copyWithZone:zone];
	copy.itemurl = [self.itemurl copyWithZone:zone];
	copy.media = [self.media copyWithZone:zone];
	copy.shares = self.shares;
	copy.tags = [self.tags copyWithZone:zone];
	copy.title = [self.title copyWithZone:zone];
	copy.url = [self.url copyWithZone:zone];

	return copy;
}
@end