lbl_8001A188:
/* 8001A188  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8001A18C  7C 08 02 A6 */	mflr r0
/* 8001A190  90 01 00 24 */	stw r0, 0x24(r1)
/* 8001A194  39 61 00 20 */	addi r11, r1, 0x20
/* 8001A198  48 34 80 45 */	bl _savegpr_29
/* 8001A19C  7C 7D 1B 78 */	mr r29, r3
/* 8001A1A0  7C 9E 23 78 */	mr r30, r4
/* 8001A1A4  7C A3 2B 78 */	mr r3, r5
/* 8001A1A8  4B FF 50 25 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 8001A1AC  7C 7F 1B 78 */	mr r31, r3
/* 8001A1B0  7F A3 EB 78 */	mr r3, r29
/* 8001A1B4  7F CC F3 78 */	mr r12, r30
/* 8001A1B8  7D 89 03 A6 */	mtctr r12
/* 8001A1BC  4E 80 04 21 */	bctrl 
/* 8001A1C0  7C 7E 1B 78 */	mr r30, r3
/* 8001A1C4  7F E3 FB 78 */	mr r3, r31
/* 8001A1C8  4B FF 50 05 */	bl mDoExt_setCurrentHeap__FP7JKRHeap
/* 8001A1CC  7F C3 F3 78 */	mr r3, r30
/* 8001A1D0  39 61 00 20 */	addi r11, r1, 0x20
/* 8001A1D4  48 34 80 55 */	bl _restgpr_29
/* 8001A1D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8001A1DC  7C 08 03 A6 */	mtlr r0
/* 8001A1E0  38 21 00 20 */	addi r1, r1, 0x20
/* 8001A1E4  4E 80 00 20 */	blr 
