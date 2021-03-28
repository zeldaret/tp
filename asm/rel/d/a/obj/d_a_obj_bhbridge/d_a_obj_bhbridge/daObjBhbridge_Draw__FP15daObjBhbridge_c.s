lbl_80BB5678:
/* 80BB5678  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB567C  7C 08 02 A6 */	mflr r0
/* 80BB5680  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB5684  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80BB5688  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80BB568C  7D 89 03 A6 */	mtctr r12
/* 80BB5690  4E 80 04 21 */	bctrl 
/* 80BB5694  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB5698  7C 08 03 A6 */	mtlr r0
/* 80BB569C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB56A0  4E 80 00 20 */	blr 
