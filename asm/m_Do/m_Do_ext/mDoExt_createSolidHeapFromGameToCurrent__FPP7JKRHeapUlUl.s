lbl_8000EFF4:
/* 8000EFF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8000EFF8  7C 08 02 A6 */	mflr r0
/* 8000EFFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8000F000  39 61 00 20 */	addi r11, r1, 0x20
/* 8000F004  48 35 31 D9 */	bl _savegpr_29
/* 8000F008  7C 7D 1B 78 */	mr r29, r3
/* 8000F00C  7C 9E 23 78 */	mr r30, r4
/* 8000F010  7C BF 2B 78 */	mr r31, r5
/* 8000F014  4B FF FD 3D */	bl mDoExt_getGameHeap__Fv
/* 8000F018  7C 65 1B 78 */	mr r5, r3
/* 8000F01C  7F A3 EB 78 */	mr r3, r29
/* 8000F020  7F C4 F3 78 */	mr r4, r30
/* 8000F024  7F E6 FB 78 */	mr r6, r31
/* 8000F028  4B FF FF 41 */	bl mDoExt_createSolidHeapToCurrent__FPP7JKRHeapUlP7JKRHeapUl
/* 8000F02C  39 61 00 20 */	addi r11, r1, 0x20
/* 8000F030  48 35 31 F9 */	bl _restgpr_29
/* 8000F034  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8000F038  7C 08 03 A6 */	mtlr r0
/* 8000F03C  38 21 00 20 */	addi r1, r1, 0x20
/* 8000F040  4E 80 00 20 */	blr 
