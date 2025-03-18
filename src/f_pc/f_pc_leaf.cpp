/**
 * f_pc_leaf.cpp
 * Framework - Process Leaf
 */

#include "f_pc/f_pc_leaf.h"
#include "f_pc/f_pc_debug_sv.h"

/* 80021A00-80021A24 0024+00 s=0 e=4 z=2  None .text      fpcLf_GetPriority__FPC14leafdraw_class */
s16 fpcLf_GetPriority(const leafdraw_class* i_leaf) {
    return fpcDwPi_Get(&i_leaf->draw_priority);
}

/* 80021A24-80021A48 0024+00 s=1 e=6 z=0  None .text fpcLf_DrawMethod__FP21leafdraw_method_classPv
 */
s32 fpcLf_DrawMethod(leafdraw_method_class* i_methods, void* i_process) {
    return fpcMtd_Method(i_methods->draw_method, i_process);
}

/* 80021A48-80021A80 0038+00 s=1 e=0 z=0  None .text      fpcLf_Draw__FP14leafdraw_class */
s32 fpcLf_Draw(leafdraw_class* i_leaf) {
    s32 ret = 0;
    if (i_leaf->unk_0xBC == 0)
        ret = fpcLf_DrawMethod(i_leaf->leaf_methods, i_leaf);
    return ret;
}

/* 80021A80-80021AA8 0028+00 s=1 e=0 z=0  None .text      fpcLf_Execute__FP14leafdraw_class */
s32 fpcLf_Execute(leafdraw_class* i_leaf) {
#ifdef DEBUG
    if (fpcBs_Is_JustOfType(g_fpcLf_type, i_leaf->base.subtype) == 0) {
        if (g_fpcDbSv_service[12] != NULL) {
            g_fpcDbSv_service[12](i_leaf);
        }
        return 0;
    }
#endif
    return fpcMtd_Execute(&i_leaf->leaf_methods->base, i_leaf);
}

/* 80021AA8-80021AD0 0028+00 s=1 e=0 z=0  None .text      fpcLf_IsDelete__FP14leafdraw_class */
s32 fpcLf_IsDelete(leafdraw_class* i_leaf) {
    return fpcMtd_IsDelete(&i_leaf->leaf_methods->base, i_leaf);
}

/* 80021AD0-80021B14 0044+00 s=1 e=0 z=0  None .text      fpcLf_Delete__FP14leafdraw_class */
s32 fpcLf_Delete(leafdraw_class* i_leaf) {
    s32 ret = fpcMtd_Delete(&i_leaf->leaf_methods->base, i_leaf);
    if (ret == 1) {
        i_leaf->base.subtype = 0;
    }
    return ret;
}

/* 80450D30-80450D38 0004+04 s=1 e=1 z=0  None .sbss      g_fpcLf_type */
int g_fpcLf_type;

/* 80021B14-80021B88 0074+00 s=1 e=0 z=0  None .text      fpcLf_Create__FP14leafdraw_class */
s32 fpcLf_Create(leafdraw_class* i_leaf) {
    if (i_leaf->base.init_state == 0) {
        leaf_process_profile_definition* pprofile = (leaf_process_profile_definition*)i_leaf->base.profile;
        i_leaf->leaf_methods = pprofile->sub_method;
        i_leaf->base.subtype = fpcBs_MakeOfType(&g_fpcLf_type);
        fpcDwPi_Init(&i_leaf->draw_priority, pprofile->priority);
        i_leaf->unk_0xBC = 0;
    }

    int ret = fpcMtd_Create(&i_leaf->leaf_methods->base, i_leaf);
    return ret;
}

/* 803A39E8-803A3A00 0014+04 s=0 e=27 z=756  None .data      g_fpcLf_Method */
leafdraw_method_class g_fpcLf_Method = {
    (process_method_func)fpcLf_Create,  (process_method_func)fpcLf_Delete,
    (process_method_func)fpcLf_Execute, (process_method_func)fpcLf_IsDelete,
    (process_method_func)fpcLf_Draw,
};
