lbl_80B6C1AC:
/* 80B6C1AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6C1B0  7C 08 02 A6 */	mflr r0
/* 80B6C1B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6C1B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B6C1BC  93 C1 00 08 */	stw r30, 8(r1)
/* 80B6C1C0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B6C1C4  7C 9F 23 78 */	mr r31, r4
/* 80B6C1C8  41 82 00 EC */	beq lbl_80B6C2B4
/* 80B6C1CC  3C 60 80 B7 */	lis r3, __vt__12daNpc_Zant_c@ha
/* 80B6C1D0  38 03 EC 4C */	addi r0, r3, __vt__12daNpc_Zant_c@l
/* 80B6C1D4  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80B6C1D8  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80B6C1DC  28 00 00 00 */	cmplwi r0, 0
/* 80B6C1E0  41 82 00 0C */	beq lbl_80B6C1EC
/* 80B6C1E4  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80B6C1E8  4B 4A 51 28 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80B6C1EC:
/* 80B6C1EC  7F C3 F3 78 */	mr r3, r30
/* 80B6C1F0  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 80B6C1F4  54 00 10 3A */	slwi r0, r0, 2
/* 80B6C1F8  3C 80 80 B7 */	lis r4, l_loadResPtrnList@ha
/* 80B6C1FC  38 84 EA D8 */	addi r4, r4, l_loadResPtrnList@l
/* 80B6C200  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B6C204  3C A0 80 B7 */	lis r5, l_resNameList@ha
/* 80B6C208  38 A5 EA CC */	addi r5, r5, l_resNameList@l
/* 80B6C20C  4B 5D C2 A0 */	b deleteRes__8daNpcT_cFPCScPPCc
/* 80B6C210  34 1E 0E 44 */	addic. r0, r30, 0xe44
/* 80B6C214  41 82 00 84 */	beq lbl_80B6C298
/* 80B6C218  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80B6C21C  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80B6C220  90 7E 0E 80 */	stw r3, 0xe80(r30)
/* 80B6C224  38 03 00 2C */	addi r0, r3, 0x2c
/* 80B6C228  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 80B6C22C  38 03 00 84 */	addi r0, r3, 0x84
/* 80B6C230  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 80B6C234  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80B6C238  41 82 00 54 */	beq lbl_80B6C28C
/* 80B6C23C  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80B6C240  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80B6C244  90 7E 0F 64 */	stw r3, 0xf64(r30)
/* 80B6C248  38 03 00 58 */	addi r0, r3, 0x58
/* 80B6C24C  90 1E 0F 7C */	stw r0, 0xf7c(r30)
/* 80B6C250  34 1E 0F 68 */	addic. r0, r30, 0xf68
/* 80B6C254  41 82 00 10 */	beq lbl_80B6C264
/* 80B6C258  3C 60 80 B7 */	lis r3, __vt__8cM3dGCyl@ha
/* 80B6C25C  38 03 EC 40 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80B6C260  90 1E 0F 7C */	stw r0, 0xf7c(r30)
lbl_80B6C264:
/* 80B6C264  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80B6C268  41 82 00 24 */	beq lbl_80B6C28C
/* 80B6C26C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80B6C270  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80B6C274  90 1E 0F 64 */	stw r0, 0xf64(r30)
/* 80B6C278  34 1E 0F 48 */	addic. r0, r30, 0xf48
/* 80B6C27C  41 82 00 10 */	beq lbl_80B6C28C
/* 80B6C280  3C 60 80 B7 */	lis r3, __vt__8cM3dGAab@ha
/* 80B6C284  38 03 EC 34 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80B6C288  90 1E 0F 60 */	stw r0, 0xf60(r30)
lbl_80B6C28C:
/* 80B6C28C  38 7E 0E 44 */	addi r3, r30, 0xe44
/* 80B6C290  38 80 00 00 */	li r4, 0
/* 80B6C294  4B 51 7E 50 */	b __dt__12dCcD_GObjInfFv
lbl_80B6C298:
/* 80B6C298  7F C3 F3 78 */	mr r3, r30
/* 80B6C29C  38 80 00 00 */	li r4, 0
/* 80B6C2A0  48 00 15 AD */	bl __dt__8daNpcT_cFv
/* 80B6C2A4  7F E0 07 35 */	extsh. r0, r31
/* 80B6C2A8  40 81 00 0C */	ble lbl_80B6C2B4
/* 80B6C2AC  7F C3 F3 78 */	mr r3, r30
/* 80B6C2B0  4B 76 2A 8C */	b __dl__FPv
lbl_80B6C2B4:
/* 80B6C2B4  7F C3 F3 78 */	mr r3, r30
/* 80B6C2B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B6C2BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B6C2C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6C2C4  7C 08 03 A6 */	mtlr r0
/* 80B6C2C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6C2CC  4E 80 00 20 */	blr 
