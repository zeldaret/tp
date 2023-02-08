lbl_8098CCE4:
/* 8098CCE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8098CCE8  7C 08 02 A6 */	mflr r0
/* 8098CCEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8098CCF0  38 80 FF FF */	li r4, -1
/* 8098CCF4  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 8098CCF8  81 8C 00 08 */	lwz r12, 8(r12)
/* 8098CCFC  7D 89 03 A6 */	mtctr r12
/* 8098CD00  4E 80 04 21 */	bctrl 
/* 8098CD04  38 60 00 01 */	li r3, 1
/* 8098CD08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8098CD0C  7C 08 03 A6 */	mtlr r0
/* 8098CD10  38 21 00 10 */	addi r1, r1, 0x10
/* 8098CD14  4E 80 00 20 */	blr 
