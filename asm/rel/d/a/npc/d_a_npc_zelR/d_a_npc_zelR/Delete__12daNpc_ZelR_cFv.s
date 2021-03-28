lbl_80B6F664:
/* 80B6F664  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6F668  7C 08 02 A6 */	mflr r0
/* 80B6F66C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6F670  38 80 FF FF */	li r4, -1
/* 80B6F674  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80B6F678  81 8C 00 08 */	lwz r12, 8(r12)
/* 80B6F67C  7D 89 03 A6 */	mtctr r12
/* 80B6F680  4E 80 04 21 */	bctrl 
/* 80B6F684  38 60 00 01 */	li r3, 1
/* 80B6F688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6F68C  7C 08 03 A6 */	mtlr r0
/* 80B6F690  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6F694  4E 80 00 20 */	blr 
