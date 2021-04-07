lbl_80AD16C4:
/* 80AD16C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD16C8  7C 08 02 A6 */	mflr r0
/* 80AD16CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD16D0  7C 60 1B 78 */	mr r0, r3
/* 80AD16D4  2C 04 00 00 */	cmpwi r4, 0
/* 80AD16D8  40 82 00 30 */	bne lbl_80AD1708
/* 80AD16DC  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80AD16E0  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80AD16E4  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 80AD16E8  80 65 00 14 */	lwz r3, 0x14(r5)
/* 80AD16EC  28 03 00 00 */	cmplwi r3, 0
/* 80AD16F0  41 82 00 18 */	beq lbl_80AD1708
/* 80AD16F4  7C 04 03 78 */	mr r4, r0
/* 80AD16F8  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80AD16FC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80AD1700  7D 89 03 A6 */	mtctr r12
/* 80AD1704  4E 80 04 21 */	bctrl 
lbl_80AD1708:
/* 80AD1708  38 60 00 01 */	li r3, 1
/* 80AD170C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD1710  7C 08 03 A6 */	mtlr r0
/* 80AD1714  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD1718  4E 80 00 20 */	blr 
