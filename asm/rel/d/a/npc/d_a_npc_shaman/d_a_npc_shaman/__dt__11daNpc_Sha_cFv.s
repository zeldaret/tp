lbl_80AE2DCC:
/* 80AE2DCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AE2DD0  7C 08 02 A6 */	mflr r0
/* 80AE2DD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AE2DD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AE2DDC  93 C1 00 08 */	stw r30, 8(r1)
/* 80AE2DE0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AE2DE4  7C 9F 23 78 */	mr r31, r4
/* 80AE2DE8  41 82 00 E8 */	beq lbl_80AE2ED0
/* 80AE2DEC  3C 60 80 AE */	lis r3, __vt__11daNpc_Sha_c@ha /* 0x80AE7760@ha */
/* 80AE2DF0  38 03 77 60 */	addi r0, r3, __vt__11daNpc_Sha_c@l /* 0x80AE7760@l */
/* 80AE2DF4  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80AE2DF8  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80AE2DFC  28 03 00 00 */	cmplwi r3, 0
/* 80AE2E00  41 82 00 08 */	beq lbl_80AE2E08
/* 80AE2E04  4B 52 E5 0D */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80AE2E08:
/* 80AE2E08  7F C3 F3 78 */	mr r3, r30
/* 80AE2E0C  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80AE2E10  54 00 10 3A */	slwi r0, r0, 2
/* 80AE2E14  3C 80 80 AE */	lis r4, l_loadResPtrnList@ha /* 0x80AE6D7C@ha */
/* 80AE2E18  38 84 6D 7C */	addi r4, r4, l_loadResPtrnList@l /* 0x80AE6D7C@l */
/* 80AE2E1C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AE2E20  3C A0 80 AE */	lis r5, l_resNameList@ha /* 0x80AE6D70@ha */
/* 80AE2E24  38 A5 6D 70 */	addi r5, r5, l_resNameList@l /* 0x80AE6D70@l */
/* 80AE2E28  4B 66 56 85 */	bl deleteRes__8daNpcT_cFPCScPPCc
/* 80AE2E2C  34 1E 0E 44 */	addic. r0, r30, 0xe44
/* 80AE2E30  41 82 00 84 */	beq lbl_80AE2EB4
/* 80AE2E34  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80AE2E38  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80AE2E3C  90 7E 0E 80 */	stw r3, 0xe80(r30)
/* 80AE2E40  38 03 00 2C */	addi r0, r3, 0x2c
/* 80AE2E44  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 80AE2E48  38 03 00 84 */	addi r0, r3, 0x84
/* 80AE2E4C  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 80AE2E50  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80AE2E54  41 82 00 54 */	beq lbl_80AE2EA8
/* 80AE2E58  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80AE2E5C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80AE2E60  90 7E 0F 64 */	stw r3, 0xf64(r30)
/* 80AE2E64  38 03 00 58 */	addi r0, r3, 0x58
/* 80AE2E68  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 80AE2E6C  34 1E 0F 68 */	addic. r0, r30, 0xf68
/* 80AE2E70  41 82 00 10 */	beq lbl_80AE2E80
/* 80AE2E74  3C 60 80 AE */	lis r3, __vt__8cM3dGCyl@ha /* 0x80AE7754@ha */
/* 80AE2E78  38 03 77 54 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80AE7754@l */
/* 80AE2E7C  90 1E 0F 7C */	stw r0, 0xf7c(r30)
lbl_80AE2E80:
/* 80AE2E80  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80AE2E84  41 82 00 24 */	beq lbl_80AE2EA8
/* 80AE2E88  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80AE2E8C  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80AE2E90  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 80AE2E94  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80AE2E98  41 82 00 10 */	beq lbl_80AE2EA8
/* 80AE2E9C  3C 60 80 AE */	lis r3, __vt__8cM3dGAab@ha /* 0x80AE7748@ha */
/* 80AE2EA0  38 03 77 48 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80AE7748@l */
/* 80AE2EA4  90 1E 0F 60 */	stw r0, 0xf60(r30)
lbl_80AE2EA8:
/* 80AE2EA8  38 7E 0E 44 */	addi r3, r30, 0xe44
/* 80AE2EAC  38 80 00 00 */	li r4, 0
/* 80AE2EB0  4B 5A 12 35 */	bl __dt__12dCcD_GObjInfFv
lbl_80AE2EB4:
/* 80AE2EB4  7F C3 F3 78 */	mr r3, r30
/* 80AE2EB8  38 80 00 00 */	li r4, 0
/* 80AE2EBC  48 00 26 65 */	bl __dt__8daNpcT_cFv
/* 80AE2EC0  7F E0 07 35 */	extsh. r0, r31
/* 80AE2EC4  40 81 00 0C */	ble lbl_80AE2ED0
/* 80AE2EC8  7F C3 F3 78 */	mr r3, r30
/* 80AE2ECC  4B 7E BE 71 */	bl __dl__FPv
lbl_80AE2ED0:
/* 80AE2ED0  7F C3 F3 78 */	mr r3, r30
/* 80AE2ED4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AE2ED8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AE2EDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AE2EE0  7C 08 03 A6 */	mtlr r0
/* 80AE2EE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AE2EE8  4E 80 00 20 */	blr 
