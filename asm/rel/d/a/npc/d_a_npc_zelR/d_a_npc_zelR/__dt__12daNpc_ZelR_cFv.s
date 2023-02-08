lbl_80B6EE2C:
/* 80B6EE2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6EE30  7C 08 02 A6 */	mflr r0
/* 80B6EE34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6EE38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6EE3C  93 C1 00 08 */	stw r30, 8(r1)
/* 80B6EE40  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B6EE44  7C 9F 23 78 */	mr r31, r4
/* 80B6EE48  41 82 01 00 */	beq lbl_80B6EF48
/* 80B6EE4C  3C 60 80 B7 */	lis r3, __vt__12daNpc_ZelR_c@ha /* 0x80B71DD4@ha */
/* 80B6EE50  38 03 1D D4 */	addi r0, r3, __vt__12daNpc_ZelR_c@l /* 0x80B71DD4@l */
/* 80B6EE54  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80B6EE58  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80B6EE5C  28 00 00 00 */	cmplwi r0, 0
/* 80B6EE60  41 82 00 0C */	beq lbl_80B6EE6C
/* 80B6EE64  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80B6EE68  4B 4A 24 A9 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80B6EE6C:
/* 80B6EE6C  7F C3 F3 78 */	mr r3, r30
/* 80B6EE70  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80B6EE74  54 00 10 3A */	slwi r0, r0, 2
/* 80B6EE78  3C 80 80 B7 */	lis r4, l_loadResPtrnList@ha /* 0x80B71C1C@ha */
/* 80B6EE7C  38 84 1C 1C */	addi r4, r4, l_loadResPtrnList@l /* 0x80B71C1C@l */
/* 80B6EE80  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B6EE84  3C A0 80 B7 */	lis r5, l_resNameList@ha /* 0x80B71C10@ha */
/* 80B6EE88  38 A5 1C 10 */	addi r5, r5, l_resNameList@l /* 0x80B71C10@l */
/* 80B6EE8C  4B 5D 96 21 */	bl deleteRes__8daNpcT_cFPCScPPCc
/* 80B6EE90  34 1E 0F 9C */	addic. r0, r30, 0xf9c
/* 80B6EE94  41 82 00 10 */	beq lbl_80B6EEA4
/* 80B6EE98  3C 60 80 B7 */	lis r3, __vt__13daNpcT_Path_c@ha /* 0x80B71DC8@ha */
/* 80B6EE9C  38 03 1D C8 */	addi r0, r3, __vt__13daNpcT_Path_c@l /* 0x80B71DC8@l */
/* 80B6EEA0  90 1E 0F C0 */	stw r0, 0xfc0(r30)
lbl_80B6EEA4:
/* 80B6EEA4  34 1E 0E 44 */	addic. r0, r30, 0xe44
/* 80B6EEA8  41 82 00 84 */	beq lbl_80B6EF2C
/* 80B6EEAC  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80B6EEB0  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80B6EEB4  90 7E 0E 80 */	stw r3, 0xe80(r30)
/* 80B6EEB8  38 03 00 2C */	addi r0, r3, 0x2c
/* 80B6EEBC  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 80B6EEC0  38 03 00 84 */	addi r0, r3, 0x84
/* 80B6EEC4  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 80B6EEC8  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80B6EECC  41 82 00 54 */	beq lbl_80B6EF20
/* 80B6EED0  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80B6EED4  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80B6EED8  90 7E 0F 64 */	stw r3, 0xf64(r30)
/* 80B6EEDC  38 03 00 58 */	addi r0, r3, 0x58
/* 80B6EEE0  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 80B6EEE4  34 1E 0F 68 */	addic. r0, r30, 0xf68
/* 80B6EEE8  41 82 00 10 */	beq lbl_80B6EEF8
/* 80B6EEEC  3C 60 80 B7 */	lis r3, __vt__8cM3dGCyl@ha /* 0x80B71DBC@ha */
/* 80B6EEF0  38 03 1D BC */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80B71DBC@l */
/* 80B6EEF4  90 1E 0F 7C */	stw r0, 0xf7c(r30)
lbl_80B6EEF8:
/* 80B6EEF8  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80B6EEFC  41 82 00 24 */	beq lbl_80B6EF20
/* 80B6EF00  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80B6EF04  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80B6EF08  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 80B6EF0C  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80B6EF10  41 82 00 10 */	beq lbl_80B6EF20
/* 80B6EF14  3C 60 80 B7 */	lis r3, __vt__8cM3dGAab@ha /* 0x80B71DB0@ha */
/* 80B6EF18  38 03 1D B0 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80B71DB0@l */
/* 80B6EF1C  90 1E 0F 60 */	stw r0, 0xf60(r30)
lbl_80B6EF20:
/* 80B6EF20  38 7E 0E 44 */	addi r3, r30, 0xe44
/* 80B6EF24  38 80 00 00 */	li r4, 0
/* 80B6EF28  4B 51 51 BD */	bl __dt__12dCcD_GObjInfFv
lbl_80B6EF2C:
/* 80B6EF2C  7F C3 F3 78 */	mr r3, r30
/* 80B6EF30  38 80 00 00 */	li r4, 0
/* 80B6EF34  48 00 19 E1 */	bl __dt__8daNpcT_cFv
/* 80B6EF38  7F E0 07 35 */	extsh. r0, r31
/* 80B6EF3C  40 81 00 0C */	ble lbl_80B6EF48
/* 80B6EF40  7F C3 F3 78 */	mr r3, r30
/* 80B6EF44  4B 75 FD F9 */	bl __dl__FPv
lbl_80B6EF48:
/* 80B6EF48  7F C3 F3 78 */	mr r3, r30
/* 80B6EF4C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6EF50  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B6EF54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6EF58  7C 08 03 A6 */	mtlr r0
/* 80B6EF5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6EF60  4E 80 00 20 */	blr 
