lbl_80B9E4E0:
/* 80B9E4E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9E4E4  7C 08 02 A6 */	mflr r0
/* 80B9E4E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9E4EC  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80B9E4F0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80B9E4F4  7D 89 03 A6 */	mtctr r12
/* 80B9E4F8  4E 80 04 21 */	bctrl 
/* 80B9E4FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9E500  7C 08 03 A6 */	mtlr r0
/* 80B9E504  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9E508  4E 80 00 20 */	blr 
