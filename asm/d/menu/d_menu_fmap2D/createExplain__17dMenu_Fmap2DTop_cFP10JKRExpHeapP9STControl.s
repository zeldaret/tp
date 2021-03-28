lbl_801D7640:
/* 801D7640  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801D7644  7C 08 02 A6 */	mflr r0
/* 801D7648  90 01 00 24 */	stw r0, 0x24(r1)
/* 801D764C  39 61 00 20 */	addi r11, r1, 0x20
/* 801D7650  48 18 AB 8D */	bl _savegpr_29
/* 801D7654  7C 7D 1B 78 */	mr r29, r3
/* 801D7658  7C BE 2B 78 */	mr r30, r5
/* 801D765C  80 03 00 6C */	lwz r0, 0x6c(r3)
/* 801D7660  28 00 00 00 */	cmplwi r0, 0
/* 801D7664  40 82 00 44 */	bne lbl_801D76A8
/* 801D7668  7C 83 23 78 */	mr r3, r4
/* 801D766C  4B E3 7B 61 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801D7670  7C 7F 1B 78 */	mr r31, r3
/* 801D7674  38 60 00 68 */	li r3, 0x68
/* 801D7678  48 0F 75 D5 */	bl __nw__FUl
/* 801D767C  7C 60 1B 79 */	or. r0, r3, r3
/* 801D7680  41 82 00 1C */	beq lbl_801D769C
/* 801D7684  7F C4 F3 78 */	mr r4, r30
/* 801D7688  38 A0 00 00 */	li r5, 0
/* 801D768C  38 C0 00 00 */	li r6, 0
/* 801D7690  38 E0 00 01 */	li r7, 1
/* 801D7694  48 06 55 F5 */	bl __ct__17dMsgScrnExplain_cFP9STControlUcbUc
/* 801D7698  7C 60 1B 78 */	mr r0, r3
lbl_801D769C:
/* 801D769C  90 1D 00 6C */	stw r0, 0x6c(r29)
/* 801D76A0  7F E3 FB 78 */	mr r3, r31
/* 801D76A4  4B E3 7B 29 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
lbl_801D76A8:
/* 801D76A8  39 61 00 20 */	addi r11, r1, 0x20
/* 801D76AC  48 18 AB 7D */	bl _restgpr_29
/* 801D76B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801D76B4  7C 08 03 A6 */	mtlr r0
/* 801D76B8  38 21 00 20 */	addi r1, r1, 0x20
/* 801D76BC  4E 80 00 20 */	blr 
