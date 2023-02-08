lbl_80C04AE8:
/* 80C04AE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C04AEC  7C 08 02 A6 */	mflr r0
/* 80C04AF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C04AF4  81 83 05 68 */	lwz r12, 0x568(r3)
/* 80C04AF8  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 80C04AFC  7D 89 03 A6 */	mtctr r12
/* 80C04B00  4E 80 04 21 */	bctrl 
/* 80C04B04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C04B08  7C 08 03 A6 */	mtlr r0
/* 80C04B0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80C04B10  4E 80 00 20 */	blr 
