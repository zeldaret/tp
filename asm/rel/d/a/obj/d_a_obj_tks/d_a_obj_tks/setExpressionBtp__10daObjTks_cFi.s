lbl_80D102D0:
/* 80D102D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D102D4  7C 08 02 A6 */	mflr r0
/* 80D102D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D102DC  39 61 00 20 */	addi r11, r1, 0x20
/* 80D102E0  4B 65 1E FD */	bl _savegpr_29
/* 80D102E4  7C 7E 1B 78 */	mr r30, r3
/* 80D102E8  7C 9F 23 78 */	mr r31, r4
/* 80D102EC  3C 80 80 D1 */	lis r4, l_arcName@ha /* 0x80D12954@ha */
/* 80D102F0  38 84 29 54 */	addi r4, r4, l_arcName@l /* 0x80D12954@l */
/* 80D102F4  80 84 00 00 */	lwz r4, 0(r4)
/* 80D102F8  57 FD 18 38 */	slwi r29, r31, 3
/* 80D102FC  3C A0 80 D1 */	lis r5, l_btpGetParamList@ha /* 0x80D12940@ha */
/* 80D10300  38 A5 29 40 */	addi r5, r5, l_btpGetParamList@l /* 0x80D12940@l */
/* 80D10304  7C A5 E8 2E */	lwzx r5, r5, r29
/* 80D10308  4B 44 28 61 */	bl getTexPtrnAnmP__8daNpcF_cFPci
/* 80D1030C  7C 64 1B 79 */	or. r4, r3, r3
/* 80D10310  3C 60 80 D1 */	lis r3, l_btpGetParamList@ha /* 0x80D12940@ha */
/* 80D10314  38 03 29 40 */	addi r0, r3, l_btpGetParamList@l /* 0x80D12940@l */
/* 80D10318  7C 60 EA 14 */	add r3, r0, r29
/* 80D1031C  80 C3 00 04 */	lwz r6, 4(r3)
/* 80D10320  80 7E 09 9C */	lwz r3, 0x99c(r30)
/* 80D10324  38 00 F5 7F */	li r0, -2689
/* 80D10328  7C 60 00 38 */	and r0, r3, r0
/* 80D1032C  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 80D10330  40 82 00 0C */	bne lbl_80D1033C
/* 80D10334  38 60 00 01 */	li r3, 1
/* 80D10338  48 00 00 54 */	b lbl_80D1038C
lbl_80D1033C:
/* 80D1033C  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80D10340  80 63 00 04 */	lwz r3, 4(r3)
/* 80D10344  80 A3 00 04 */	lwz r5, 4(r3)
/* 80D10348  7F C3 F3 78 */	mr r3, r30
/* 80D1034C  3C E0 80 D1 */	lis r7, lit_4323@ha /* 0x80D127D0@ha */
/* 80D10350  C0 27 27 D0 */	lfs f1, lit_4323@l(r7)  /* 0x80D127D0@l */
/* 80D10354  4B 44 29 71 */	bl setBtpAnm__8daNpcF_cFP16J3DAnmTexPatternP12J3DModelDatafi
/* 80D10358  2C 03 00 00 */	cmpwi r3, 0
/* 80D1035C  41 82 00 2C */	beq lbl_80D10388
/* 80D10360  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80D10364  60 00 02 80 */	ori r0, r0, 0x280
/* 80D10368  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 80D1036C  2C 1F 00 00 */	cmpwi r31, 0
/* 80D10370  40 82 00 10 */	bne lbl_80D10380
/* 80D10374  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80D10378  60 00 08 00 */	ori r0, r0, 0x800
/* 80D1037C  90 1E 09 9C */	stw r0, 0x99c(r30)
lbl_80D10380:
/* 80D10380  38 60 00 01 */	li r3, 1
/* 80D10384  48 00 00 08 */	b lbl_80D1038C
lbl_80D10388:
/* 80D10388  38 60 00 00 */	li r3, 0
lbl_80D1038C:
/* 80D1038C  39 61 00 20 */	addi r11, r1, 0x20
/* 80D10390  4B 65 1E 99 */	bl _restgpr_29
/* 80D10394  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D10398  7C 08 03 A6 */	mtlr r0
/* 80D1039C  38 21 00 20 */	addi r1, r1, 0x20
/* 80D103A0  4E 80 00 20 */	blr 
