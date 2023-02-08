lbl_80A9CCE0:
/* 80A9CCE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A9CCE4  7C 08 02 A6 */	mflr r0
/* 80A9CCE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A9CCEC  7C 60 1B 78 */	mr r0, r3
/* 80A9CCF0  2C 04 00 00 */	cmpwi r4, 0
/* 80A9CCF4  40 82 00 30 */	bne lbl_80A9CD24
/* 80A9CCF8  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80A9CCFC  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80A9CD00  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 80A9CD04  80 65 00 14 */	lwz r3, 0x14(r5)
/* 80A9CD08  28 03 00 00 */	cmplwi r3, 0
/* 80A9CD0C  41 82 00 18 */	beq lbl_80A9CD24
/* 80A9CD10  7C 04 03 78 */	mr r4, r0
/* 80A9CD14  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80A9CD18  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A9CD1C  7D 89 03 A6 */	mtctr r12
/* 80A9CD20  4E 80 04 21 */	bctrl 
lbl_80A9CD24:
/* 80A9CD24  38 60 00 01 */	li r3, 1
/* 80A9CD28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A9CD2C  7C 08 03 A6 */	mtlr r0
/* 80A9CD30  38 21 00 10 */	addi r1, r1, 0x10
/* 80A9CD34  4E 80 00 20 */	blr 
