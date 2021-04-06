lbl_809EAA08:
/* 809EAA08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809EAA0C  7C 08 02 A6 */	mflr r0
/* 809EAA10  90 01 00 24 */	stw r0, 0x24(r1)
/* 809EAA14  39 61 00 20 */	addi r11, r1, 0x20
/* 809EAA18  4B 97 77 C5 */	bl _savegpr_29
/* 809EAA1C  7C 7D 1B 78 */	mr r29, r3
/* 809EAA20  7C 9E 23 78 */	mr r30, r4
/* 809EAA24  38 80 00 00 */	li r4, 0
/* 809EAA28  3B E0 00 00 */	li r31, 0
/* 809EAA2C  80 A3 09 9C */	lwz r5, 0x99c(r3)
/* 809EAA30  38 00 F5 7F */	li r0, -2689
/* 809EAA34  7C A0 00 38 */	and r0, r5, r0
/* 809EAA38  90 03 09 9C */	stw r0, 0x99c(r3)
/* 809EAA3C  57 C0 18 38 */	slwi r0, r30, 3
/* 809EAA40  3C A0 80 9F */	lis r5, l_btpGetParamList@ha /* 0x809EF7D8@ha */
/* 809EAA44  38 C5 F7 D8 */	addi r6, r5, l_btpGetParamList@l /* 0x809EF7D8@l */
/* 809EAA48  7C A6 00 2E */	lwzx r5, r6, r0
/* 809EAA4C  2C 05 00 00 */	cmpwi r5, 0
/* 809EAA50  41 80 00 24 */	blt lbl_809EAA74
/* 809EAA54  7C 86 02 14 */	add r4, r6, r0
/* 809EAA58  80 04 00 04 */	lwz r0, 4(r4)
/* 809EAA5C  54 00 10 3A */	slwi r0, r0, 2
/* 809EAA60  3C 80 80 9F */	lis r4, l_resNames@ha /* 0x809EF8E8@ha */
/* 809EAA64  38 84 F8 E8 */	addi r4, r4, l_resNames@l /* 0x809EF8E8@l */
/* 809EAA68  7C 84 00 2E */	lwzx r4, r4, r0
/* 809EAA6C  4B 76 80 FD */	bl getTexPtrnAnmP__8daNpcF_cFPci
/* 809EAA70  7C 64 1B 78 */	mr r4, r3
lbl_809EAA74:
/* 809EAA74  2C 1E 00 03 */	cmpwi r30, 3
/* 809EAA78  41 82 00 34 */	beq lbl_809EAAAC
/* 809EAA7C  40 80 00 18 */	bge lbl_809EAA94
/* 809EAA80  2C 1E 00 02 */	cmpwi r30, 2
/* 809EAA84  40 80 00 34 */	bge lbl_809EAAB8
/* 809EAA88  2C 1E 00 00 */	cmpwi r30, 0
/* 809EAA8C  40 80 00 20 */	bge lbl_809EAAAC
/* 809EAA90  48 00 00 24 */	b lbl_809EAAB4
lbl_809EAA94:
/* 809EAA94  2C 1E 00 09 */	cmpwi r30, 9
/* 809EAA98  41 82 00 20 */	beq lbl_809EAAB8
/* 809EAA9C  40 80 00 18 */	bge lbl_809EAAB4
/* 809EAAA0  2C 1E 00 08 */	cmpwi r30, 8
/* 809EAAA4  40 80 00 08 */	bge lbl_809EAAAC
/* 809EAAA8  48 00 00 10 */	b lbl_809EAAB8
lbl_809EAAAC:
/* 809EAAAC  3B E0 00 02 */	li r31, 2
/* 809EAAB0  48 00 00 08 */	b lbl_809EAAB8
lbl_809EAAB4:
/* 809EAAB4  38 80 00 00 */	li r4, 0
lbl_809EAAB8:
/* 809EAAB8  28 04 00 00 */	cmplwi r4, 0
/* 809EAABC  40 82 00 0C */	bne lbl_809EAAC8
/* 809EAAC0  38 60 00 01 */	li r3, 1
/* 809EAAC4  48 00 00 58 */	b lbl_809EAB1C
lbl_809EAAC8:
/* 809EAAC8  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 809EAACC  80 63 00 04 */	lwz r3, 4(r3)
/* 809EAAD0  80 A3 00 04 */	lwz r5, 4(r3)
/* 809EAAD4  7F A3 EB 78 */	mr r3, r29
/* 809EAAD8  3C C0 80 9F */	lis r6, lit_4359@ha /* 0x809EF298@ha */
/* 809EAADC  C0 26 F2 98 */	lfs f1, lit_4359@l(r6)  /* 0x809EF298@l */
/* 809EAAE0  7F E6 FB 78 */	mr r6, r31
/* 809EAAE4  4B 76 81 E1 */	bl setBtpAnm__8daNpcF_cFP16J3DAnmTexPatternP12J3DModelDatafi
/* 809EAAE8  2C 03 00 00 */	cmpwi r3, 0
/* 809EAAEC  41 82 00 2C */	beq lbl_809EAB18
/* 809EAAF0  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 809EAAF4  60 00 02 80 */	ori r0, r0, 0x280
/* 809EAAF8  90 1D 09 9C */	stw r0, 0x99c(r29)
/* 809EAAFC  2C 1E 00 00 */	cmpwi r30, 0
/* 809EAB00  40 82 00 10 */	bne lbl_809EAB10
/* 809EAB04  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 809EAB08  60 00 08 00 */	ori r0, r0, 0x800
/* 809EAB0C  90 1D 09 9C */	stw r0, 0x99c(r29)
lbl_809EAB10:
/* 809EAB10  38 60 00 01 */	li r3, 1
/* 809EAB14  48 00 00 08 */	b lbl_809EAB1C
lbl_809EAB18:
/* 809EAB18  38 60 00 00 */	li r3, 0
lbl_809EAB1C:
/* 809EAB1C  39 61 00 20 */	addi r11, r1, 0x20
/* 809EAB20  4B 97 77 09 */	bl _restgpr_29
/* 809EAB24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809EAB28  7C 08 03 A6 */	mtlr r0
/* 809EAB2C  38 21 00 20 */	addi r1, r1, 0x20
/* 809EAB30  4E 80 00 20 */	blr 
