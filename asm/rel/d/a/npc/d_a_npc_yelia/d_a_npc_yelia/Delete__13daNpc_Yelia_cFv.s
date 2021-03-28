lbl_80B4DC20:
/* 80B4DC20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4DC24  7C 08 02 A6 */	mflr r0
/* 80B4DC28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4DC2C  38 80 FF FF */	li r4, -1
/* 80B4DC30  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80B4DC34  81 8C 00 08 */	lwz r12, 8(r12)
/* 80B4DC38  7D 89 03 A6 */	mtctr r12
/* 80B4DC3C  4E 80 04 21 */	bctrl 
/* 80B4DC40  38 60 00 01 */	li r3, 1
/* 80B4DC44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4DC48  7C 08 03 A6 */	mtlr r0
/* 80B4DC4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4DC50  4E 80 00 20 */	blr 
