lbl_800D0B60:
/* 800D0B60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D0B64  7C 08 02 A6 */	mflr r0
/* 800D0B68  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D0B6C  85 83 2C A8 */	lwzu r12, 0x2ca8(r3)
/* 800D0B70  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 800D0B74  7D 89 03 A6 */	mtctr r12
/* 800D0B78  4E 80 04 21 */	bctrl 
/* 800D0B7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D0B80  7C 08 03 A6 */	mtlr r0
/* 800D0B84  38 21 00 10 */	addi r1, r1, 0x10
/* 800D0B88  4E 80 00 20 */	blr 
