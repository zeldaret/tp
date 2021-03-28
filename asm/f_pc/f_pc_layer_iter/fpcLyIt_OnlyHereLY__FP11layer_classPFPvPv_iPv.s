lbl_80021BC0:
/* 80021BC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80021BC4  7C 08 02 A6 */	mflr r0
/* 80021BC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80021BCC  39 61 00 20 */	addi r11, r1, 0x20
/* 80021BD0  48 34 06 09 */	bl _savegpr_28
/* 80021BD4  7C 7C 1B 78 */	mr r28, r3
/* 80021BD8  7C 9D 23 78 */	mr r29, r4
/* 80021BDC  7C BF 2B 78 */	mr r31, r5
/* 80021BE0  4B FF FB 15 */	bl fpcLy_CurrentLayer__Fv
/* 80021BE4  7C 7E 1B 78 */	mr r30, r3
/* 80021BE8  7F 83 E3 78 */	mr r3, r28
/* 80021BEC  4B FF FB 01 */	bl fpcLy_SetCurrentLayer__FP11layer_class
/* 80021BF0  7F 83 E3 78 */	mr r3, r28
/* 80021BF4  7F A4 EB 78 */	mr r4, r29
/* 80021BF8  7F E5 FB 78 */	mr r5, r31
/* 80021BFC  4B FF FF 8D */	bl fpcLyIt_OnlyHere__FP11layer_classPFPvPv_iPv
/* 80021C00  7C 7F 1B 78 */	mr r31, r3
/* 80021C04  7F C3 F3 78 */	mr r3, r30
/* 80021C08  4B FF FA E5 */	bl fpcLy_SetCurrentLayer__FP11layer_class
/* 80021C0C  7F E3 FB 78 */	mr r3, r31
/* 80021C10  39 61 00 20 */	addi r11, r1, 0x20
/* 80021C14  48 34 06 11 */	bl _restgpr_28
/* 80021C18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80021C1C  7C 08 03 A6 */	mtlr r0
/* 80021C20  38 21 00 20 */	addi r1, r1, 0x20
/* 80021C24  4E 80 00 20 */	blr 
