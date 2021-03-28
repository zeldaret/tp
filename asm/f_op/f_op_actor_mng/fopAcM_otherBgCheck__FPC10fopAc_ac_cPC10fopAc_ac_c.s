lbl_8001CDFC:
/* 8001CDFC  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8001CE00  7C 08 02 A6 */	mflr r0
/* 8001CE04  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8001CE08  93 E1 00 9C */	stw r31, 0x9c(r1)
/* 8001CE0C  93 C1 00 98 */	stw r30, 0x98(r1)
/* 8001CE10  7C 7E 1B 78 */	mr r30, r3
/* 8001CE14  7C 9F 23 78 */	mr r31, r4
/* 8001CE18  38 61 00 20 */	addi r3, r1, 0x20
/* 8001CE1C  48 05 AE 4D */	bl __ct__11dBgS_LinChkFv
/* 8001CE20  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8001CE24  D0 01 00 08 */	stfs f0, 8(r1)
/* 8001CE28  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8001CE2C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8001CE30  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8001CE34  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8001CE38  C0 02 82 48 */	lfs f0, lit_6035(r2)
/* 8001CE3C  EC 01 00 2A */	fadds f0, f1, f0
/* 8001CE40  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8001CE44  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8001CE48  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8001CE4C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8001CE50  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8001CE54  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8001CE58  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8001CE5C  C0 1E 05 3C */	lfs f0, 0x53c(r30)
/* 8001CE60  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8001CE64  38 61 00 20 */	addi r3, r1, 0x20
/* 8001CE68  38 81 00 14 */	addi r4, r1, 0x14
/* 8001CE6C  38 A1 00 08 */	addi r5, r1, 8
/* 8001CE70  7F C6 F3 78 */	mr r6, r30
/* 8001CE74  48 05 AE F1 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8001CE78  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8001CE7C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8001CE80  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8001CE84  38 81 00 20 */	addi r4, r1, 0x20
/* 8001CE88  48 05 75 2D */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 8001CE8C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8001CE90  41 82 00 18 */	beq lbl_8001CEA8
/* 8001CE94  38 61 00 20 */	addi r3, r1, 0x20
/* 8001CE98  38 80 FF FF */	li r4, -1
/* 8001CE9C  48 05 AE 41 */	bl __dt__11dBgS_LinChkFv
/* 8001CEA0  38 60 00 01 */	li r3, 1
/* 8001CEA4  48 00 00 14 */	b lbl_8001CEB8
lbl_8001CEA8:
/* 8001CEA8  38 61 00 20 */	addi r3, r1, 0x20
/* 8001CEAC  38 80 FF FF */	li r4, -1
/* 8001CEB0  48 05 AE 2D */	bl __dt__11dBgS_LinChkFv
/* 8001CEB4  38 60 00 00 */	li r3, 0
lbl_8001CEB8:
/* 8001CEB8  83 E1 00 9C */	lwz r31, 0x9c(r1)
/* 8001CEBC  83 C1 00 98 */	lwz r30, 0x98(r1)
/* 8001CEC0  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8001CEC4  7C 08 03 A6 */	mtlr r0
/* 8001CEC8  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8001CECC  4E 80 00 20 */	blr 
