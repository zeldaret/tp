lbl_80B5F8CC:
/* 80B5F8CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B5F8D0  7C 08 02 A6 */	mflr r0
/* 80B5F8D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B5F8D8  7C 60 1B 78 */	mr r0, r3
/* 80B5F8DC  2C 04 00 00 */	cmpwi r4, 0
/* 80B5F8E0  40 82 00 30 */	bne lbl_80B5F910
/* 80B5F8E4  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80B5F8E8  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80B5F8EC  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 80B5F8F0  80 65 00 14 */	lwz r3, 0x14(r5)
/* 80B5F8F4  28 03 00 00 */	cmplwi r3, 0
/* 80B5F8F8  41 82 00 18 */	beq lbl_80B5F910
/* 80B5F8FC  7C 04 03 78 */	mr r4, r0
/* 80B5F900  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80B5F904  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B5F908  7D 89 03 A6 */	mtctr r12
/* 80B5F90C  4E 80 04 21 */	bctrl 
lbl_80B5F910:
/* 80B5F910  38 60 00 01 */	li r3, 1
/* 80B5F914  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B5F918  7C 08 03 A6 */	mtlr r0
/* 80B5F91C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B5F920  4E 80 00 20 */	blr 
