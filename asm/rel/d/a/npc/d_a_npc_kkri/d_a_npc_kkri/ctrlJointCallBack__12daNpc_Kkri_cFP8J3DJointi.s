lbl_8054FD20:
/* 8054FD20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054FD24  7C 08 02 A6 */	mflr r0
/* 8054FD28  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054FD2C  7C 60 1B 78 */	mr r0, r3
/* 8054FD30  2C 04 00 00 */	cmpwi r4, 0
/* 8054FD34  40 82 00 30 */	bne lbl_8054FD64
/* 8054FD38  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 8054FD3C  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 8054FD40  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 8054FD44  80 65 00 14 */	lwz r3, 0x14(r5)
/* 8054FD48  28 03 00 00 */	cmplwi r3, 0
/* 8054FD4C  41 82 00 18 */	beq lbl_8054FD64
/* 8054FD50  7C 04 03 78 */	mr r4, r0
/* 8054FD54  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 8054FD58  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8054FD5C  7D 89 03 A6 */	mtctr r12
/* 8054FD60  4E 80 04 21 */	bctrl 
lbl_8054FD64:
/* 8054FD64  38 60 00 01 */	li r3, 1
/* 8054FD68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054FD6C  7C 08 03 A6 */	mtlr r0
/* 8054FD70  38 21 00 10 */	addi r1, r1, 0x10
/* 8054FD74  4E 80 00 20 */	blr 
