lbl_80B6C700:
/* 80B6C700  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6C704  7C 08 02 A6 */	mflr r0
/* 80B6C708  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6C70C  38 80 FF FF */	li r4, -1
/* 80B6C710  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80B6C714  81 8C 00 08 */	lwz r12, 8(r12)
/* 80B6C718  7D 89 03 A6 */	mtctr r12
/* 80B6C71C  4E 80 04 21 */	bctrl 
/* 80B6C720  38 60 00 01 */	li r3, 1
/* 80B6C724  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6C728  7C 08 03 A6 */	mtlr r0
/* 80B6C72C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6C730  4E 80 00 20 */	blr 
