// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from example.djinni

#include "textbox_listener.hpp"
#include <memory>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@protocol TXSTextboxListener;

namespace djinni_generated {

class TextboxListener
{
public:
    using CppType = std::shared_ptr<::textsort::TextboxListener>;
    using ObjcType = id<TXSTextboxListener>;

    using Boxed = TextboxListener;

    static CppType toCpp(ObjcType objc);
    static ObjcType fromCpp(const CppType& cpp);

private:
    class ObjcProxy;
};

}  // namespace djinni_generated

