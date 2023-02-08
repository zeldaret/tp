lbl_80CCE0A4:
/* 80CCE0A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCE0A8  7C 08 02 A6 */	mflr r0
/* 80CCE0AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCE0B0  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80CCE0B4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80CCE0B8  7D 89 03 A6 */	mtctr r12
/* 80CCE0BC  4E 80 04 21 */	bctrl 
/* 80CCE0C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCE0C4  7C 08 03 A6 */	mtlr r0
/* 80CCE0C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCE0CC  4E 80 00 20 */	blr 
