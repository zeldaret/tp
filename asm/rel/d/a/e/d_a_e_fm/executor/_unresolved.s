lbl_804EF058:
/* 804EF058  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EF05C  7C 08 02 A6 */	mflr r0
/* 804EF060  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EF064  4B D7 40 2C */	b ModuleUnresolved
/* 804EF068  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EF06C  7C 08 03 A6 */	mtlr r0
/* 804EF070  38 21 00 10 */	addi r1, r1, 0x10
/* 804EF074  4E 80 00 20 */	blr 
