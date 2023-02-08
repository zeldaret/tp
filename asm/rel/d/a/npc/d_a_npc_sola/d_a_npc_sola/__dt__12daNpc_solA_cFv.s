lbl_80AECBAC:
/* 80AECBAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AECBB0  7C 08 02 A6 */	mflr r0
/* 80AECBB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AECBB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AECBBC  93 C1 00 08 */	stw r30, 8(r1)
/* 80AECBC0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AECBC4  7C 9F 23 78 */	mr r31, r4
/* 80AECBC8  41 82 00 EC */	beq lbl_80AECCB4
/* 80AECBCC  3C 60 80 AF */	lis r3, __vt__12daNpc_solA_c@ha /* 0x80AEF3A8@ha */
/* 80AECBD0  38 03 F3 A8 */	addi r0, r3, __vt__12daNpc_solA_c@l /* 0x80AEF3A8@l */
/* 80AECBD4  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80AECBD8  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80AECBDC  28 00 00 00 */	cmplwi r0, 0
/* 80AECBE0  41 82 00 0C */	beq lbl_80AECBEC
/* 80AECBE4  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80AECBE8  4B 52 47 29 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80AECBEC:
/* 80AECBEC  7F C3 F3 78 */	mr r3, r30
/* 80AECBF0  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80AECBF4  54 00 10 3A */	slwi r0, r0, 2
/* 80AECBF8  3C 80 80 AF */	lis r4, l_loadResPtrnList@ha /* 0x80AEF238@ha */
/* 80AECBFC  38 84 F2 38 */	addi r4, r4, l_loadResPtrnList@l /* 0x80AEF238@l */
/* 80AECC00  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AECC04  3C A0 80 AF */	lis r5, l_resNameList@ha /* 0x80AEF22C@ha */
/* 80AECC08  38 A5 F2 2C */	addi r5, r5, l_resNameList@l /* 0x80AEF22C@l */
/* 80AECC0C  4B 65 B8 A1 */	bl deleteRes__8daNpcT_cFPCScPPCc
/* 80AECC10  34 1E 0E 44 */	addic. r0, r30, 0xe44
/* 80AECC14  41 82 00 84 */	beq lbl_80AECC98
/* 80AECC18  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 80AECC1C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 80AECC20  90 7E 0E 80 */	stw r3, 0xe80(r30)
/* 80AECC24  38 03 00 2C */	addi r0, r3, 0x2c
/* 80AECC28  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 80AECC2C  38 03 00 84 */	addi r0, r3, 0x84
/* 80AECC30  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 80AECC34  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80AECC38  41 82 00 54 */	beq lbl_80AECC8C
/* 80AECC3C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 80AECC40  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 80AECC44  90 7E 0F 64 */	stw r3, 0xf64(r30)
/* 80AECC48  38 03 00 58 */	addi r0, r3, 0x58
/* 80AECC4C  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 80AECC50  34 1E 0F 68 */	addic. r0, r30, 0xf68
/* 80AECC54  41 82 00 10 */	beq lbl_80AECC64
/* 80AECC58  3C 60 80 AF */	lis r3, __vt__8cM3dGCyl@ha /* 0x80AEF39C@ha */
/* 80AECC5C  38 03 F3 9C */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x80AEF39C@l */
/* 80AECC60  90 1E 0F 7C */	stw r0, 0xf7c(r30)
lbl_80AECC64:
/* 80AECC64  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80AECC68  41 82 00 24 */	beq lbl_80AECC8C
/* 80AECC6C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 80AECC70  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 80AECC74  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 80AECC78  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80AECC7C  41 82 00 10 */	beq lbl_80AECC8C
/* 80AECC80  3C 60 80 AF */	lis r3, __vt__8cM3dGAab@ha /* 0x80AEF390@ha */
/* 80AECC84  38 03 F3 90 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x80AEF390@l */
/* 80AECC88  90 1E 0F 60 */	stw r0, 0xf60(r30)
lbl_80AECC8C:
/* 80AECC8C  38 7E 0E 44 */	addi r3, r30, 0xe44
/* 80AECC90  38 80 00 00 */	li r4, 0
/* 80AECC94  4B 59 74 51 */	bl __dt__12dCcD_GObjInfFv
lbl_80AECC98:
/* 80AECC98  7F C3 F3 78 */	mr r3, r30
/* 80AECC9C  38 80 00 00 */	li r4, 0
/* 80AECCA0  48 00 13 01 */	bl __dt__8daNpcT_cFv
/* 80AECCA4  7F E0 07 35 */	extsh. r0, r31
/* 80AECCA8  40 81 00 0C */	ble lbl_80AECCB4
/* 80AECCAC  7F C3 F3 78 */	mr r3, r30
/* 80AECCB0  4B 7E 20 8D */	bl __dl__FPv
lbl_80AECCB4:
/* 80AECCB4  7F C3 F3 78 */	mr r3, r30
/* 80AECCB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AECCBC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AECCC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AECCC4  7C 08 03 A6 */	mtlr r0
/* 80AECCC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AECCCC  4E 80 00 20 */	blr 
