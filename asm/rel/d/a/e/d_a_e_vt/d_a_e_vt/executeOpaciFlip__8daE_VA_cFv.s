lbl_807CACE0:
/* 807CACE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807CACE4  7C 08 02 A6 */	mflr r0
/* 807CACE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 807CACEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807CACF0  93 C1 00 08 */	stw r30, 8(r1)
/* 807CACF4  7C 7E 1B 78 */	mr r30, r3
/* 807CACF8  3C 60 80 7D */	lis r3, lit_3907@ha /* 0x807CECA8@ha */
/* 807CACFC  3B E3 EC A8 */	addi r31, r3, lit_3907@l /* 0x807CECA8@l */
/* 807CAD00  80 1E 13 20 */	lwz r0, 0x1320(r30)
/* 807CAD04  2C 00 00 01 */	cmpwi r0, 1
/* 807CAD08  41 82 00 58 */	beq lbl_807CAD60
/* 807CAD0C  40 80 00 94 */	bge lbl_807CADA0
/* 807CAD10  2C 00 00 00 */	cmpwi r0, 0
/* 807CAD14  40 80 00 08 */	bge lbl_807CAD1C
/* 807CAD18  48 00 00 88 */	b lbl_807CADA0
lbl_807CAD1C:
/* 807CAD1C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 807CAD20  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 807CAD24  38 00 00 01 */	li r0, 1
/* 807CAD28  90 1E 13 20 */	stw r0, 0x1320(r30)
/* 807CAD2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807CAD30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807CAD34  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807CAD38  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 807CAD3C  C0 3F 01 64 */	lfs f1, 0x164(r31)
/* 807CAD40  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 807CAD44  38 A0 00 01 */	li r5, 1
/* 807CAD48  38 C0 00 00 */	li r6, 0
/* 807CAD4C  38 E0 00 00 */	li r7, 0
/* 807CAD50  81 83 06 28 */	lwz r12, 0x628(r3)
/* 807CAD54  81 8C 01 60 */	lwz r12, 0x160(r12)
/* 807CAD58  7D 89 03 A6 */	mtctr r12
/* 807CAD5C  4E 80 04 21 */	bctrl 
lbl_807CAD60:
/* 807CAD60  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 807CAD64  38 80 00 01 */	li r4, 1
/* 807CAD68  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807CAD6C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807CAD70  40 82 00 18 */	bne lbl_807CAD88
/* 807CAD74  C0 3F 00 04 */	lfs f1, 4(r31)
/* 807CAD78  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807CAD7C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807CAD80  41 82 00 08 */	beq lbl_807CAD88
/* 807CAD84  38 80 00 00 */	li r4, 0
lbl_807CAD88:
/* 807CAD88  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807CAD8C  41 82 00 14 */	beq lbl_807CADA0
/* 807CAD90  7F C3 F3 78 */	mr r3, r30
/* 807CAD94  38 80 00 0F */	li r4, 0xf
/* 807CAD98  38 A0 00 00 */	li r5, 0
/* 807CAD9C  4B FF 8B 7D */	bl setActionMode__8daE_VA_cFii
lbl_807CADA0:
/* 807CADA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807CADA4  83 C1 00 08 */	lwz r30, 8(r1)
/* 807CADA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807CADAC  7C 08 03 A6 */	mtlr r0
/* 807CADB0  38 21 00 10 */	addi r1, r1, 0x10
/* 807CADB4  4E 80 00 20 */	blr 
