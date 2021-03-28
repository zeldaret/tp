lbl_800236C0:
/* 800236C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800236C4  7C 08 02 A6 */	mflr r0
/* 800236C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 800236CC  39 61 00 20 */	addi r11, r1, 0x20
/* 800236D0  48 33 EB 09 */	bl _savegpr_28
/* 800236D4  7C 7C 1B 78 */	mr r28, r3
/* 800236D8  7C 9D 23 78 */	mr r29, r4
/* 800236DC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800236E0  83 E3 00 2C */	lwz r31, 0x2c(r3)
/* 800236E4  4B FF E0 11 */	bl fpcLy_CurrentLayer__Fv
/* 800236E8  7C 7E 1B 78 */	mr r30, r3
/* 800236EC  7F E3 FB 78 */	mr r3, r31
/* 800236F0  4B FF DF FD */	bl fpcLy_SetCurrentLayer__FP11layer_class
/* 800236F4  7F 83 E3 78 */	mr r3, r28
/* 800236F8  7F A4 EB 78 */	mr r4, r29
/* 800236FC  48 24 33 81 */	bl cTgIt_MethodCall__FP16create_tag_classP13method_filter
/* 80023700  7C 7F 1B 78 */	mr r31, r3
/* 80023704  7F C3 F3 78 */	mr r3, r30
/* 80023708  4B FF DF E5 */	bl fpcLy_SetCurrentLayer__FP11layer_class
/* 8002370C  7F E3 FB 78 */	mr r3, r31
/* 80023710  39 61 00 20 */	addi r11, r1, 0x20
/* 80023714  48 33 EB 11 */	bl _restgpr_28
/* 80023718  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8002371C  7C 08 03 A6 */	mtlr r0
/* 80023720  38 21 00 20 */	addi r1, r1, 0x20
/* 80023724  4E 80 00 20 */	blr 
