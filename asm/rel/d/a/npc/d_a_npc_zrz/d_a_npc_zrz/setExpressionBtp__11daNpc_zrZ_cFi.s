lbl_80B95DD0:
/* 80B95DD0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B95DD4  7C 08 02 A6 */	mflr r0
/* 80B95DD8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B95DDC  39 61 00 20 */	addi r11, r1, 0x20
/* 80B95DE0  4B 7C C3 FC */	b _savegpr_29
/* 80B95DE4  7C 7D 1B 78 */	mr r29, r3
/* 80B95DE8  7C 9E 23 78 */	mr r30, r4
/* 80B95DEC  3C 80 80 BA */	lis r4, cNullVec__6Z2Calc@ha
/* 80B95DF0  38 E4 B2 84 */	addi r7, r4, cNullVec__6Z2Calc@l
/* 80B95DF4  38 80 00 00 */	li r4, 0
/* 80B95DF8  3B E0 00 00 */	li r31, 0
/* 80B95DFC  80 A3 09 9C */	lwz r5, 0x99c(r3)
/* 80B95E00  38 00 F5 7F */	li r0, -2689
/* 80B95E04  7C A0 00 38 */	and r0, r5, r0
/* 80B95E08  90 03 09 9C */	stw r0, 0x99c(r3)
/* 80B95E0C  88 03 14 4C */	lbz r0, 0x144c(r3)
/* 80B95E10  28 00 00 01 */	cmplwi r0, 1
/* 80B95E14  40 82 00 38 */	bne lbl_80B95E4C
/* 80B95E18  57 C0 18 38 */	slwi r0, r30, 3
/* 80B95E1C  38 C7 00 88 */	addi r6, r7, 0x88
/* 80B95E20  7C A6 00 2E */	lwzx r5, r6, r0
/* 80B95E24  2C 05 00 00 */	cmpwi r5, 0
/* 80B95E28  41 80 00 54 */	blt lbl_80B95E7C
/* 80B95E2C  7C 86 02 14 */	add r4, r6, r0
/* 80B95E30  80 04 00 04 */	lwz r0, 4(r4)
/* 80B95E34  54 00 10 3A */	slwi r0, r0, 2
/* 80B95E38  38 87 01 10 */	addi r4, r7, 0x110
/* 80B95E3C  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B95E40  4B 5B CD 28 */	b getTexPtrnAnmP__8daNpcF_cFPci
/* 80B95E44  7C 64 1B 78 */	mr r4, r3
/* 80B95E48  48 00 00 34 */	b lbl_80B95E7C
lbl_80B95E4C:
/* 80B95E4C  57 C0 18 38 */	slwi r0, r30, 3
/* 80B95E50  38 C7 00 80 */	addi r6, r7, 0x80
/* 80B95E54  7C A6 00 2E */	lwzx r5, r6, r0
/* 80B95E58  2C 05 00 00 */	cmpwi r5, 0
/* 80B95E5C  41 80 00 20 */	blt lbl_80B95E7C
/* 80B95E60  7C 86 02 14 */	add r4, r6, r0
/* 80B95E64  80 04 00 04 */	lwz r0, 4(r4)
/* 80B95E68  54 00 10 3A */	slwi r0, r0, 2
/* 80B95E6C  38 87 01 10 */	addi r4, r7, 0x110
/* 80B95E70  7C 84 00 2E */	lwzx r4, r4, r0
/* 80B95E74  4B 5B CC F4 */	b getTexPtrnAnmP__8daNpcF_cFPci
/* 80B95E78  7C 64 1B 78 */	mr r4, r3
lbl_80B95E7C:
/* 80B95E7C  2C 1E 00 00 */	cmpwi r30, 0
/* 80B95E80  41 82 00 08 */	beq lbl_80B95E88
/* 80B95E84  48 00 00 0C */	b lbl_80B95E90
lbl_80B95E88:
/* 80B95E88  3B E0 00 02 */	li r31, 2
/* 80B95E8C  48 00 00 08 */	b lbl_80B95E94
lbl_80B95E90:
/* 80B95E90  38 80 00 00 */	li r4, 0
lbl_80B95E94:
/* 80B95E94  28 04 00 00 */	cmplwi r4, 0
/* 80B95E98  40 82 00 0C */	bne lbl_80B95EA4
/* 80B95E9C  38 60 00 01 */	li r3, 1
/* 80B95EA0  48 00 00 58 */	b lbl_80B95EF8
lbl_80B95EA4:
/* 80B95EA4  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B95EA8  80 63 00 04 */	lwz r3, 4(r3)
/* 80B95EAC  80 A3 00 04 */	lwz r5, 4(r3)
/* 80B95EB0  7F A3 EB 78 */	mr r3, r29
/* 80B95EB4  3C C0 80 BA */	lis r6, lit_4521@ha
/* 80B95EB8  C0 26 B0 80 */	lfs f1, lit_4521@l(r6)
/* 80B95EBC  7F E6 FB 78 */	mr r6, r31
/* 80B95EC0  4B 5B CE 04 */	b setBtpAnm__8daNpcF_cFP16J3DAnmTexPatternP12J3DModelDatafi
/* 80B95EC4  2C 03 00 00 */	cmpwi r3, 0
/* 80B95EC8  41 82 00 2C */	beq lbl_80B95EF4
/* 80B95ECC  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 80B95ED0  60 00 02 80 */	ori r0, r0, 0x280
/* 80B95ED4  90 1D 09 9C */	stw r0, 0x99c(r29)
/* 80B95ED8  2C 1E 00 00 */	cmpwi r30, 0
/* 80B95EDC  40 82 00 10 */	bne lbl_80B95EEC
/* 80B95EE0  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 80B95EE4  60 00 08 00 */	ori r0, r0, 0x800
/* 80B95EE8  90 1D 09 9C */	stw r0, 0x99c(r29)
lbl_80B95EEC:
/* 80B95EEC  38 60 00 01 */	li r3, 1
/* 80B95EF0  48 00 00 08 */	b lbl_80B95EF8
lbl_80B95EF4:
/* 80B95EF4  38 60 00 00 */	li r3, 0
lbl_80B95EF8:
/* 80B95EF8  39 61 00 20 */	addi r11, r1, 0x20
/* 80B95EFC  4B 7C C3 2C */	b _restgpr_29
/* 80B95F00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B95F04  7C 08 03 A6 */	mtlr r0
/* 80B95F08  38 21 00 20 */	addi r1, r1, 0x20
/* 80B95F0C  4E 80 00 20 */	blr 
