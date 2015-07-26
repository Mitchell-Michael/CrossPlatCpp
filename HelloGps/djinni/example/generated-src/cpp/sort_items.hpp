// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from example.djinni

#pragma once

#include "item_list.hpp"
#include "sort_order.hpp"
#include <memory>

namespace textsort {

class TextboxListener;

class SortItems {
public:
    virtual ~SortItems() {}

    virtual void sort(sort_order order, const ItemList & items) = 0;

    static std::shared_ptr<SortItems> create_with_listener(const std::shared_ptr<TextboxListener> & listener);
};

}  // namespace textsort