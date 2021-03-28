lbl_80D0FD34:
/* 80D0FD34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0FD38  7C 08 02 A6 */	mflr r0
/* 80D0FD3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0FD40  38 80 FF FF */	li r4, -1
/* 80D0FD44  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80D0FD48  81 8C 00 08 */	lwz r12, 8(r12)
/* 80D0FD4C  7D 89 03 A6 */	mtctr r12
/* 80D0FD50  4E 80 04 21 */	bctrl 
/* 80D0FD54  38 60 00 01 */	li r3, 1
/* 80D0FD58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0FD5C  7C 08 03 A6 */	mtlr r0
/* 80D0FD60  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0FD64  4E 80 00 20 */	blr 
