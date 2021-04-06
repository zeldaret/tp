lbl_80B8F898:
/* 80B8F898  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B8F89C  7C 08 02 A6 */	mflr r0
/* 80B8F8A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B8F8A4  39 61 00 20 */	addi r11, r1, 0x20
/* 80B8F8A8  4B 7D 29 35 */	bl _savegpr_29
/* 80B8F8AC  7C 7D 1B 78 */	mr r29, r3
/* 80B8F8B0  7C 9E 23 78 */	mr r30, r4
/* 80B8F8B4  38 80 00 00 */	li r4, 0
/* 80B8F8B8  3B E0 00 00 */	li r31, 0
/* 80B8F8BC  80 A3 09 9C */	lwz r5, 0x99c(r3)
/* 80B8F8C0  38 00 F5 7F */	li r0, -2689
/* 80B8F8C4  7C A0 00 38 */	and r0, r5, r0
/* 80B8F8C8  90 03 09 9C */	stw r0, 0x99c(r3)
/* 80B8F8CC  57 C0 18 38 */	slwi r0, r30, 3
/* 80B8F8D0  3C A0 80 B9 */	lis r5, l_btpGetParamList@ha /* 0x80B93818@ha */
/* 80B8F8D4  38 C5 38 18 */	addi r6, r5, l_btpGetParamList@l /* 0x80B93818@l */
/* 80B8F8D8  7C A6 00 2E */	lwzx r5, r6, r0
/* 80B8F8DC  2C 05 00 00 */	cmpwi r5, 0
/* 80B8F8E0  41 80 00 24 */	blt lbl_80B8F904
/* 80B8F8E4  7C 86 02 14 */	add r4, r6, r0
/* 80B8F8E8  80 04 00 04 */	lwz r0, 4(r4)
/* 80B8F8EC  54 00 10 3A */	slwi r0, r0, 2
/* 80B8F8F0  3C 80 80 B9 */	lis r4, l_resNames@ha /* 0x80B93948@ha */
/* 80B8F8F4  38 84 39 48 */	addi r4, r4, l_resNames@l /* 0x80B93948@l */
/* 80B8F8F8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B8F8FC  4B 5C 32 6D */	bl getTexPtrnAnmP__8daNpcF_cFPci
/* 80B8F900  7C 64 1B 78 */	mr r4, r3
lbl_80B8F904:
/* 80B8F904  28 1E 00 0E */	cmplwi r30, 0xe
/* 80B8F908  41 81 00 44 */	bgt lbl_80B8F94C
/* 80B8F90C  3C 60 80 B9 */	lis r3, lit_5001@ha /* 0x80B939E8@ha */
/* 80B8F910  38 63 39 E8 */	addi r3, r3, lit_5001@l /* 0x80B939E8@l */
/* 80B8F914  57 C0 10 3A */	slwi r0, r30, 2
/* 80B8F918  7C 03 00 2E */	lwzx r0, r3, r0
/* 80B8F91C  7C 09 03 A6 */	mtctr r0
/* 80B8F920  4E 80 04 20 */	bctr 
lbl_80B8F924:
/* 80B8F924  3B E0 00 02 */	li r31, 2
/* 80B8F928  48 00 00 28 */	b lbl_80B8F950
lbl_80B8F92C:
/* 80B8F92C  3B E0 00 02 */	li r31, 2
/* 80B8F930  48 00 00 20 */	b lbl_80B8F950
lbl_80B8F934:
/* 80B8F934  3B E0 00 02 */	li r31, 2
/* 80B8F938  48 00 00 18 */	b lbl_80B8F950
lbl_80B8F93C:
/* 80B8F93C  3B E0 00 02 */	li r31, 2
/* 80B8F940  48 00 00 10 */	b lbl_80B8F950
lbl_80B8F944:
/* 80B8F944  3B E0 00 02 */	li r31, 2
/* 80B8F948  48 00 00 08 */	b lbl_80B8F950
lbl_80B8F94C:
/* 80B8F94C  38 80 00 00 */	li r4, 0
lbl_80B8F950:
/* 80B8F950  28 04 00 00 */	cmplwi r4, 0
/* 80B8F954  40 82 00 0C */	bne lbl_80B8F960
/* 80B8F958  38 60 00 01 */	li r3, 1
/* 80B8F95C  48 00 00 58 */	b lbl_80B8F9B4
lbl_80B8F960:
/* 80B8F960  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B8F964  80 63 00 04 */	lwz r3, 4(r3)
/* 80B8F968  80 A3 00 04 */	lwz r5, 4(r3)
/* 80B8F96C  7F A3 EB 78 */	mr r3, r29
/* 80B8F970  3C C0 80 B9 */	lis r6, lit_4483@ha /* 0x80B93294@ha */
/* 80B8F974  C0 26 32 94 */	lfs f1, lit_4483@l(r6)  /* 0x80B93294@l */
/* 80B8F978  7F E6 FB 78 */	mr r6, r31
/* 80B8F97C  4B 5C 33 49 */	bl setBtpAnm__8daNpcF_cFP16J3DAnmTexPatternP12J3DModelDatafi
/* 80B8F980  2C 03 00 00 */	cmpwi r3, 0
/* 80B8F984  41 82 00 2C */	beq lbl_80B8F9B0
/* 80B8F988  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 80B8F98C  60 00 02 80 */	ori r0, r0, 0x280
/* 80B8F990  90 1D 09 9C */	stw r0, 0x99c(r29)
/* 80B8F994  2C 1E 00 00 */	cmpwi r30, 0
/* 80B8F998  40 82 00 10 */	bne lbl_80B8F9A8
/* 80B8F99C  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 80B8F9A0  60 00 08 00 */	ori r0, r0, 0x800
/* 80B8F9A4  90 1D 09 9C */	stw r0, 0x99c(r29)
lbl_80B8F9A8:
/* 80B8F9A8  38 60 00 01 */	li r3, 1
/* 80B8F9AC  48 00 00 08 */	b lbl_80B8F9B4
lbl_80B8F9B0:
/* 80B8F9B0  38 60 00 00 */	li r3, 0
lbl_80B8F9B4:
/* 80B8F9B4  39 61 00 20 */	addi r11, r1, 0x20
/* 80B8F9B8  4B 7D 28 71 */	bl _restgpr_29
/* 80B8F9BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B8F9C0  7C 08 03 A6 */	mtlr r0
/* 80B8F9C4  38 21 00 20 */	addi r1, r1, 0x20
/* 80B8F9C8  4E 80 00 20 */	blr 
