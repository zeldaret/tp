lbl_80D0BBF8:
/* 80D0BBF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0BBFC  7C 08 02 A6 */	mflr r0
/* 80D0BC00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0BC04  4B 55 74 8C */	b ModuleUnresolved
/* 80D0BC08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0BC0C  7C 08 03 A6 */	mtlr r0
/* 80D0BC10  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0BC14  4E 80 00 20 */	blr 
