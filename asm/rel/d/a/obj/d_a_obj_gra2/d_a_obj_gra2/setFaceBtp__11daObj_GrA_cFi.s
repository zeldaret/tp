lbl_80C01698:
/* 80C01698  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C0169C  7C 08 02 A6 */	mflr r0
/* 80C016A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C016A4  39 61 00 20 */	addi r11, r1, 0x20
/* 80C016A8  4B 76 0B 34 */	b _savegpr_29
/* 80C016AC  7C 7E 1B 78 */	mr r30, r3
/* 80C016B0  7C 9D 23 78 */	mr r29, r4
/* 80C016B4  38 80 00 00 */	li r4, 0
/* 80C016B8  3B E0 00 00 */	li r31, 0
/* 80C016BC  A0 A3 08 40 */	lhz r5, 0x840(r3)
/* 80C016C0  38 00 FF BB */	li r0, -69
/* 80C016C4  7C A0 00 38 */	and r0, r5, r0
/* 80C016C8  B0 03 08 40 */	sth r0, 0x840(r3)
/* 80C016CC  57 A0 18 38 */	slwi r0, r29, 3
/* 80C016D0  3C A0 80 C1 */	lis r5, l_btpGetParamList@ha
/* 80C016D4  38 C5 00 0C */	addi r6, r5, l_btpGetParamList@l
/* 80C016D8  7C A6 00 2E */	lwzx r5, r6, r0
/* 80C016DC  2C 05 00 00 */	cmpwi r5, 0
/* 80C016E0  41 80 00 24 */	blt lbl_80C01704
/* 80C016E4  7C 86 02 14 */	add r4, r6, r0
/* 80C016E8  80 04 00 04 */	lwz r0, 4(r4)
/* 80C016EC  54 00 10 3A */	slwi r0, r0, 2
/* 80C016F0  3C 80 80 C1 */	lis r4, l_resNames@ha
/* 80C016F4  38 84 FE D8 */	addi r4, r4, l_resNames@l
/* 80C016F8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C016FC  4B 54 D8 2C */	b getTexPtrnAnmP__11daBaseNpc_cFPci
/* 80C01700  7C 64 1B 78 */	mr r4, r3
lbl_80C01704:
/* 80C01704  2C 1D 00 00 */	cmpwi r29, 0
/* 80C01708  41 82 00 14 */	beq lbl_80C0171C
/* 80C0170C  41 80 00 18 */	blt lbl_80C01724
/* 80C01710  2C 1D 00 04 */	cmpwi r29, 4
/* 80C01714  40 80 00 10 */	bge lbl_80C01724
/* 80C01718  48 00 00 10 */	b lbl_80C01728
lbl_80C0171C:
/* 80C0171C  3B E0 00 02 */	li r31, 2
/* 80C01720  48 00 00 08 */	b lbl_80C01728
lbl_80C01724:
/* 80C01724  38 80 00 00 */	li r4, 0
lbl_80C01728:
/* 80C01728  88 1E 08 44 */	lbz r0, 0x844(r30)
/* 80C0172C  28 00 00 00 */	cmplwi r0, 0
/* 80C01730  41 82 00 08 */	beq lbl_80C01738
/* 80C01734  38 80 00 00 */	li r4, 0
lbl_80C01738:
/* 80C01738  28 04 00 00 */	cmplwi r4, 0
/* 80C0173C  41 82 00 38 */	beq lbl_80C01774
/* 80C01740  80 7E 07 54 */	lwz r3, 0x754(r30)
/* 80C01744  80 63 00 04 */	lwz r3, 4(r3)
/* 80C01748  80 A3 00 04 */	lwz r5, 4(r3)
/* 80C0174C  7F C3 F3 78 */	mr r3, r30
/* 80C01750  3C C0 80 C1 */	lis r6, lit_4332@ha
/* 80C01754  C0 26 FB 94 */	lfs f1, lit_4332@l(r6)
/* 80C01758  7F E6 FB 78 */	mr r6, r31
/* 80C0175C  4B 54 D8 08 */	b setBtpAnm__11daBaseNpc_cFP16J3DAnmTexPatternP12J3DModelDatafi
/* 80C01760  2C 03 00 00 */	cmpwi r3, 0
/* 80C01764  41 82 00 10 */	beq lbl_80C01774
/* 80C01768  A0 1E 08 40 */	lhz r0, 0x840(r30)
/* 80C0176C  60 00 00 44 */	ori r0, r0, 0x44
/* 80C01770  B0 1E 08 40 */	sth r0, 0x840(r30)
lbl_80C01774:
/* 80C01774  39 61 00 20 */	addi r11, r1, 0x20
/* 80C01778  4B 76 0A B0 */	b _restgpr_29
/* 80C0177C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C01780  7C 08 03 A6 */	mtlr r0
/* 80C01784  38 21 00 20 */	addi r1, r1, 0x20
/* 80C01788  4E 80 00 20 */	blr 
