lbl_8001FC4C:
/* 8001FC4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001FC50  7C 08 02 A6 */	mflr r0
/* 8001FC54  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001FC58  39 61 00 20 */	addi r11, r1, 0x20
/* 8001FC5C  48 34 25 81 */	bl _savegpr_29
/* 8001FC60  7C 7D 1B 78 */	mr r29, r3
/* 8001FC64  7D 1E 43 78 */	mr r30, r8
/* 8001FC68  7C 83 23 78 */	mr r3, r4
/* 8001FC6C  7C A4 2B 78 */	mr r4, r5
/* 8001FC70  7C C5 33 78 */	mr r5, r6
/* 8001FC74  7C E6 3B 78 */	mr r6, r7
/* 8001FC78  38 E0 FF FF */	li r7, -1
/* 8001FC7C  4B FF FD F1 */	bl createAppend__FP10fopAc_ac_cP4cXyzPUlPUlUi
/* 8001FC80  7C 7F 1B 79 */	or. r31, r3, r3
/* 8001FC84  40 82 00 0C */	bne lbl_8001FC90
/* 8001FC88  38 60 FF FF */	li r3, -1
/* 8001FC8C  48 00 00 1C */	b lbl_8001FCA8
lbl_8001FC90:
/* 8001FC90  48 00 1A 65 */	bl fpcLy_CurrentLayer__Fv
/* 8001FC94  7F A4 EB 78 */	mr r4, r29
/* 8001FC98  7F C5 F3 78 */	mr r5, r30
/* 8001FC9C  38 C0 00 00 */	li r6, 0
/* 8001FCA0  7F E7 FB 78 */	mr r7, r31
/* 8001FCA4  48 00 40 F1 */	bl fpcSCtRq_Request__FP11layer_classsPFPvPv_iPvPv
lbl_8001FCA8:
/* 8001FCA8  39 61 00 20 */	addi r11, r1, 0x20
/* 8001FCAC  48 34 25 7D */	bl _restgpr_29
/* 8001FCB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001FCB4  7C 08 03 A6 */	mtlr r0
/* 8001FCB8  38 21 00 20 */	addi r1, r1, 0x20
/* 8001FCBC  4E 80 00 20 */	blr 
