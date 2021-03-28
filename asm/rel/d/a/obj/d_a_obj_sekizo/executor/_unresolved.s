lbl_80CCDB78:
/* 80CCDB78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCDB7C  7C 08 02 A6 */	mflr r0
/* 80CCDB80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCDB84  4B 59 55 0C */	b ModuleUnresolved
/* 80CCDB88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCDB8C  7C 08 03 A6 */	mtlr r0
/* 80CCDB90  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCDB94  4E 80 00 20 */	blr 
