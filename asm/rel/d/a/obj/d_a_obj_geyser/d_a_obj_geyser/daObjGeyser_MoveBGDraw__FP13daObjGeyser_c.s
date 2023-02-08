lbl_80BF8F6C:
/* 80BF8F6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF8F70  7C 08 02 A6 */	mflr r0
/* 80BF8F74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF8F78  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80BF8F7C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80BF8F80  7D 89 03 A6 */	mtctr r12
/* 80BF8F84  4E 80 04 21 */	bctrl 
/* 80BF8F88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF8F8C  7C 08 03 A6 */	mtlr r0
/* 80BF8F90  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF8F94  4E 80 00 20 */	blr 
