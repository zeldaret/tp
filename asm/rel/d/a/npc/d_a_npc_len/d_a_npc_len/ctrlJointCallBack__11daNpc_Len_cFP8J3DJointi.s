lbl_80A64CE8:
/* 80A64CE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A64CEC  7C 08 02 A6 */	mflr r0
/* 80A64CF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A64CF4  7C 60 1B 78 */	mr r0, r3
/* 80A64CF8  2C 04 00 00 */	cmpwi r4, 0
/* 80A64CFC  40 82 00 30 */	bne lbl_80A64D2C
/* 80A64D00  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80A64D04  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80A64D08  80 A3 00 38 */	lwz r5, 0x38(r3)
/* 80A64D0C  80 65 00 14 */	lwz r3, 0x14(r5)
/* 80A64D10  28 03 00 00 */	cmplwi r3, 0
/* 80A64D14  41 82 00 18 */	beq lbl_80A64D2C
/* 80A64D18  7C 04 03 78 */	mr r4, r0
/* 80A64D1C  81 83 0E 3C */	lwz r12, 0xe3c(r3)
/* 80A64D20  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A64D24  7D 89 03 A6 */	mtctr r12
/* 80A64D28  4E 80 04 21 */	bctrl 
lbl_80A64D2C:
/* 80A64D2C  38 60 00 01 */	li r3, 1
/* 80A64D30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A64D34  7C 08 03 A6 */	mtlr r0
/* 80A64D38  38 21 00 10 */	addi r1, r1, 0x10
/* 80A64D3C  4E 80 00 20 */	blr 
