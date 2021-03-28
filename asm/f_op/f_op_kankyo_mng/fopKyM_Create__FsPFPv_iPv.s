lbl_8001F768:
/* 8001F768  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001F76C  7C 08 02 A6 */	mflr r0
/* 8001F770  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001F774  39 61 00 20 */	addi r11, r1, 0x20
/* 8001F778  48 34 2A 65 */	bl _savegpr_29
/* 8001F77C  7C 7D 1B 78 */	mr r29, r3
/* 8001F780  7C 9E 23 78 */	mr r30, r4
/* 8001F784  7C BF 2B 78 */	mr r31, r5
/* 8001F788  48 00 1F 6D */	bl fpcLy_CurrentLayer__Fv
/* 8001F78C  7F A4 EB 78 */	mr r4, r29
/* 8001F790  7F C5 F3 78 */	mr r5, r30
/* 8001F794  38 C0 00 00 */	li r6, 0
/* 8001F798  7F E7 FB 78 */	mr r7, r31
/* 8001F79C  48 00 45 F9 */	bl fpcSCtRq_Request__FP11layer_classsPFPvPv_iPvPv
/* 8001F7A0  39 61 00 20 */	addi r11, r1, 0x20
/* 8001F7A4  48 34 2A 85 */	bl _restgpr_29
/* 8001F7A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001F7AC  7C 08 03 A6 */	mtlr r0
/* 8001F7B0  38 21 00 20 */	addi r1, r1, 0x20
/* 8001F7B4  4E 80 00 20 */	blr 
