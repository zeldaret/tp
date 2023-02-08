lbl_80D0C608:
/* 80D0C608  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0C60C  7C 08 02 A6 */	mflr r0
/* 80D0C610  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0C614  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80D0C618  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80D0C61C  7D 89 03 A6 */	mtctr r12
/* 80D0C620  4E 80 04 21 */	bctrl 
/* 80D0C624  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0C628  7C 08 03 A6 */	mtlr r0
/* 80D0C62C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0C630  4E 80 00 20 */	blr 
