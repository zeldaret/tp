lbl_80CDD6E8:
/* 80CDD6E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDD6EC  7C 08 02 A6 */	mflr r0
/* 80CDD6F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDD6F4  38 80 FF FF */	li r4, -1
/* 80CDD6F8  81 83 0B 2C */	lwz r12, 0xb2c(r3)
/* 80CDD6FC  81 8C 00 08 */	lwz r12, 8(r12)
/* 80CDD700  7D 89 03 A6 */	mtctr r12
/* 80CDD704  4E 80 04 21 */	bctrl 
/* 80CDD708  38 60 00 01 */	li r3, 1
/* 80CDD70C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDD710  7C 08 03 A6 */	mtlr r0
/* 80CDD714  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDD718  4E 80 00 20 */	blr 
