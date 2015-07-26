// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from example.djinni

#import "TXSTextboxListener+Private.h"
#import "TXSTextboxListener.h"
#import "DJIObjcWrapperCache+Private.h"
#import "TXSItemList+Private.h"

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

namespace djinni_generated {

class TextboxListener::ObjcProxy final
: public ::textsort::TextboxListener
, public ::djinni::DbxObjcWrapperCache<ObjcProxy>::Handle
{
public:
    using Handle::Handle;
    void update(const ::textsort::ItemList & c_items) override
    {
        @autoreleasepool {
            [(ObjcType)Handle::get() update:(::djinni_generated::ItemList::fromCpp(c_items))];
        }
    }
};

}  // namespace djinni_generated

namespace djinni_generated {

auto TextboxListener::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return ::djinni::DbxObjcWrapperCache<ObjcProxy>::getInstance()->get(objc);
}

auto TextboxListener::fromCpp(const CppType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return dynamic_cast<ObjcProxy&>(*cpp).Handle::get();
}

}  // namespace djinni_generated
