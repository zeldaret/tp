lbl_801CC284:
/* 801CC284  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CC288  7C 08 02 A6 */	mflr r0
/* 801CC28C  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CC290  81 83 00 00 */	lwz r12, 0(r3)
/* 801CC294  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 801CC298  7D 89 03 A6 */	mtctr r12
/* 801CC29C  4E 80 04 21 */	bctrl 
/* 801CC2A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CC2A4  7C 08 03 A6 */	mtlr r0
/* 801CC2A8  38 21 00 10 */	addi r1, r1, 0x10
/* 801CC2AC  4E 80 00 20 */	blr 
