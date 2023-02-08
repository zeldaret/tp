lbl_80D04B64:
/* 80D04B64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D04B68  7C 08 02 A6 */	mflr r0
/* 80D04B6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D04B70  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80D04B74  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80D04B78  7D 89 03 A6 */	mtctr r12
/* 80D04B7C  4E 80 04 21 */	bctrl 
/* 80D04B80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D04B84  7C 08 03 A6 */	mtlr r0
/* 80D04B88  38 21 00 10 */	addi r1, r1, 0x10
/* 80D04B8C  4E 80 00 20 */	blr 
