lbl_8055B4F8:
/* 8055B4F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055B4FC  7C 08 02 A6 */	mflr r0
/* 8055B500  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055B504  4B D0 7B 8C */	b ModuleUnresolved
/* 8055B508  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055B50C  7C 08 03 A6 */	mtlr r0
/* 8055B510  38 21 00 10 */	addi r1, r1, 0x10
/* 8055B514  4E 80 00 20 */	blr 
