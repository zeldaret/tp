lbl_800222F4:
/* 800222F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800222F8  7C 08 02 A6 */	mflr r0
/* 800222FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80022300  39 61 00 20 */	addi r11, r1, 0x20
/* 80022304  48 33 FE D5 */	bl _savegpr_28
/* 80022308  7C 7C 1B 78 */	mr r28, r3
/* 8002230C  7C 9D 23 78 */	mr r29, r4
/* 80022310  7C BE 2B 78 */	mr r30, r5
/* 80022314  7C DF 33 78 */	mr r31, r6
/* 80022318  4B FF F3 DD */	bl fpcLy_CurrentLayer__Fv
/* 8002231C  7F 84 E3 78 */	mr r4, r28
/* 80022320  7F A5 EB 78 */	mr r5, r29
/* 80022324  7F C6 F3 78 */	mr r6, r30
/* 80022328  7F E7 FB 78 */	mr r7, r31
/* 8002232C  48 00 17 75 */	bl fpcFCtRq_Request__FP11layer_classsPFPvPv_iPvPv
/* 80022330  39 61 00 20 */	addi r11, r1, 0x20
/* 80022334  48 33 FE F1 */	bl _restgpr_28
/* 80022338  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8002233C  7C 08 03 A6 */	mtlr r0
/* 80022340  38 21 00 20 */	addi r1, r1, 0x20
/* 80022344  4E 80 00 20 */	blr 
