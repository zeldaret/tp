lbl_80A84DAC:
/* 80A84DAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A84DB0  7C 08 02 A6 */	mflr r0
/* 80A84DB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A84DB8  39 61 00 20 */	addi r11, r1, 0x20
/* 80A84DBC  4B 8D D4 20 */	b _savegpr_29
/* 80A84DC0  7C 7D 1B 78 */	mr r29, r3
/* 80A84DC4  7C 9E 23 78 */	mr r30, r4
/* 80A84DC8  38 80 00 00 */	li r4, 0
/* 80A84DCC  3B E0 00 00 */	li r31, 0
/* 80A84DD0  80 A3 09 9C */	lwz r5, 0x99c(r3)
/* 80A84DD4  38 00 F5 7F */	li r0, -2689
/* 80A84DD8  7C A0 00 38 */	and r0, r5, r0
/* 80A84DDC  90 03 09 9C */	stw r0, 0x99c(r3)
/* 80A84DE0  57 C0 18 38 */	slwi r0, r30, 3
/* 80A84DE4  3C A0 80 A9 */	lis r5, l_btpGetParamList@ha
/* 80A84DE8  38 C5 87 54 */	addi r6, r5, l_btpGetParamList@l
/* 80A84DEC  7C A6 00 2E */	lwzx r5, r6, r0
/* 80A84DF0  2C 05 00 00 */	cmpwi r5, 0
/* 80A84DF4  41 80 00 24 */	blt lbl_80A84E18
/* 80A84DF8  7C 86 02 14 */	add r4, r6, r0
/* 80A84DFC  80 04 00 04 */	lwz r0, 4(r4)
/* 80A84E00  54 00 10 3A */	slwi r0, r0, 2
/* 80A84E04  3C 80 80 A9 */	lis r4, l_resNames@ha
/* 80A84E08  38 84 87 DC */	addi r4, r4, l_resNames@l
/* 80A84E0C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A84E10  4B 6C DD 58 */	b getTexPtrnAnmP__8daNpcF_cFPci
/* 80A84E14  7C 64 1B 78 */	mr r4, r3
lbl_80A84E18:
/* 80A84E18  2C 1E 00 00 */	cmpwi r30, 0
/* 80A84E1C  41 82 00 08 */	beq lbl_80A84E24
/* 80A84E20  48 00 00 0C */	b lbl_80A84E2C
lbl_80A84E24:
/* 80A84E24  3B E0 00 02 */	li r31, 2
/* 80A84E28  48 00 00 08 */	b lbl_80A84E30
lbl_80A84E2C:
/* 80A84E2C  38 80 00 00 */	li r4, 0
lbl_80A84E30:
/* 80A84E30  28 04 00 00 */	cmplwi r4, 0
/* 80A84E34  40 82 00 0C */	bne lbl_80A84E40
/* 80A84E38  38 60 00 01 */	li r3, 1
/* 80A84E3C  48 00 00 58 */	b lbl_80A84E94
lbl_80A84E40:
/* 80A84E40  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A84E44  80 63 00 04 */	lwz r3, 4(r3)
/* 80A84E48  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A84E4C  7F A3 EB 78 */	mr r3, r29
/* 80A84E50  3C C0 80 A9 */	lis r6, lit_4462@ha
/* 80A84E54  C0 26 84 CC */	lfs f1, lit_4462@l(r6)
/* 80A84E58  7F E6 FB 78 */	mr r6, r31
/* 80A84E5C  4B 6C DE 68 */	b setBtpAnm__8daNpcF_cFP16J3DAnmTexPatternP12J3DModelDatafi
/* 80A84E60  2C 03 00 00 */	cmpwi r3, 0
/* 80A84E64  41 82 00 2C */	beq lbl_80A84E90
/* 80A84E68  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 80A84E6C  60 00 02 80 */	ori r0, r0, 0x280
/* 80A84E70  90 1D 09 9C */	stw r0, 0x99c(r29)
/* 80A84E74  2C 1E 00 00 */	cmpwi r30, 0
/* 80A84E78  40 82 00 10 */	bne lbl_80A84E88
/* 80A84E7C  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 80A84E80  60 00 08 00 */	ori r0, r0, 0x800
/* 80A84E84  90 1D 09 9C */	stw r0, 0x99c(r29)
lbl_80A84E88:
/* 80A84E88  38 60 00 01 */	li r3, 1
/* 80A84E8C  48 00 00 08 */	b lbl_80A84E94
lbl_80A84E90:
/* 80A84E90  38 60 00 00 */	li r3, 0
lbl_80A84E94:
/* 80A84E94  39 61 00 20 */	addi r11, r1, 0x20
/* 80A84E98  4B 8D D3 90 */	b _restgpr_29
/* 80A84E9C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A84EA0  7C 08 03 A6 */	mtlr r0
/* 80A84EA4  38 21 00 20 */	addi r1, r1, 0x20
/* 80A84EA8  4E 80 00 20 */	blr 
