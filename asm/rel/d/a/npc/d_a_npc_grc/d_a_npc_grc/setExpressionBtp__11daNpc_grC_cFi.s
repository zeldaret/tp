lbl_809CCB78:
/* 809CCB78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809CCB7C  7C 08 02 A6 */	mflr r0
/* 809CCB80  90 01 00 24 */	stw r0, 0x24(r1)
/* 809CCB84  39 61 00 20 */	addi r11, r1, 0x20
/* 809CCB88  4B 99 56 54 */	b _savegpr_29
/* 809CCB8C  7C 7D 1B 78 */	mr r29, r3
/* 809CCB90  7C 9E 23 78 */	mr r30, r4
/* 809CCB94  38 80 00 00 */	li r4, 0
/* 809CCB98  3B E0 00 00 */	li r31, 0
/* 809CCB9C  80 A3 09 9C */	lwz r5, 0x99c(r3)
/* 809CCBA0  38 00 F5 7F */	li r0, -2689
/* 809CCBA4  7C A0 00 38 */	and r0, r5, r0
/* 809CCBA8  90 03 09 9C */	stw r0, 0x99c(r3)
/* 809CCBAC  57 C0 18 38 */	slwi r0, r30, 3
/* 809CCBB0  3C A0 80 9D */	lis r5, l_btpGetParamList@ha
/* 809CCBB4  38 C5 F8 E4 */	addi r6, r5, l_btpGetParamList@l
/* 809CCBB8  7C A6 00 2E */	lwzx r5, r6, r0
/* 809CCBBC  2C 05 00 00 */	cmpwi r5, 0
/* 809CCBC0  41 80 00 24 */	blt lbl_809CCBE4
/* 809CCBC4  7C 86 02 14 */	add r4, r6, r0
/* 809CCBC8  80 04 00 04 */	lwz r0, 4(r4)
/* 809CCBCC  54 00 10 3A */	slwi r0, r0, 2
/* 809CCBD0  3C 80 80 9D */	lis r4, l_resNames@ha
/* 809CCBD4  38 84 F9 64 */	addi r4, r4, l_resNames@l
/* 809CCBD8  7C 84 00 2E */	lwzx r4, r4, r0
/* 809CCBDC  4B 78 5F 8C */	b getTexPtrnAnmP__8daNpcF_cFPci
/* 809CCBE0  7C 64 1B 78 */	mr r4, r3
lbl_809CCBE4:
/* 809CCBE4  2C 1E 00 04 */	cmpwi r30, 4
/* 809CCBE8  41 82 00 2C */	beq lbl_809CCC14
/* 809CCBEC  40 80 00 14 */	bge lbl_809CCC00
/* 809CCBF0  2C 1E 00 00 */	cmpwi r30, 0
/* 809CCBF4  41 82 00 18 */	beq lbl_809CCC0C
/* 809CCBF8  40 80 00 30 */	bge lbl_809CCC28
/* 809CCBFC  48 00 00 28 */	b lbl_809CCC24
lbl_809CCC00:
/* 809CCC00  2C 1E 00 06 */	cmpwi r30, 6
/* 809CCC04  40 80 00 20 */	bge lbl_809CCC24
/* 809CCC08  48 00 00 14 */	b lbl_809CCC1C
lbl_809CCC0C:
/* 809CCC0C  3B E0 00 02 */	li r31, 2
/* 809CCC10  48 00 00 18 */	b lbl_809CCC28
lbl_809CCC14:
/* 809CCC14  3B E0 00 02 */	li r31, 2
/* 809CCC18  48 00 00 10 */	b lbl_809CCC28
lbl_809CCC1C:
/* 809CCC1C  3B E0 00 02 */	li r31, 2
/* 809CCC20  48 00 00 08 */	b lbl_809CCC28
lbl_809CCC24:
/* 809CCC24  38 80 00 00 */	li r4, 0
lbl_809CCC28:
/* 809CCC28  28 04 00 00 */	cmplwi r4, 0
/* 809CCC2C  40 82 00 0C */	bne lbl_809CCC38
/* 809CCC30  38 60 00 01 */	li r3, 1
/* 809CCC34  48 00 00 58 */	b lbl_809CCC8C
lbl_809CCC38:
/* 809CCC38  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 809CCC3C  80 63 00 04 */	lwz r3, 4(r3)
/* 809CCC40  80 A3 00 04 */	lwz r5, 4(r3)
/* 809CCC44  7F A3 EB 78 */	mr r3, r29
/* 809CCC48  3C C0 80 9D */	lis r6, lit_4454@ha
/* 809CCC4C  C0 26 F5 98 */	lfs f1, lit_4454@l(r6)
/* 809CCC50  7F E6 FB 78 */	mr r6, r31
/* 809CCC54  4B 78 60 70 */	b setBtpAnm__8daNpcF_cFP16J3DAnmTexPatternP12J3DModelDatafi
/* 809CCC58  2C 03 00 00 */	cmpwi r3, 0
/* 809CCC5C  41 82 00 2C */	beq lbl_809CCC88
/* 809CCC60  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 809CCC64  60 00 02 80 */	ori r0, r0, 0x280
/* 809CCC68  90 1D 09 9C */	stw r0, 0x99c(r29)
/* 809CCC6C  2C 1E 00 00 */	cmpwi r30, 0
/* 809CCC70  40 82 00 10 */	bne lbl_809CCC80
/* 809CCC74  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 809CCC78  60 00 08 00 */	ori r0, r0, 0x800
/* 809CCC7C  90 1D 09 9C */	stw r0, 0x99c(r29)
lbl_809CCC80:
/* 809CCC80  38 60 00 01 */	li r3, 1
/* 809CCC84  48 00 00 08 */	b lbl_809CCC8C
lbl_809CCC88:
/* 809CCC88  38 60 00 00 */	li r3, 0
lbl_809CCC8C:
/* 809CCC8C  39 61 00 20 */	addi r11, r1, 0x20
/* 809CCC90  4B 99 55 98 */	b _restgpr_29
/* 809CCC94  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809CCC98  7C 08 03 A6 */	mtlr r0
/* 809CCC9C  38 21 00 20 */	addi r1, r1, 0x20
/* 809CCCA0  4E 80 00 20 */	blr 
