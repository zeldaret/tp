lbl_80371DE0:
/* 80371DE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80371DE4  7C 08 02 A6 */	mflr r0
/* 80371DE8  3C 60 80 3D */	lis r3, gDBCommTable@ha
/* 80371DEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80371DF0  38 63 32 A8 */	addi r3, r3, gDBCommTable@l
/* 80371DF4  81 83 00 0C */	lwz r12, 0xc(r3)
/* 80371DF8  7D 89 03 A6 */	mtctr r12
/* 80371DFC  4E 80 04 21 */	bctrl 
/* 80371E00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80371E04  7C 08 03 A6 */	mtlr r0
/* 80371E08  38 21 00 10 */	addi r1, r1, 0x10
/* 80371E0C  4E 80 00 20 */	blr 
