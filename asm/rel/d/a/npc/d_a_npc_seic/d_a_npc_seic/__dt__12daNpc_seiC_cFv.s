lbl_80AC754C:
/* 80AC754C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC7550  7C 08 02 A6 */	mflr r0
/* 80AC7554  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC7558  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC755C  93 C1 00 08 */	stw r30, 8(r1)
/* 80AC7560  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AC7564  7C 9F 23 78 */	mr r31, r4
/* 80AC7568  41 82 00 64 */	beq lbl_80AC75CC
/* 80AC756C  3C 60 80 AD */	lis r3, __vt__12daNpc_seiC_c@ha /* 0x80AC94A8@ha */
/* 80AC7570  38 03 94 A8 */	addi r0, r3, __vt__12daNpc_seiC_c@l /* 0x80AC94A8@l */
/* 80AC7574  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80AC7578  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80AC757C  28 00 00 00 */	cmplwi r0, 0
/* 80AC7580  41 82 00 0C */	beq lbl_80AC758C
/* 80AC7584  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80AC7588  4B 54 9D 89 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80AC758C:
/* 80AC758C  7F C3 F3 78 */	mr r3, r30
/* 80AC7590  88 1E 0E 44 */	lbz r0, 0xe44(r30)
/* 80AC7594  54 00 10 3A */	slwi r0, r0, 2
/* 80AC7598  3C 80 80 AD */	lis r4, l_loadResPtrnList@ha /* 0x80AC933C@ha */
/* 80AC759C  38 84 93 3C */	addi r4, r4, l_loadResPtrnList@l /* 0x80AC933C@l */
/* 80AC75A0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AC75A4  3C A0 80 AD */	lis r5, l_resNameList@ha /* 0x80AC9330@ha */
/* 80AC75A8  38 A5 93 30 */	addi r5, r5, l_resNameList@l /* 0x80AC9330@l */
/* 80AC75AC  4B 68 0F 01 */	bl deleteRes__8daNpcT_cFPCScPPCc
/* 80AC75B0  7F C3 F3 78 */	mr r3, r30
/* 80AC75B4  38 80 00 00 */	li r4, 0
/* 80AC75B8  48 00 0F 1D */	bl __dt__8daNpcT_cFv
/* 80AC75BC  7F E0 07 35 */	extsh. r0, r31
/* 80AC75C0  40 81 00 0C */	ble lbl_80AC75CC
/* 80AC75C4  7F C3 F3 78 */	mr r3, r30
/* 80AC75C8  4B 80 77 75 */	bl __dl__FPv
lbl_80AC75CC:
/* 80AC75CC  7F C3 F3 78 */	mr r3, r30
/* 80AC75D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC75D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AC75D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC75DC  7C 08 03 A6 */	mtlr r0
/* 80AC75E0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC75E4  4E 80 00 20 */	blr 
