lbl_80BF60D8:
/* 80BF60D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF60DC  7C 08 02 A6 */	mflr r0
/* 80BF60E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF60E4  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80BF60E8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80BF60EC  7D 89 03 A6 */	mtctr r12
/* 80BF60F0  4E 80 04 21 */	bctrl 
/* 80BF60F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF60F8  7C 08 03 A6 */	mtlr r0
/* 80BF60FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF6100  4E 80 00 20 */	blr 
