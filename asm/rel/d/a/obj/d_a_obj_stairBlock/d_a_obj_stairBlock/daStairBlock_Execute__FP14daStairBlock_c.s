lbl_80CE8C64:
/* 80CE8C64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CE8C68  7C 08 02 A6 */	mflr r0
/* 80CE8C6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CE8C70  81 83 05 68 */	lwz r12, 0x568(r3)
/* 80CE8C74  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80CE8C78  7D 89 03 A6 */	mtctr r12
/* 80CE8C7C  4E 80 04 21 */	bctrl 
/* 80CE8C80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CE8C84  7C 08 03 A6 */	mtlr r0
/* 80CE8C88  38 21 00 10 */	addi r1, r1, 0x10
/* 80CE8C8C  4E 80 00 20 */	blr 
