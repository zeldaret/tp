lbl_8003FFC4:
/* 8003FFC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8003FFC8  7C 08 02 A6 */	mflr r0
/* 8003FFCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8003FFD0  38 60 00 01 */	li r3, 1
/* 8003FFD4  38 80 00 00 */	li r4, 0
/* 8003FFD8  48 31 BE 61 */	bl GXSetMisc
/* 8003FFDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8003FFE0  7C 08 03 A6 */	mtlr r0
/* 8003FFE4  38 21 00 10 */	addi r1, r1, 0x10
/* 8003FFE8  4E 80 00 20 */	blr 
