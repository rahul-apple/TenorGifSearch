//
//	TenorGifResponse.m
//
//	Create by RAHUL'S MAC MINI on 16/12/2016
//	Copyright © 2016. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport



#import "TenorGifResponse.h"

NSString *const kTenorGifResponseNext = @"next";
NSString *const kTenorGifResponseResults = @"results";
NSString *const kTenorGifResponseWeburl = @"weburl";

@interface TenorGifResponse ()
@end
@implementation TenorGifResponse




/**
 * Instantiate the instance using the passed dictionary values to set the properties values
 */

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
	self = [super init];
	if(![dictionary[kTenorGifResponseNext] isKindOfClass:[NSNull class]]){
		self.next = dictionary[kTenorGifResponseNext];
	}	
	if(dictionary[kTenorGifResponseResults] != nil && [dictionary[kTenorGifResponseResults] isKindOfClass:[NSArray class]]){
		NSArray * resultsDictionaries = dictionary[kTenorGifResponseResults];
		NSMutableArray * resultsItems = [NSMutableArray array];
		for(NSDictionary * resultsDictionary in resultsDictionaries){
			TenorResult * resultsItem = [[TenorResult alloc] initWithDictionary:resultsDictionary];
			[resultsItems addObject:resultsItem];
		}
		self.results = resultsItems;
	}
	if(![dictionary[kTenorGifResponseWeburl] isKindOfClass:[NSNull class]]){
		self.weburl = dictionary[kTenorGifResponseWeburl];
	}	
	return self;
}


/**
 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
 */
-(NSDictionary *)toDictionary
{
	NSMutableDictionary * dictionary = [NSMutableDictionary dictionary];
	if(self.next != nil){
		dictionary[kTenorGifResponseNext] = self.next;
	}
	if(self.results != nil){
		NSMutableArray * dictionaryElements = [NSMutableArray array];
		for(TenorResult * resultsElement in self.results){
			[dictionaryElements addObject:[resultsElement toDictionary]];
		}
		dictionary[kTenorGifResponseResults] = dictionaryElements;
	}
	if(self.weburl != nil){
		dictionary[kTenorGifResponseWeburl] = self.weburl;
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
	if(self.next != nil){
		[aCoder encodeObject:self.next forKey:kTenorGifResponseNext];
	}
	if(self.results != nil){
		[aCoder encodeObject:self.results forKey:kTenorGifResponseResults];
	}
	if(self.weburl != nil){
		[aCoder encodeObject:self.weburl forKey:kTenorGifResponseWeburl];
	}

}

/**
 * Implementation of NSCoding initWithCoder: method
 */
- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
	self = [super init];
	self.next = [aDecoder decodeObjectForKey:kTenorGifResponseNext];
	self.results = [aDecoder decodeObjectForKey:kTenorGifResponseResults];
	self.weburl = [aDecoder decodeObjectForKey:kTenorGifResponseWeburl];
	return self;

}

/**
 * Implementation of NSCopying copyWithZone: method
 */
- (instancetype)copyWithZone:(NSZone *)zone
{
	TenorGifResponse *copy = [TenorGifResponse new];

	copy.next = [self.next copyWithZone:zone];
	copy.results = [self.results copyWithZone:zone];
	copy.weburl = [self.weburl copyWithZone:zone];

	return copy;
}
@end