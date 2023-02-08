lbl_80B0D5A4:
/* 80B0D5A4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B0D5A8  7C 08 02 A6 */	mflr r0
/* 80B0D5AC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B0D5B0  39 61 00 20 */	addi r11, r1, 0x20
/* 80B0D5B4  4B 85 4C 29 */	bl _savegpr_29
/* 80B0D5B8  7C 7E 1B 78 */	mr r30, r3
/* 80B0D5BC  7C 9F 23 78 */	mr r31, r4
/* 80B0D5C0  3C 80 80 B1 */	lis r4, l_arcName@ha /* 0x80B10AB8@ha */
/* 80B0D5C4  38 84 0A B8 */	addi r4, r4, l_arcName@l /* 0x80B10AB8@l */
/* 80B0D5C8  80 84 00 00 */	lwz r4, 0(r4)
/* 80B0D5CC  57 FD 18 38 */	slwi r29, r31, 3
/* 80B0D5D0  3C A0 80 B1 */	lis r5, l_btpGetParamList@ha /* 0x80B10A98@ha */
/* 80B0D5D4  38 A5 0A 98 */	addi r5, r5, l_btpGetParamList@l /* 0x80B10A98@l */
/* 80B0D5D8  7C A5 E8 2E */	lwzx r5, r5, r29
/* 80B0D5DC  4B 64 55 8D */	bl getTexPtrnAnmP__8daNpcF_cFPci
/* 80B0D5E0  7C 64 1B 79 */	or. r4, r3, r3
/* 80B0D5E4  3C 60 80 B1 */	lis r3, l_btpGetParamList@ha /* 0x80B10A98@ha */
/* 80B0D5E8  38 03 0A 98 */	addi r0, r3, l_btpGetParamList@l /* 0x80B10A98@l */
/* 80B0D5EC  7C 60 EA 14 */	add r3, r0, r29
/* 80B0D5F0  80 C3 00 04 */	lwz r6, 4(r3)
/* 80B0D5F4  80 7E 09 9C */	lwz r3, 0x99c(r30)
/* 80B0D5F8  38 00 F5 7F */	li r0, -2689
/* 80B0D5FC  7C 60 00 38 */	and r0, r3, r0
/* 80B0D600  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 80B0D604  40 82 00 0C */	bne lbl_80B0D610
/* 80B0D608  38 60 00 01 */	li r3, 1
/* 80B0D60C  48 00 00 54 */	b lbl_80B0D660
lbl_80B0D610:
/* 80B0D610  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80B0D614  80 63 00 04 */	lwz r3, 4(r3)
/* 80B0D618  80 A3 00 04 */	lwz r5, 4(r3)
/* 80B0D61C  7F C3 F3 78 */	mr r3, r30
/* 80B0D620  3C E0 80 B1 */	lis r7, lit_4358@ha /* 0x80B10964@ha */
/* 80B0D624  C0 27 09 64 */	lfs f1, lit_4358@l(r7)  /* 0x80B10964@l */
/* 80B0D628  4B 64 56 9D */	bl setBtpAnm__8daNpcF_cFP16J3DAnmTexPatternP12J3DModelDatafi
/* 80B0D62C  2C 03 00 00 */	cmpwi r3, 0
/* 80B0D630  41 82 00 2C */	beq lbl_80B0D65C
/* 80B0D634  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80B0D638  60 00 02 80 */	ori r0, r0, 0x280
/* 80B0D63C  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 80B0D640  2C 1F 00 00 */	cmpwi r31, 0
/* 80B0D644  40 82 00 10 */	bne lbl_80B0D654
/* 80B0D648  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80B0D64C  60 00 08 00 */	ori r0, r0, 0x800
/* 80B0D650  90 1E 09 9C */	stw r0, 0x99c(r30)
lbl_80B0D654:
/* 80B0D654  38 60 00 01 */	li r3, 1
/* 80B0D658  48 00 00 08 */	b lbl_80B0D660
lbl_80B0D65C:
/* 80B0D65C  38 60 00 00 */	li r3, 0
lbl_80B0D660:
/* 80B0D660  39 61 00 20 */	addi r11, r1, 0x20
/* 80B0D664  4B 85 4B C5 */	bl _restgpr_29
/* 80B0D668  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B0D66C  7C 08 03 A6 */	mtlr r0
/* 80B0D670  38 21 00 20 */	addi r1, r1, 0x20
/* 80B0D674  4E 80 00 20 */	blr 
