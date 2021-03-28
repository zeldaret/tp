lbl_80AADD18:
/* 80AADD18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AADD1C  7C 08 02 A6 */	mflr r0
/* 80AADD20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AADD24  4B 7B 53 6C */	b ModuleUnresolved
/* 80AADD28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AADD2C  7C 08 03 A6 */	mtlr r0
/* 80AADD30  38 21 00 10 */	addi r1, r1, 0x10
/* 80AADD34  4E 80 00 20 */	blr 
