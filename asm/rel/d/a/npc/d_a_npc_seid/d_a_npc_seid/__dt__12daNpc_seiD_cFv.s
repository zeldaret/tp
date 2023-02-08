lbl_80AC968C:
/* 80AC968C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC9690  7C 08 02 A6 */	mflr r0
/* 80AC9694  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC9698  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC969C  93 C1 00 08 */	stw r30, 8(r1)
/* 80AC96A0  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AC96A4  7C 9F 23 78 */	mr r31, r4
/* 80AC96A8  41 82 00 64 */	beq lbl_80AC970C
/* 80AC96AC  3C 60 80 AD */	lis r3, __vt__12daNpc_seiD_c@ha /* 0x80ACB5E8@ha */
/* 80AC96B0  38 03 B5 E8 */	addi r0, r3, __vt__12daNpc_seiD_c@l /* 0x80ACB5E8@l */
/* 80AC96B4  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80AC96B8  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80AC96BC  28 00 00 00 */	cmplwi r0, 0
/* 80AC96C0  41 82 00 0C */	beq lbl_80AC96CC
/* 80AC96C4  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80AC96C8  4B 54 7C 49 */	bl stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80AC96CC:
/* 80AC96CC  7F C3 F3 78 */	mr r3, r30
/* 80AC96D0  88 1E 0E 44 */	lbz r0, 0xe44(r30)
/* 80AC96D4  54 00 10 3A */	slwi r0, r0, 2
/* 80AC96D8  3C 80 80 AD */	lis r4, l_loadResPtrnList@ha /* 0x80ACB47C@ha */
/* 80AC96DC  38 84 B4 7C */	addi r4, r4, l_loadResPtrnList@l /* 0x80ACB47C@l */
/* 80AC96E0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AC96E4  3C A0 80 AD */	lis r5, l_resNameList@ha /* 0x80ACB470@ha */
/* 80AC96E8  38 A5 B4 70 */	addi r5, r5, l_resNameList@l /* 0x80ACB470@l */
/* 80AC96EC  4B 67 ED C1 */	bl deleteRes__8daNpcT_cFPCScPPCc
/* 80AC96F0  7F C3 F3 78 */	mr r3, r30
/* 80AC96F4  38 80 00 00 */	li r4, 0
/* 80AC96F8  48 00 0F 1D */	bl __dt__8daNpcT_cFv
/* 80AC96FC  7F E0 07 35 */	extsh. r0, r31
/* 80AC9700  40 81 00 0C */	ble lbl_80AC970C
/* 80AC9704  7F C3 F3 78 */	mr r3, r30
/* 80AC9708  4B 80 56 35 */	bl __dl__FPv
lbl_80AC970C:
/* 80AC970C  7F C3 F3 78 */	mr r3, r30
/* 80AC9710  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC9714  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AC9718  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC971C  7C 08 03 A6 */	mtlr r0
/* 80AC9720  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC9724  4E 80 00 20 */	blr 
