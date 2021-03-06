#import "TLRPCmessages_deleteChatUser.h"

#import "../NSInputStream+TL.h"
#import "../NSOutputStream+TL.h"

#import "TLInputUser.h"
#import "TLmessages_StatedMessage.h"

@implementation TLRPCmessages_deleteChatUser

@synthesize chat_id = _chat_id;
@synthesize user_id = _user_id;

- (Class)responseClass
{
    return [TLmessages_StatedMessage class];
}

- (int)impliedResponseSignature
{
    return 0;
}

- (int)layerVersion
{
    return 8;
}

- (int32_t)TLconstructorSignature
{
    TGLog(@"constructorSignature is not implemented for base type");
    return 0;
}

- (int32_t)TLconstructorName
{
    TGLog(@"constructorName is not implemented for base type");
    return 0;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::tr1::shared_ptr<TLMetaObject>)__unused metaObject
{
    TGLog(@"TLbuildFromMetaObject is not implemented for base type");
    return nil;
}

- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)__unused values
{
    TGLog(@"TLfillFieldsWithValues is not implemented for base type");
}


@end

@implementation TLRPCmessages_deleteChatUser$messages_deleteChatUser : TLRPCmessages_deleteChatUser


- (int32_t)TLconstructorSignature
{
    return (int32_t)0xc3c5cd23;
}

- (int32_t)TLconstructorName
{
    return (int32_t)0xcf0fceb9;
}

- (id<TLObject>)TLbuildFromMetaObject:(std::tr1::shared_ptr<TLMetaObject>)metaObject
{
    TLRPCmessages_deleteChatUser$messages_deleteChatUser *object = [[TLRPCmessages_deleteChatUser$messages_deleteChatUser alloc] init];
    object.chat_id = metaObject->getInt32(0x7234457c);
    object.user_id = metaObject->getObject(0xafdf4073);
    return object;
}

- (void)TLfillFieldsWithValues:(std::map<int32_t, TLConstructedValue> *)values
{
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypePrimitiveInt32;
        value.primitive.int32Value = self.chat_id;
        values->insert(std::pair<int32_t, TLConstructedValue>(0x7234457c, value));
    }
    {
        TLConstructedValue value;
        value.type = TLConstructedValueTypeObject;
        value.nativeObject = self.user_id;
        values->insert(std::pair<int32_t, TLConstructedValue>(0xafdf4073, value));
    }
}


@end

