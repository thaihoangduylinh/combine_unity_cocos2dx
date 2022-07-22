#ifndef COCO_STUDIO_MACRO2_H
#define COCO_STUDIO_MACRO2_H

#include <unordered_map>
#include <string>

#include "cocos2d.h"
#include "editor-support/cocostudio/CocoStudio.h"
#include "editor-support/cocostudio/WidgetReader/NodeReader/NodeReader.h"
#include "editor-support/cocostudio/WidgetCallBackHandlerProtocol.h"
#include "ui/CocosGUI.h"
#include "HelperManager.h"

#define CREATE_READER(__NODE_TYPE__) \
class __NODE_TYPE__##Reader : public cocostudio::NodeReader {\
public:\
static __NODE_TYPE__##Reader * __instance_##__NODE_TYPE__##Reader;\
__NODE_TYPE__##Reader() {}; \
~__NODE_TYPE__##Reader() {}; \
\
static __NODE_TYPE__##Reader * getInstance() {\
if (!__instance_##__NODE_TYPE__##Reader) {\
__instance_##__NODE_TYPE__##Reader = new __NODE_TYPE__##Reader();\
}\
return(__instance_##__NODE_TYPE__##Reader);\
};\
\
static void purge() {\
CC_SAFE_DELETE(__instance_##__NODE_TYPE__##Reader);\
}; \
cocos2d::Node * createNodeWithFlatBuffers(const flatbuffers::Table * node_options) {\
__NODE_TYPE__ * node = __NODE_TYPE__::create();\
setPropsWithFlatBuffers(node, node_options);\
return node;\
};\
};\

#define INITIALIZE_READER(__NODE_TYPE__) __NODE_TYPE__##Reader * __NODE_TYPE__##Reader::__instance_##__NODE_TYPE__##Reader = nullptr

#define CLICK_MAP(class_name, func_name) \
{#func_name, CC_CALLBACK_1(class_name::func_name, this)}

#define REGISTER_CSB_READER(__NODE_TYPE__) \
cocos2d::CSLoader::getInstance()->registReaderObject(#__NODE_TYPE__ + std::string("Reader"), (cocos2d::ObjectFactory::Instance)__NODE_TYPE__##Reader::getInstance)

#endif /* COCO_STUDIO_MACRO2_H */
