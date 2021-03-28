lbl_80464BD8:
/* 80464BD8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80464BDC  7C 08 02 A6 */	mflr r0
/* 80464BE0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80464BE4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80464BE8  7C 7F 1B 78 */	mr r31, r3
/* 80464BEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80464BF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80464BF4  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 80464BF8  38 61 00 18 */	addi r3, r1, 0x18
/* 80464BFC  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80464C00  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80464C04  4B E0 1F 30 */	b __mi__4cXyzCFRC3Vec
/* 80464C08  38 61 00 10 */	addi r3, r1, 0x10
/* 80464C0C  38 81 00 18 */	addi r4, r1, 0x18
/* 80464C10  4B E0 CC 70 */	b __ct__7cSGlobeFRC4cXyz
/* 80464C14  38 61 00 08 */	addi r3, r1, 8
/* 80464C18  38 81 00 16 */	addi r4, r1, 0x16
/* 80464C1C  A8 BF 04 DE */	lha r5, 0x4de(r31)
/* 80464C20  4B E0 C6 08 */	b __mi__7cSAngleCFs
/* 80464C24  A8 01 00 08 */	lha r0, 8(r1)
/* 80464C28  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80464C2C  38 61 00 0C */	addi r3, r1, 0xc
/* 80464C30  4B E0 C4 9C */	b Abs__7cSAngleCFv
/* 80464C34  7C 60 07 34 */	extsh r0, r3
/* 80464C38  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80464C3C  40 80 00 14 */	bge lbl_80464C50
/* 80464C40  7C 60 07 35 */	extsh. r0, r3
/* 80464C44  41 80 00 0C */	blt lbl_80464C50
/* 80464C48  38 60 00 00 */	li r3, 0
/* 80464C4C  48 00 00 08 */	b lbl_80464C54
lbl_80464C50:
/* 80464C50  38 60 00 01 */	li r3, 1
lbl_80464C54:
/* 80464C54  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80464C58  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80464C5C  7C 08 03 A6 */	mtlr r0
/* 80464C60  38 21 00 30 */	addi r1, r1, 0x30
/* 80464C64  4E 80 00 20 */	blr 
