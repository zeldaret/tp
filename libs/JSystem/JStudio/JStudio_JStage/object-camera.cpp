//
// object-camera
//

#include "JSystem/JStudio/JStudio_JStage/object-camera.h"

/* 8028B8A0-8028B960 2861E0 00C0+00 0/0 1/1 0/0 .text
 * __ct__Q214JStudio_JStage15TAdaptor_cameraFPCQ26JStage7TSystemPQ26JStage7TCamera */
JStudio_JStage::TAdaptor_camera::TAdaptor_camera(JStage::TSystem const* param_1,
                                                 JStage::TCamera* param_2)
    : TAdaptor_object_(param_1, param_2) {
    field_0x108 = 0;
    field_0x10c = 0;
    field_0x110 = -1;
    field_0x114 = 0;
    field_0x118 = 0;
    field_0x11c = -1;
    field_0x120 = 0;
}

/* 8028B960-8028B9D4 2862A0 0074+00 1/0 0/0 0/0 .text __dt__Q214JStudio_JStage15TAdaptor_cameraFv
 */
JStudio_JStage::TAdaptor_camera::~TAdaptor_camera() {
    adaptor_do_end();
}

/* 804312D4-80431378 05DFF4 00A0+04 2/3 0/0 0/0 .bss
 * saoVVOutput___Q214JStudio_JStage15TAdaptor_camera            */
JStudio_JStage::TAdaptor_camera::TVVOutput JStudio_JStage::TAdaptor_camera::saoVVOutput_[5] = {
    TVVOutput(JStudio_JStage::TAdaptor_camera::TECAMERA_7, &JStage::TCamera::JSGSetViewRoll,
              &JStage::TCamera::JSGGetViewRoll),
    TVVOutput(JStudio_JStage::TAdaptor_camera::TECAMERA_6, &JStage::TCamera::JSGSetProjectionFovy,
              &JStage::TCamera::JSGGetProjectionFovy),
    TVVOutput(JStudio_JStage::TAdaptor_camera::TECAMERA_8, &JStage::TCamera::JSGSetProjectionNear,
              &JStage::TCamera::JSGGetProjectionNear),
    TVVOutput(JStudio_JStage::TAdaptor_camera::TECAMERA_9, &JStage::TCamera::JSGSetProjectionFar,
              &JStage::TCamera::JSGGetProjectionFar),
    TVVOutput(),
};

/* 8028B9D4-8028BA1C 286314 0048+00 1/0 0/0 0/0 .text
 * adaptor_do_prepare__Q214JStudio_JStage15TAdaptor_cameraFv    */
void JStudio_JStage::TAdaptor_camera::adaptor_do_prepare() {
    TVVOutput* pOutput = saoVVOutput_;
    while (!pOutput->isEnd_()) {
        pOutput->adaptor_setOutput_(this);
        pOutput++;
    }
}

/* 8028BA1C-8028BAF8 28635C 00DC+00 1/0 0/0 0/0 .text
 * adaptor_do_begin__Q214JStudio_JStage15TAdaptor_cameraFv      */
void JStudio_JStage::TAdaptor_camera::adaptor_do_begin() {
    adaptor_object_begin_();
    JStage::TCamera* pCamera = get_pJSG_();
    const JStudio::TObject* pObject = adaptor_getObject();
    JUT_ASSERT(70, pObject != 0);
    JStudio::TControl* pControl = pObject->getControl();
    JUT_ASSERT(72, pControl != 0);
    getJSG_position_(pControl);
    getJSG_targetPosition_(pControl);
    TVVOutput* pOutput = saoVVOutput_;
    while (!pOutput->isEnd_()) {
        pOutput->setVariableValue_(pCamera, this);
        pOutput++;
    }
}

/* 8028BAF8-8028BB4C 286438 0054+00 1/0 0/0 0/0 .text
 * adaptor_do_end__Q214JStudio_JStage15TAdaptor_cameraFv        */
void JStudio_JStage::TAdaptor_camera::adaptor_do_end() {
    adaptor_object_end_();
}

/* 8028BB4C-8028BBAC 28648C 0060+00 1/0 0/0 0/0 .text
 * adaptor_do_update__Q214JStudio_JStage15TAdaptor_cameraFUl    */
void JStudio_JStage::TAdaptor_camera::adaptor_do_update(u32 param_1) {
    const JStudio::TObject* pObject = adaptor_getObject();
    JUT_ASSERT(98, pObject != 0);
    JStudio::TControl* pControl = pObject->getControl();
    JUT_ASSERT(100, pControl != 0);
    setJSG_position_(pControl);
    setJSG_targetPosition_(pControl);
    pJSGObject_->JSGUpdate();
}

/* 8028BBAC-8028BBD0 2864EC 0024+00 1/0 0/0 0/0 .text
 * adaptor_do_data__Q214JStudio_JStage15TAdaptor_cameraFPCvUlPCvUl */
void JStudio_JStage::TAdaptor_camera::adaptor_do_data(void const* param_1, u32 param_2,
                                                      void const* param_3, u32 param_4) {
    adaptor_object_data_(param_1, param_2, param_3, param_4);
}

/* 8028BBD0-8028BC14 286510 0044+00 1/0 0/0 0/0 .text
 * adaptor_do_PARENT__Q214JStudio_JStage15TAdaptor_cameraFQ37JStudio4data15TEOperationDataPCvUl */
void JStudio_JStage::TAdaptor_camera::adaptor_do_PARENT(JStudio::data::TEOperationData param_1,
                                                        void const* pContent, u32 uSize) {
    switch(param_1) {
    case JStudio::data::UNK_0x18:
        JUT_ASSERT(132, pContent!=0);
        JUT_ASSERT(133, uSize!=0);
        field_0x10c = adaptor_object_findJSGObject_((char*)pContent);
        break;
    }
}

/* 8028BC14-8028BC70 286554 005C+00 1/0 0/0 0/0 .text
 * adaptor_do_PARENT_NODE__Q214JStudio_JStage15TAdaptor_cameraFQ37JStudio4data15TEOperationDataPCvUl
 */
void JStudio_JStage::TAdaptor_camera::adaptor_do_PARENT_NODE(JStudio::data::TEOperationData param_1,
                                                        void const* pContent, u32 uSize) {
    switch (param_1) {
    case JStudio::data::UNK_0x18:
        JUT_ASSERT(155, pContent!=0);
        JUT_ASSERT(156, uSize!=0);
        field_0x110 = adaptor_object_findJSGObjectNode_(field_0x10c, (char*)pContent);
        break;
    case JStudio::data::UNK_0x19:
        JUT_ASSERT(166, uSize==4);
        JUT_ASSERT(167, pContent!=0);
        field_0x110 = *(int*)pContent;
        break;
    }
}

/* 8028BC70-8028BCEC 2865B0 007C+00 1/0 0/0 0/0 .text
 * adaptor_do_PARENT_ENABLE__Q214JStudio_JStage15TAdaptor_cameraFQ37JStudio4data15TEOperationDataPCvUl
 */
void
JStudio_JStage::TAdaptor_camera::adaptor_do_PARENT_ENABLE(JStudio::data::TEOperationData param_1,
                                                          void const* pContent, u32 uSize) {
    switch (param_1) {
    case JStudio::data::UNK_0x2:
        JUT_ASSERT(185, uSize==4);
        JUT_ASSERT(186, pContent!=0);
        field_0x114 = *(u32*)pContent ? 1 : 0;
        switch(field_0x108) {
        case 1:
            JStage::TObject* parent = 0;
            int idx = -1;
            if (field_0x114 != 0) {
                parent = field_0x10c;
                idx = field_0x110;
            }
            pJSGObject_->JSGSetParent(parent, idx);
            break;
        case 0:
            break;
        }
        break;
    }
}

/* 8028BCEC-8028BD00 28662C 0014+00 1/0 0/0 0/0 .text
 * adaptor_do_PARENT_FUNCTION__Q214JStudio_JStage15TAdaptor_cameraFQ37JStudio4data15TEOperationDataPCvUl
 */
void
JStudio_JStage::TAdaptor_camera::adaptor_do_PARENT_FUNCTION(JStudio::data::TEOperationData param_1,
                                                          void const* pContent, u32 uSize) {
    switch(param_1) {
    case JStudio::data::UNK_0x2:
        JUT_ASSERT(226, uSize==4);
        JUT_ASSERT(227, pContent!=0);
        field_0x108 = *(int*)pContent;
        break;
    }
}

/* 8028BD00-8028BD44 286640 0044+00 1/0 0/0 0/0 .text
 * adaptor_do_TARGET_PARENT__Q214JStudio_JStage15TAdaptor_cameraFQ37JStudio4data15TEOperationDataPCvUl
 */
void JStudio_JStage::TAdaptor_camera::adaptor_do_TARGET_PARENT(
    JStudio::data::TEOperationData param_1, void const* pContent, u32 uSize) {
    switch(param_1) {
    case JStudio::data::UNK_0x18:
        JUT_ASSERT(247, pContent!=0);
        JUT_ASSERT(248, uSize!=0);
        field_0x118 = adaptor_object_findJSGObject_((char*)pContent);
        break;
    }
}

/* 8028BD44-8028BDA0 286684 005C+00 1/0 0/0 0/0 .text
 * adaptor_do_TARGET_PARENT_NODE__Q214JStudio_JStage15TAdaptor_cameraFQ37JStudio4data15TEOperationDataPCvUl
 */
void JStudio_JStage::TAdaptor_camera::adaptor_do_TARGET_PARENT_NODE(
    JStudio::data::TEOperationData param_1, void const* pContent, u32 uSize) {
    switch (param_1) {
    case JStudio::data::UNK_0x18:
        JUT_ASSERT(270, pContent!=0);
        JUT_ASSERT(271, uSize!=0);
        field_0x11c = adaptor_object_findJSGObjectNode_(field_0x118, (char*)pContent);
        break;
    case JStudio::data::UNK_0x19:
        JUT_ASSERT(282, uSize==4);
        JUT_ASSERT(283, pContent!=0);
        field_0x11c = *(int*)pContent;
        break;
    }
}

/* 8028BDA0-8028BDBC 2866E0 001C+00 1/0 0/0 0/0 .text
 * adaptor_do_TARGET_PARENT_ENABLE__Q214JStudio_JStage15TAdaptor_cameraFQ37JStudio4data15TEOperationDataPCvUl
 */
void JStudio_JStage::TAdaptor_camera::adaptor_do_TARGET_PARENT_ENABLE(
    JStudio::data::TEOperationData param_1, void const* pContent, u32 uSize) {
    switch(param_1) {
    case JStudio::data::UNK_0x2:
        JUT_ASSERT(301, uSize==4);
        JUT_ASSERT(302, pContent!=0);
        field_0x120 = *(int*)pContent ? 1 : 0;
        break;
    }
}

/* 8028BDBC-8028BEB8 2866FC 00FC+00 1/1 0/0 0/0 .text
 * setJSG_position___Q214JStudio_JStage15TAdaptor_cameraFPCQ27JStudio8TControl */
void JStudio_JStage::TAdaptor_camera::setJSG_position_(JStudio::TControl const* param_1) {
    JStudio::TControl::TTransform_position VStack_138;
    JStudio::TControl::TTransform_position VStack_144;
    adaptor_getVariableValue_Vec(&VStack_138, sauVariableValue_3_POSITION_XYZ);
    Vec* pViewPosition;
    if (field_0x114 == 0) {
        pViewPosition = param_1->transformOnSet_transform_ifEnabled(&VStack_138, &VStack_144);
    } else {
        pViewPosition = &VStack_138;
        switch (field_0x108) {
        case 0:
            int iVar1 =
                transform_toGlobalFromLocal(&VStack_144, VStack_138, field_0x10c, field_0x110);
            if (iVar1 == 0) {
                return;
            }
            pViewPosition = &VStack_144;
            break;
        case 1:
            break;
        }
    }
    get_pJSG_()->JSGSetViewPosition(*pViewPosition);
}

/* 8028BEB8-8028BFBC 2867F8 0104+00 1/1 0/0 0/0 .text
 * getJSG_position___Q214JStudio_JStage15TAdaptor_cameraFPCQ27JStudio8TControl */
void JStudio_JStage::TAdaptor_camera::getJSG_position_(JStudio::TControl const* param_1) {
    Mtx mtx;
    JStudio::TControl::TTransform_position transform;
    JStudio::TControl::TTransform_position tempTransform;
    JStudio::TControl::TTransform_position* outTransform;

    get_pJSG_()->JSGGetViewPosition(&transform);

    if (!field_0x114) {
        outTransform = param_1->transformOnGet_transform_ifEnabled(&transform, &tempTransform);
    } else {
        outTransform = &transform;
        switch (field_0x108) {
        case 0:
            bool check;
            if (!transform_toLocalFromGlobal(mtx, *outTransform, field_0x10c, field_0x110)) {
                check = false;
            } else {
                tempTransform.x = mtx[0][3];
                tempTransform.y = mtx[1][3];
                tempTransform.z = mtx[2][3];
                check = true;
            }

            if (!check) {
                return;
            }
            outTransform = &tempTransform;
            break;
        case 1:
            break;
        }
    }

    adaptor_setVariableValue_Vec(sauVariableValue_3_POSITION_XYZ, *outTransform);
}

/* 8028BFBC-8028C09C 2868FC 00E0+00 1/1 0/0 0/0 .text
 * setJSG_targetPosition___Q214JStudio_JStage15TAdaptor_cameraFPCQ27JStudio8TControl */
void JStudio_JStage::TAdaptor_camera::setJSG_targetPosition_(JStudio::TControl const* param_1) {
	JStudio::TControl::TTransform_position transform;
	JStudio::TControl::TTransform_position tempTransform;
	JStudio::TControl::TTransform_position* outTransform;
	adaptor_getVariableValue_Vec(&transform, sauVariableValue_3_TARGET_POSITION_XYZ);
    if (field_0x120 == 0) {
        outTransform = param_1->transformOnSet_transform_ifEnabled(
            &transform, &tempTransform);
    } else {
        if (transform_toGlobalFromLocal(&tempTransform, transform,
                                            field_0x118, field_0x11c) == 0) {
            return;
        }
        outTransform = &tempTransform;
    }
    get_pJSG_()->JSGSetViewTargetPosition(*outTransform);
}

/* 8028C09C-8028C180 2869DC 00E4+00 1/1 0/0 0/0 .text
 * getJSG_targetPosition___Q214JStudio_JStage15TAdaptor_cameraFPCQ27JStudio8TControl */
void JStudio_JStage::TAdaptor_camera::getJSG_targetPosition_(JStudio::TControl const* param_1) {
    Mtx mtx;
    JStudio::TControl::TTransform_position transform;
    JStudio::TControl::TTransform_position tempTransform;
    JStudio::TControl::TTransform_position* outTransform;

    get_pJSG_()->JSGGetViewTargetPosition(&transform);

    if (!field_0x120) {
        outTransform = param_1->transformOnGet_transform_ifEnabled(&transform, &tempTransform);
    } else {
        outTransform = &transform;
        bool check;
        if (!transform_toLocalFromGlobal(mtx, *outTransform, field_0x118, field_0x11c)) {
            check = false;
        } else {
            tempTransform.x = mtx[0][3];
            tempTransform.y = mtx[1][3];
            tempTransform.z = mtx[2][3];
            check = true;
        }

        if (!check) {
            return;
        }
        outTransform = &tempTransform;
    }

    adaptor_setVariableValue_Vec(sauVariableValue_3_TARGET_POSITION_XYZ, *outTransform);
}
