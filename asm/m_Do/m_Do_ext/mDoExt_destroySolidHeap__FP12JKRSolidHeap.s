lbl_8000F18C:
/* 8000F18C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000F190  7C 08 02 A6 */	mflr r0
/* 8000F194  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000F198  48 2B F2 B1 */	bl destroy__7JKRHeapFv
/* 8000F19C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000F1A0  7C 08 03 A6 */	mtlr r0
/* 8000F1A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8000F1A8  4E 80 00 20 */	blr 
