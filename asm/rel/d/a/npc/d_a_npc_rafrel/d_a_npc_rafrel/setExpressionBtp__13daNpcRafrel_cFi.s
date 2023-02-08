lbl_80ABA8EC:
/* 80ABA8EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80ABA8F0  7C 08 02 A6 */	mflr r0
/* 80ABA8F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80ABA8F8  39 61 00 20 */	addi r11, r1, 0x20
/* 80ABA8FC  4B 8A 78 E1 */	bl _savegpr_29
/* 80ABA900  7C 7E 1B 78 */	mr r30, r3
/* 80ABA904  7C 9F 23 78 */	mr r31, r4
/* 80ABA908  1F BF 00 0C */	mulli r29, r31, 0xc
/* 80ABA90C  3C 80 80 AC */	lis r4, l_btpGetParamList@ha /* 0x80ABFFFC@ha */
/* 80ABA910  38 A4 FF FC */	addi r5, r4, l_btpGetParamList@l /* 0x80ABFFFC@l */
/* 80ABA914  7C 85 EA 14 */	add r4, r5, r29
/* 80ABA918  80 04 00 08 */	lwz r0, 8(r4)
/* 80ABA91C  54 00 10 3A */	slwi r0, r0, 2
/* 80ABA920  3C 80 80 AC */	lis r4, l_arcNames@ha /* 0x80AC0098@ha */
/* 80ABA924  38 84 00 98 */	addi r4, r4, l_arcNames@l /* 0x80AC0098@l */
/* 80ABA928  7C 84 00 2E */	lwzx r4, r4, r0
/* 80ABA92C  7C A5 E8 2E */	lwzx r5, r5, r29
/* 80ABA930  4B 69 82 39 */	bl getTexPtrnAnmP__8daNpcF_cFPci
/* 80ABA934  7C 64 1B 79 */	or. r4, r3, r3
/* 80ABA938  3C 60 80 AC */	lis r3, l_btpGetParamList@ha /* 0x80ABFFFC@ha */
/* 80ABA93C  38 03 FF FC */	addi r0, r3, l_btpGetParamList@l /* 0x80ABFFFC@l */
/* 80ABA940  7C 60 EA 14 */	add r3, r0, r29
/* 80ABA944  80 C3 00 04 */	lwz r6, 4(r3)
/* 80ABA948  80 7E 09 9C */	lwz r3, 0x99c(r30)
/* 80ABA94C  38 00 F5 7F */	li r0, -2689
/* 80ABA950  7C 60 00 38 */	and r0, r3, r0
/* 80ABA954  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 80ABA958  40 82 00 0C */	bne lbl_80ABA964
/* 80ABA95C  38 60 00 01 */	li r3, 1
/* 80ABA960  48 00 00 54 */	b lbl_80ABA9B4
lbl_80ABA964:
/* 80ABA964  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80ABA968  80 63 00 04 */	lwz r3, 4(r3)
/* 80ABA96C  80 A3 00 04 */	lwz r5, 4(r3)
/* 80ABA970  7F C3 F3 78 */	mr r3, r30
/* 80ABA974  3C E0 80 AC */	lis r7, lit_4320@ha /* 0x80ABFA64@ha */
/* 80ABA978  C0 27 FA 64 */	lfs f1, lit_4320@l(r7)  /* 0x80ABFA64@l */
/* 80ABA97C  4B 69 83 49 */	bl setBtpAnm__8daNpcF_cFP16J3DAnmTexPatternP12J3DModelDatafi
/* 80ABA980  2C 03 00 00 */	cmpwi r3, 0
/* 80ABA984  41 82 00 2C */	beq lbl_80ABA9B0
/* 80ABA988  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80ABA98C  60 00 02 80 */	ori r0, r0, 0x280
/* 80ABA990  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 80ABA994  2C 1F 00 00 */	cmpwi r31, 0
/* 80ABA998  40 82 00 10 */	bne lbl_80ABA9A8
/* 80ABA99C  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80ABA9A0  60 00 08 00 */	ori r0, r0, 0x800
/* 80ABA9A4  90 1E 09 9C */	stw r0, 0x99c(r30)
lbl_80ABA9A8:
/* 80ABA9A8  38 60 00 01 */	li r3, 1
/* 80ABA9AC  48 00 00 08 */	b lbl_80ABA9B4
lbl_80ABA9B0:
/* 80ABA9B0  38 60 00 00 */	li r3, 0
lbl_80ABA9B4:
/* 80ABA9B4  39 61 00 20 */	addi r11, r1, 0x20
/* 80ABA9B8  4B 8A 78 71 */	bl _restgpr_29
/* 80ABA9BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80ABA9C0  7C 08 03 A6 */	mtlr r0
/* 80ABA9C4  38 21 00 20 */	addi r1, r1, 0x20
/* 80ABA9C8  4E 80 00 20 */	blr 
