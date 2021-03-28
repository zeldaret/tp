lbl_8000F1AC:
/* 8000F1AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000F1B0  7C 08 02 A6 */	mflr r0
/* 8000F1B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000F1B8  48 2B F2 91 */	bl destroy__7JKRHeapFv
/* 8000F1BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000F1C0  7C 08 03 A6 */	mtlr r0
/* 8000F1C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8000F1C8  4E 80 00 20 */	blr 
