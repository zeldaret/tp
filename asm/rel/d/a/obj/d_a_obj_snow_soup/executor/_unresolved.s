lbl_80CDF838:
/* 80CDF838  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDF83C  7C 08 02 A6 */	mflr r0
/* 80CDF840  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDF844  4B 58 38 4C */	b ModuleUnresolved
/* 80CDF848  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDF84C  7C 08 03 A6 */	mtlr r0
/* 80CDF850  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDF854  4E 80 00 20 */	blr 
