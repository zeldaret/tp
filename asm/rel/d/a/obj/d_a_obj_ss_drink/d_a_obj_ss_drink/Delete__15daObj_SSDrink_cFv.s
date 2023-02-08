lbl_80CE55F0:
/* 80CE55F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE55F4  7C 08 02 A6 */	mflr r0
/* 80CE55F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE55FC  38 80 FF FF */	li r4, -1
/* 80CE5600  81 83 05 68 */	lwz r12, 0x568(r3)
/* 80CE5604  81 8C 00 08 */	lwz r12, 8(r12)
/* 80CE5608  7D 89 03 A6 */	mtctr r12
/* 80CE560C  4E 80 04 21 */	bctrl 
/* 80CE5610  38 60 00 01 */	li r3, 1
/* 80CE5614  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE5618  7C 08 03 A6 */	mtlr r0
/* 80CE561C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE5620  4E 80 00 20 */	blr 
