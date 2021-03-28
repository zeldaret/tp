lbl_80AC50EC:
/* 80AC50EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC50F0  7C 08 02 A6 */	mflr r0
/* 80AC50F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC50F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AC50FC  93 C1 00 08 */	stw r30, 8(r1)
/* 80AC5100  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AC5104  7C 9F 23 78 */	mr r31, r4
/* 80AC5108  41 82 00 64 */	beq lbl_80AC516C
/* 80AC510C  3C 60 80 AC */	lis r3, __vt__12daNpc_seiB_c@ha
/* 80AC5110  38 03 73 64 */	addi r0, r3, __vt__12daNpc_seiB_c@l
/* 80AC5114  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80AC5118  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 80AC511C  28 00 00 00 */	cmplwi r0, 0
/* 80AC5120  41 82 00 0C */	beq lbl_80AC512C
/* 80AC5124  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80AC5128  4B 54 C1 E8 */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80AC512C:
/* 80AC512C  7F C3 F3 78 */	mr r3, r30
/* 80AC5130  88 1E 0E 44 */	lbz r0, 0xe44(r30)
/* 80AC5134  54 00 10 3A */	slwi r0, r0, 2
/* 80AC5138  3C 80 80 AC */	lis r4, l_loadResPtrnList@ha
/* 80AC513C  38 84 71 44 */	addi r4, r4, l_loadResPtrnList@l
/* 80AC5140  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AC5144  3C A0 80 AC */	lis r5, l_resNameList@ha
/* 80AC5148  38 A5 71 38 */	addi r5, r5, l_resNameList@l
/* 80AC514C  4B 68 33 60 */	b deleteRes__8daNpcT_cFPCScPPCc
/* 80AC5150  7F C3 F3 78 */	mr r3, r30
/* 80AC5154  38 80 00 00 */	li r4, 0
/* 80AC5158  48 00 11 85 */	bl __dt__8daNpcT_cFv
/* 80AC515C  7F E0 07 35 */	extsh. r0, r31
/* 80AC5160  40 81 00 0C */	ble lbl_80AC516C
/* 80AC5164  7F C3 F3 78 */	mr r3, r30
/* 80AC5168  4B 80 9B D4 */	b __dl__FPv
lbl_80AC516C:
/* 80AC516C  7F C3 F3 78 */	mr r3, r30
/* 80AC5170  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AC5174  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AC5178  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC517C  7C 08 03 A6 */	mtlr r0
/* 80AC5180  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC5184  4E 80 00 20 */	blr 
