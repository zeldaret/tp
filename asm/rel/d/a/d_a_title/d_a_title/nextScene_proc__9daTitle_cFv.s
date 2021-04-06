lbl_80D67550:
/* 80D67550  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D67554  7C 08 02 A6 */	mflr r0
/* 80D67558  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D6755C  4B 2B 6F FD */	bl fopOvlpM_IsPeek__Fv
/* 80D67560  2C 03 00 00 */	cmpwi r3, 0
/* 80D67564  40 82 00 78 */	bne lbl_80D675DC
/* 80D67568  3C 60 80 45 */	lis r3, mResetData__6mDoRst@ha /* 0x80450C78@ha */
/* 80D6756C  38 63 0C 78 */	addi r3, r3, mResetData__6mDoRst@l /* 0x80450C78@l */
/* 80D67570  80 63 00 00 */	lwz r3, 0(r3)
/* 80D67574  80 03 00 00 */	lwz r0, 0(r3)
/* 80D67578  2C 00 00 00 */	cmpwi r0, 0
/* 80D6757C  40 82 00 60 */	bne lbl_80D675DC
/* 80D67580  3C 60 80 45 */	lis r3, mProcID__20dStage_roomControl_c@ha /* 0x80450D60@ha */
/* 80D67584  38 63 0D 60 */	addi r3, r3, mProcID__20dStage_roomControl_c@l /* 0x80450D60@l */
/* 80D67588  80 63 00 00 */	lwz r3, 0(r3)
/* 80D6758C  4B 2B 77 25 */	bl fopScnM_SearchByID__FUi
/* 80D67590  38 80 00 0D */	li r4, 0xd
/* 80D67594  38 A0 00 00 */	li r5, 0
/* 80D67598  38 C0 00 05 */	li r6, 5
/* 80D6759C  4B 2B 77 45 */	bl fopScnM_ChangeReq__FP11scene_classssUs
/* 80D675A0  3C 60 80 45 */	lis r3, g_blackColor@ha /* 0x80450604@ha */
/* 80D675A4  80 03 06 04 */	lwz r0, g_blackColor@l(r3)  /* 0x80450604@l */
/* 80D675A8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D675AC  90 01 00 08 */	stw r0, 8(r1)
/* 80D675B0  3C 60 80 45 */	lis r3, mFader__13mDoGph_gInf_c@ha /* 0x80450BC8@ha */
/* 80D675B4  38 63 0B C8 */	addi r3, r3, mFader__13mDoGph_gInf_c@l /* 0x80450BC8@l */
/* 80D675B8  80 63 00 00 */	lwz r3, 0(r3)
/* 80D675BC  88 01 00 08 */	lbz r0, 8(r1)
/* 80D675C0  98 03 00 0C */	stb r0, 0xc(r3)
/* 80D675C4  88 01 00 09 */	lbz r0, 9(r1)
/* 80D675C8  98 03 00 0D */	stb r0, 0xd(r3)
/* 80D675CC  88 01 00 0A */	lbz r0, 0xa(r1)
/* 80D675D0  98 03 00 0E */	stb r0, 0xe(r3)
/* 80D675D4  88 01 00 0B */	lbz r0, 0xb(r1)
/* 80D675D8  98 03 00 0F */	stb r0, 0xf(r3)
lbl_80D675DC:
/* 80D675DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D675E0  7C 08 03 A6 */	mtlr r0
/* 80D675E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D675E8  4E 80 00 20 */	blr 
