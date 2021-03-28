lbl_8015CDCC:
/* 8015CDCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8015CDD0  7C 08 02 A6 */	mflr r0
/* 8015CDD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8015CDD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8015CDDC  7C 7F 1B 78 */	mr r31, r3
/* 8015CDE0  38 7F 05 8C */	addi r3, r31, 0x58c
/* 8015CDE4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8015CDE8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8015CDEC  38 84 0F 38 */	addi r4, r4, 0xf38
/* 8015CDF0  4B F1 9C BD */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 8015CDF4  80 1F 05 B8 */	lwz r0, 0x5b8(r31)
/* 8015CDF8  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 8015CDFC  41 82 00 14 */	beq lbl_8015CE10
/* 8015CE00  C0 3F 07 58 */	lfs f1, 0x758(r31)
/* 8015CE04  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8015CE08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8015CE0C  40 80 00 10 */	bge lbl_8015CE1C
lbl_8015CE10:
/* 8015CE10  7F E3 FB 78 */	mr r3, r31
/* 8015CE14  4B FF FE 39 */	bl mode_wait_init__8daItem_cFv
/* 8015CE18  48 00 00 08 */	b lbl_8015CE20
lbl_8015CE1C:
/* 8015CE1C  D0 3F 04 D4 */	stfs f1, 0x4d4(r31)
lbl_8015CE20:
/* 8015CE20  C0 22 9B 7C */	lfs f1, lit_4069(r2)
/* 8015CE24  88 1F 09 2A */	lbz r0, 0x92a(r31)
/* 8015CE28  2C 00 00 0E */	cmpwi r0, 0xe
/* 8015CE2C  40 80 00 1C */	bge lbl_8015CE48
/* 8015CE30  2C 00 00 00 */	cmpwi r0, 0
/* 8015CE34  41 82 00 24 */	beq lbl_8015CE58
/* 8015CE38  41 80 00 24 */	blt lbl_8015CE5C
/* 8015CE3C  2C 00 00 07 */	cmpwi r0, 7
/* 8015CE40  40 80 00 1C */	bge lbl_8015CE5C
/* 8015CE44  48 00 00 18 */	b lbl_8015CE5C
lbl_8015CE48:
/* 8015CE48  2C 00 00 12 */	cmpwi r0, 0x12
/* 8015CE4C  41 82 00 10 */	beq lbl_8015CE5C
/* 8015CE50  40 80 00 0C */	bge lbl_8015CE5C
/* 8015CE54  48 00 00 08 */	b lbl_8015CE5C
lbl_8015CE58:
/* 8015CE58  C0 22 9B 70 */	lfs f1, lit_3923(r2)
lbl_8015CE5C:
/* 8015CE5C  38 7F 09 B8 */	addi r3, r31, 0x9b8
/* 8015CE60  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8015CE64  C0 42 9B B8 */	lfs f2, lit_4781(r2)
/* 8015CE68  4B EC 02 A5 */	bl fopAcM_effHamonSet__FPUlPC4cXyzff
/* 8015CE6C  7F E3 FB 78 */	mr r3, r31
/* 8015CE70  81 9F 05 68 */	lwz r12, 0x568(r31)
/* 8015CE74  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 8015CE78  7D 89 03 A6 */	mtctr r12
/* 8015CE7C  4E 80 04 21 */	bctrl 
/* 8015CE80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8015CE84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8015CE88  7C 08 03 A6 */	mtlr r0
/* 8015CE8C  38 21 00 10 */	addi r1, r1, 0x10
/* 8015CE90  4E 80 00 20 */	blr 
