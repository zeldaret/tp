lbl_80A64BE0:
/* 80A64BE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A64BE4  7C 08 02 A6 */	mflr r0
/* 80A64BE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A64BEC  38 80 FF FF */	li r4, -1
/* 80A64BF0  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80A64BF4  81 8C 00 08 */	lwz r12, 8(r12)
/* 80A64BF8  7D 89 03 A6 */	mtctr r12
/* 80A64BFC  4E 80 04 21 */	bctrl 
/* 80A64C00  38 60 00 01 */	li r3, 1
/* 80A64C04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A64C08  7C 08 03 A6 */	mtlr r0
/* 80A64C0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A64C10  4E 80 00 20 */	blr 
