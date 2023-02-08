lbl_801B4E14:
/* 801B4E14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801B4E18  7C 08 02 A6 */	mflr r0
/* 801B4E1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801B4E20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801B4E24  93 C1 00 08 */	stw r30, 8(r1)
/* 801B4E28  7C 7E 1B 78 */	mr r30, r3
/* 801B4E2C  80 63 00 08 */	lwz r3, 8(r3)
/* 801B4E30  4B E5 A3 9D */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B4E34  7C 7F 1B 78 */	mr r31, r3
/* 801B4E38  80 1E 00 90 */	lwz r0, 0x90(r30)
/* 801B4E3C  28 00 00 00 */	cmplwi r0, 0
/* 801B4E40  40 82 00 20 */	bne lbl_801B4E60
/* 801B4E44  38 60 21 A4 */	li r3, 0x21a4
/* 801B4E48  48 11 9E 05 */	bl __nw__FUl
/* 801B4E4C  7C 60 1B 79 */	or. r0, r3, r3
/* 801B4E50  41 82 00 0C */	beq lbl_801B4E5C
/* 801B4E54  48 03 A8 4D */	bl __ct__12dMenu_save_cFv
/* 801B4E58  7C 60 1B 78 */	mr r0, r3
lbl_801B4E5C:
/* 801B4E5C  90 1E 00 90 */	stw r0, 0x90(r30)
lbl_801B4E60:
/* 801B4E60  38 00 00 01 */	li r0, 1
/* 801B4E64  80 7E 00 90 */	lwz r3, 0x90(r30)
/* 801B4E68  98 03 01 BC */	stb r0, 0x1bc(r3)
/* 801B4E6C  80 7E 00 90 */	lwz r3, 0x90(r30)
/* 801B4E70  48 03 A9 3D */	bl _create__12dMenu_save_cFv
/* 801B4E74  80 7E 00 90 */	lwz r3, 0x90(r30)
/* 801B4E78  48 03 BA C1 */	bl initialize__12dMenu_save_cFv
/* 801B4E7C  7F C3 F3 78 */	mr r3, r30
/* 801B4E80  38 80 00 00 */	li r4, 0
/* 801B4E84  48 00 11 31 */	bl setAButtonString__17dMenu_Collect2D_cFUs
/* 801B4E88  7F C3 F3 78 */	mr r3, r30
/* 801B4E8C  38 80 00 00 */	li r4, 0
/* 801B4E90  48 00 12 29 */	bl setBButtonString__17dMenu_Collect2D_cFUs
/* 801B4E94  38 00 00 00 */	li r0, 0
/* 801B4E98  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 801B4E9C  98 03 00 B4 */	stb r0, 0xb4(r3)
/* 801B4EA0  7F E3 FB 78 */	mr r3, r31
/* 801B4EA4  4B E5 A3 29 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 801B4EA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801B4EAC  83 C1 00 08 */	lwz r30, 8(r1)
/* 801B4EB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801B4EB4  7C 08 03 A6 */	mtlr r0
/* 801B4EB8  38 21 00 10 */	addi r1, r1, 0x10
/* 801B4EBC  4E 80 00 20 */	blr 
