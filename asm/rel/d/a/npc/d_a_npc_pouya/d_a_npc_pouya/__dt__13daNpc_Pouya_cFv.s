lbl_80AADDAC:
/* 80AADDAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AADDB0  7C 08 02 A6 */	mflr r0
/* 80AADDB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AADDB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AADDBC  93 C1 00 08 */	stw r30, 8(r1)
/* 80AADDC0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AADDC4  7C 9F 23 78 */	mr r31, r4
/* 80AADDC8  41 82 00 FC */	beq lbl_80AADEC4
/* 80AADDCC  3C 60 80 AB */	lis r3, __vt__13daNpc_Pouya_c@ha
/* 80AADDD0  38 03 2C 14 */	addi r0, r3, __vt__13daNpc_Pouya_c@l
/* 80AADDD4  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80AADDD8  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80AADDDC  28 03 00 00 */	cmplwi r3, 0
/* 80AADDE0  41 82 00 08 */	beq lbl_80AADDE8
/* 80AADDE4  4B 56 35 2C */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80AADDE8:
/* 80AADDE8  7F C3 F3 78 */	mr r3, r30
/* 80AADDEC  88 1E 0F 84 */	lbz r0, 0xf84(r30)
/* 80AADDF0  54 00 10 3A */	slwi r0, r0, 2
/* 80AADDF4  3C 80 80 AB */	lis r4, l_loadResPtrnList@ha
/* 80AADDF8  38 84 22 84 */	addi r4, r4, l_loadResPtrnList@l
/* 80AADDFC  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AADE00  3C A0 80 AB */	lis r5, l_resNameList@ha
/* 80AADE04  38 A5 22 70 */	addi r5, r5, l_resNameList@l
/* 80AADE08  4B 69 A6 A4 */	b deleteRes__8daNpcT_cFPCScPPCc
/* 80AADE0C  34 1E 0F 88 */	addic. r0, r30, 0xf88
/* 80AADE10  41 82 00 10 */	beq lbl_80AADE20
/* 80AADE14  3C 60 80 AB */	lis r3, __vt__13daNpcT_Path_c@ha
/* 80AADE18  38 03 2C 08 */	addi r0, r3, __vt__13daNpcT_Path_c@l
/* 80AADE1C  90 1E 0F AC */	stw r0, 0xfac(r30)
lbl_80AADE20:
/* 80AADE20  34 1E 0E 48 */	addic. r0, r30, 0xe48
/* 80AADE24  41 82 00 84 */	beq lbl_80AADEA8
/* 80AADE28  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80AADE2C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80AADE30  90 7E 0E 84 */	stw r3, 0xe84(r30)
/* 80AADE34  38 03 00 2C */	addi r0, r3, 0x2c
/* 80AADE38  90 1E 0F 68 */	stw r0, 0xf68(r30)
/* 80AADE3C  38 03 00 84 */	addi r0, r3, 0x84
/* 80AADE40  90 1E 0F 80 */	stw r0, 0xf80(r30)
/* 80AADE44  34 1E 0F 4C */	addic. r0, r30, 0xf4c
/* 80AADE48  41 82 00 54 */	beq lbl_80AADE9C
/* 80AADE4C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80AADE50  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80AADE54  90 7E 0F 68 */	stw r3, 0xf68(r30)
/* 80AADE58  38 03 00 58 */	addi r0, r3, 0x58
/* 80AADE5C  90 1E 0F 80 */	stw r0, 0xf80(r30)
/* 80AADE60  34 1E 0F 6C */	addic. r0, r30, 0xf6c
/* 80AADE64  41 82 00 10 */	beq lbl_80AADE74
/* 80AADE68  3C 60 80 AB */	lis r3, __vt__8cM3dGCyl@ha
/* 80AADE6C  38 03 2B FC */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80AADE70  90 1E 0F 80 */	stw r0, 0xf80(r30)
lbl_80AADE74:
/* 80AADE74  34 1E 0F 4C */	addic. r0, r30, 0xf4c
/* 80AADE78  41 82 00 24 */	beq lbl_80AADE9C
/* 80AADE7C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80AADE80  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80AADE84  90 1E 0F 68 */	stw r0, 0xf68(r30)
/* 80AADE88  34 1E 0F 4C */	addic. r0, r30, 0xf4c
/* 80AADE8C  41 82 00 10 */	beq lbl_80AADE9C
/* 80AADE90  3C 60 80 AB */	lis r3, __vt__8cM3dGAab@ha
/* 80AADE94  38 03 2B F0 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80AADE98  90 1E 0F 64 */	stw r0, 0xf64(r30)
lbl_80AADE9C:
/* 80AADE9C  38 7E 0E 48 */	addi r3, r30, 0xe48
/* 80AADEA0  38 80 00 00 */	li r4, 0
/* 80AADEA4  4B 5D 62 40 */	b __dt__12dCcD_GObjInfFv
lbl_80AADEA8:
/* 80AADEA8  7F C3 F3 78 */	mr r3, r30
/* 80AADEAC  38 80 00 00 */	li r4, 0
/* 80AADEB0  48 00 2F 4D */	bl __dt__8daNpcT_cFv
/* 80AADEB4  7F E0 07 35 */	extsh. r0, r31
/* 80AADEB8  40 81 00 0C */	ble lbl_80AADEC4
/* 80AADEBC  7F C3 F3 78 */	mr r3, r30
/* 80AADEC0  4B 82 0E 7C */	b __dl__FPv
lbl_80AADEC4:
/* 80AADEC4  7F C3 F3 78 */	mr r3, r30
/* 80AADEC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AADECC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AADED0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AADED4  7C 08 03 A6 */	mtlr r0
/* 80AADED8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AADEDC  4E 80 00 20 */	blr 
