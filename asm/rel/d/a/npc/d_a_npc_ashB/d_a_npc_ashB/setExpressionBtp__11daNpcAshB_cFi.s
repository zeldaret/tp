lbl_8095EE00:
/* 8095EE00  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8095EE04  7C 08 02 A6 */	mflr r0
/* 8095EE08  90 01 00 24 */	stw r0, 0x24(r1)
/* 8095EE0C  39 61 00 20 */	addi r11, r1, 0x20
/* 8095EE10  4B A0 33 CD */	bl _savegpr_29
/* 8095EE14  7C 7E 1B 78 */	mr r30, r3
/* 8095EE18  7C 9F 23 78 */	mr r31, r4
/* 8095EE1C  1F BF 00 0C */	mulli r29, r31, 0xc
/* 8095EE20  3C 80 80 96 */	lis r4, l_btpGetParamList@ha /* 0x80962534@ha */
/* 8095EE24  38 A4 25 34 */	addi r5, r4, l_btpGetParamList@l /* 0x80962534@l */
/* 8095EE28  7C 85 EA 14 */	add r4, r5, r29
/* 8095EE2C  80 04 00 08 */	lwz r0, 8(r4)
/* 8095EE30  54 00 10 3A */	slwi r0, r0, 2
/* 8095EE34  3C 80 80 96 */	lis r4, l_arcNames@ha /* 0x80962594@ha */
/* 8095EE38  38 84 25 94 */	addi r4, r4, l_arcNames@l /* 0x80962594@l */
/* 8095EE3C  7C 84 00 2E */	lwzx r4, r4, r0
/* 8095EE40  7C A5 E8 2E */	lwzx r5, r5, r29
/* 8095EE44  4B 7F 3D 25 */	bl getTexPtrnAnmP__8daNpcF_cFPci
/* 8095EE48  7C 64 1B 79 */	or. r4, r3, r3
/* 8095EE4C  3C 60 80 96 */	lis r3, l_btpGetParamList@ha /* 0x80962534@ha */
/* 8095EE50  38 03 25 34 */	addi r0, r3, l_btpGetParamList@l /* 0x80962534@l */
/* 8095EE54  7C 60 EA 14 */	add r3, r0, r29
/* 8095EE58  80 C3 00 04 */	lwz r6, 4(r3)
/* 8095EE5C  80 7E 09 9C */	lwz r3, 0x99c(r30)
/* 8095EE60  38 00 F5 7F */	li r0, -2689
/* 8095EE64  7C 60 00 38 */	and r0, r3, r0
/* 8095EE68  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 8095EE6C  40 82 00 0C */	bne lbl_8095EE78
/* 8095EE70  38 60 00 01 */	li r3, 1
/* 8095EE74  48 00 00 54 */	b lbl_8095EEC8
lbl_8095EE78:
/* 8095EE78  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 8095EE7C  80 63 00 04 */	lwz r3, 4(r3)
/* 8095EE80  80 A3 00 04 */	lwz r5, 4(r3)
/* 8095EE84  7F C3 F3 78 */	mr r3, r30
/* 8095EE88  3C E0 80 96 */	lis r7, lit_4237@ha /* 0x80962164@ha */
/* 8095EE8C  C0 27 21 64 */	lfs f1, lit_4237@l(r7)  /* 0x80962164@l */
/* 8095EE90  4B 7F 3E 35 */	bl setBtpAnm__8daNpcF_cFP16J3DAnmTexPatternP12J3DModelDatafi
/* 8095EE94  2C 03 00 00 */	cmpwi r3, 0
/* 8095EE98  41 82 00 2C */	beq lbl_8095EEC4
/* 8095EE9C  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 8095EEA0  60 00 02 80 */	ori r0, r0, 0x280
/* 8095EEA4  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 8095EEA8  2C 1F 00 00 */	cmpwi r31, 0
/* 8095EEAC  40 82 00 10 */	bne lbl_8095EEBC
/* 8095EEB0  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 8095EEB4  60 00 08 00 */	ori r0, r0, 0x800
/* 8095EEB8  90 1E 09 9C */	stw r0, 0x99c(r30)
lbl_8095EEBC:
/* 8095EEBC  38 60 00 01 */	li r3, 1
/* 8095EEC0  48 00 00 08 */	b lbl_8095EEC8
lbl_8095EEC4:
/* 8095EEC4  38 60 00 00 */	li r3, 0
lbl_8095EEC8:
/* 8095EEC8  39 61 00 20 */	addi r11, r1, 0x20
/* 8095EECC  4B A0 33 5D */	bl _restgpr_29
/* 8095EED0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8095EED4  7C 08 03 A6 */	mtlr r0
/* 8095EED8  38 21 00 20 */	addi r1, r1, 0x20
/* 8095EEDC  4E 80 00 20 */	blr 
