lbl_80AA9634:
/* 80AA9634  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA9638  7C 08 02 A6 */	mflr r0
/* 80AA963C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA9640  38 80 FF FF */	li r4, -1
/* 80AA9644  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80AA9648  81 8C 00 08 */	lwz r12, 8(r12)
/* 80AA964C  7D 89 03 A6 */	mtctr r12
/* 80AA9650  4E 80 04 21 */	bctrl 
/* 80AA9654  38 60 00 01 */	li r3, 1
/* 80AA9658  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA965C  7C 08 03 A6 */	mtlr r0
/* 80AA9660  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA9664  4E 80 00 20 */	blr 
