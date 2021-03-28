lbl_80D05F2C:
/* 80D05F2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D05F30  7C 08 02 A6 */	mflr r0
/* 80D05F34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D05F38  81 83 05 9C */	lwz r12, 0x59c(r3)
/* 80D05F3C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80D05F40  7D 89 03 A6 */	mtctr r12
/* 80D05F44  4E 80 04 21 */	bctrl 
/* 80D05F48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D05F4C  7C 08 03 A6 */	mtlr r0
/* 80D05F50  38 21 00 10 */	addi r1, r1, 0x10
/* 80D05F54  4E 80 00 20 */	blr 
