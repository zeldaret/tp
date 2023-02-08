lbl_80CC0654:
/* 80CC0654  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC0658  7C 08 02 A6 */	mflr r0
/* 80CC065C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC0660  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80CC0664  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80CC0668  7D 89 03 A6 */	mtctr r12
/* 80CC066C  4E 80 04 21 */	bctrl 
/* 80CC0670  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC0674  7C 08 03 A6 */	mtlr r0
/* 80CC0678  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC067C  4E 80 00 20 */	blr 
