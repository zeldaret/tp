lbl_80AD572C:
/* 80AD572C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD5730  7C 08 02 A6 */	mflr r0
/* 80AD5734  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD5738  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD573C  93 C1 00 08 */	stw r30, 8(r1)
/* 80AD5740  7C 7E 1B 79 */	or. r30, r3, r3
/* 80AD5744  7C 9F 23 78 */	mr r31, r4
/* 80AD5748  41 82 00 60 */	beq lbl_80AD57A8
/* 80AD574C  3C 60 80 AE */	lis r3, __vt__14daNpc_Seirei_c@ha
/* 80AD5750  38 03 80 1C */	addi r0, r3, __vt__14daNpc_Seirei_c@l
/* 80AD5754  90 1E 0E 3C */	stw r0, 0xe3c(r30)
/* 80AD5758  80 7E 05 78 */	lwz r3, 0x578(r30)
/* 80AD575C  28 03 00 00 */	cmplwi r3, 0
/* 80AD5760  41 82 00 08 */	beq lbl_80AD5768
/* 80AD5764  4B 53 BB AC */	b stopZelAnime__16mDoExt_McaMorfSOFv
lbl_80AD5768:
/* 80AD5768  7F C3 F3 78 */	mr r3, r30
/* 80AD576C  88 1E 0E 44 */	lbz r0, 0xe44(r30)
/* 80AD5770  54 00 10 3A */	slwi r0, r0, 2
/* 80AD5774  3C 80 80 AD */	lis r4, l_loadResPtrnList@ha
/* 80AD5778  38 84 7E 40 */	addi r4, r4, l_loadResPtrnList@l
/* 80AD577C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AD5780  3C A0 80 AD */	lis r5, l_resNameList@ha
/* 80AD5784  38 A5 7E 2C */	addi r5, r5, l_resNameList@l
/* 80AD5788  4B 67 2D 24 */	b deleteRes__8daNpcT_cFPCScPPCc
/* 80AD578C  7F C3 F3 78 */	mr r3, r30
/* 80AD5790  38 80 00 00 */	li r4, 0
/* 80AD5794  48 00 17 99 */	bl __dt__8daNpcT_cFv
/* 80AD5798  7F E0 07 35 */	extsh. r0, r31
/* 80AD579C  40 81 00 0C */	ble lbl_80AD57A8
/* 80AD57A0  7F C3 F3 78 */	mr r3, r30
/* 80AD57A4  4B 7F 95 98 */	b __dl__FPv
lbl_80AD57A8:
/* 80AD57A8  7F C3 F3 78 */	mr r3, r30
/* 80AD57AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD57B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AD57B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD57B8  7C 08 03 A6 */	mtlr r0
/* 80AD57BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD57C0  4E 80 00 20 */	blr 
