lbl_80020108:
/* 80020108  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8002010C  7C 08 02 A6 */	mflr r0
/* 80020110  90 01 00 24 */	stw r0, 0x24(r1)
/* 80020114  39 61 00 20 */	addi r11, r1, 0x20
/* 80020118  48 34 20 C5 */	bl _savegpr_29
/* 8002011C  7C 7D 1B 78 */	mr r29, r3
/* 80020120  7C 9E 23 78 */	mr r30, r4
/* 80020124  7C BF 2B 78 */	mr r31, r5
/* 80020128  48 00 15 CD */	bl fpcLy_CurrentLayer__Fv
/* 8002012C  7F A4 EB 78 */	mr r4, r29
/* 80020130  7F C5 F3 78 */	mr r5, r30
/* 80020134  38 C0 00 00 */	li r6, 0
/* 80020138  7F E7 FB 78 */	mr r7, r31
/* 8002013C  48 00 3C 59 */	bl fpcSCtRq_Request__FP11layer_classsPFPvPv_iPvPv
/* 80020140  39 61 00 20 */	addi r11, r1, 0x20
/* 80020144  48 34 20 E5 */	bl _restgpr_29
/* 80020148  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8002014C  7C 08 03 A6 */	mtlr r0
/* 80020150  38 21 00 20 */	addi r1, r1, 0x20
/* 80020154  4E 80 00 20 */	blr 
