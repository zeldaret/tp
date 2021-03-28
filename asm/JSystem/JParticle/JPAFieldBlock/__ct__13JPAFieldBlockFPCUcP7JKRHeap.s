lbl_8027D088:
/* 8027D088  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027D08C  7C 08 02 A6 */	mflr r0
/* 8027D090  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027D094  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8027D098  7C 7F 1B 78 */	mr r31, r3
/* 8027D09C  90 83 00 00 */	stw r4, 0(r3)
/* 8027D0A0  7C A4 2B 78 */	mr r4, r5
/* 8027D0A4  48 00 00 1D */	bl init__13JPAFieldBlockFP7JKRHeap
/* 8027D0A8  7F E3 FB 78 */	mr r3, r31
/* 8027D0AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027D0B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027D0B4  7C 08 03 A6 */	mtlr r0
/* 8027D0B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8027D0BC  4E 80 00 20 */	blr 
