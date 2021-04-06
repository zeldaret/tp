lbl_809C0CE4:
/* 809C0CE4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809C0CE8  7C 08 02 A6 */	mflr r0
/* 809C0CEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 809C0CF0  39 61 00 20 */	addi r11, r1, 0x20
/* 809C0CF4  4B 9A 14 E9 */	bl _savegpr_29
/* 809C0CF8  7C 7D 1B 78 */	mr r29, r3
/* 809C0CFC  7C 9E 23 78 */	mr r30, r4
/* 809C0D00  38 80 00 00 */	li r4, 0
/* 809C0D04  3B E0 00 00 */	li r31, 0
/* 809C0D08  80 A3 09 9C */	lwz r5, 0x99c(r3)
/* 809C0D0C  38 00 F5 7F */	li r0, -2689
/* 809C0D10  7C A0 00 38 */	and r0, r5, r0
/* 809C0D14  90 03 09 9C */	stw r0, 0x99c(r3)
/* 809C0D18  57 C0 18 38 */	slwi r0, r30, 3
/* 809C0D1C  3C A0 80 9D */	lis r5, l_btpGetParamList@ha /* 0x809CA7F4@ha */
/* 809C0D20  38 C5 A7 F4 */	addi r6, r5, l_btpGetParamList@l /* 0x809CA7F4@l */
/* 809C0D24  7C A6 00 2E */	lwzx r5, r6, r0
/* 809C0D28  2C 05 00 00 */	cmpwi r5, 0
/* 809C0D2C  41 80 00 24 */	blt lbl_809C0D50
/* 809C0D30  7C 86 02 14 */	add r4, r6, r0
/* 809C0D34  80 04 00 04 */	lwz r0, 4(r4)
/* 809C0D38  54 00 10 3A */	slwi r0, r0, 2
/* 809C0D3C  3C 80 80 9D */	lis r4, l_resNames@ha /* 0x809CAAD4@ha */
/* 809C0D40  38 84 AA D4 */	addi r4, r4, l_resNames@l /* 0x809CAAD4@l */
/* 809C0D44  7C 84 00 2E */	lwzx r4, r4, r0
/* 809C0D48  4B 79 1E 21 */	bl getTexPtrnAnmP__8daNpcF_cFPci
/* 809C0D4C  7C 64 1B 78 */	mr r4, r3
lbl_809C0D50:
/* 809C0D50  28 1E 00 0E */	cmplwi r30, 0xe
/* 809C0D54  41 81 00 44 */	bgt lbl_809C0D98
/* 809C0D58  3C 60 80 9D */	lis r3, lit_5405@ha /* 0x809CACEC@ha */
/* 809C0D5C  38 63 AC EC */	addi r3, r3, lit_5405@l /* 0x809CACEC@l */
/* 809C0D60  57 C0 10 3A */	slwi r0, r30, 2
/* 809C0D64  7C 03 00 2E */	lwzx r0, r3, r0
/* 809C0D68  7C 09 03 A6 */	mtctr r0
/* 809C0D6C  4E 80 04 20 */	bctr 
lbl_809C0D70:
/* 809C0D70  3B E0 00 02 */	li r31, 2
/* 809C0D74  48 00 00 28 */	b lbl_809C0D9C
lbl_809C0D78:
/* 809C0D78  3B E0 00 02 */	li r31, 2
/* 809C0D7C  48 00 00 20 */	b lbl_809C0D9C
lbl_809C0D80:
/* 809C0D80  3B E0 00 02 */	li r31, 2
/* 809C0D84  48 00 00 18 */	b lbl_809C0D9C
lbl_809C0D88:
/* 809C0D88  3B E0 00 02 */	li r31, 2
/* 809C0D8C  48 00 00 10 */	b lbl_809C0D9C
lbl_809C0D90:
/* 809C0D90  3B E0 00 02 */	li r31, 2
/* 809C0D94  48 00 00 08 */	b lbl_809C0D9C
lbl_809C0D98:
/* 809C0D98  38 80 00 00 */	li r4, 0
lbl_809C0D9C:
/* 809C0D9C  28 04 00 00 */	cmplwi r4, 0
/* 809C0DA0  40 82 00 0C */	bne lbl_809C0DAC
/* 809C0DA4  38 60 00 01 */	li r3, 1
/* 809C0DA8  48 00 00 58 */	b lbl_809C0E00
lbl_809C0DAC:
/* 809C0DAC  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 809C0DB0  80 63 00 04 */	lwz r3, 4(r3)
/* 809C0DB4  80 A3 00 04 */	lwz r5, 4(r3)
/* 809C0DB8  7F A3 EB 78 */	mr r3, r29
/* 809C0DBC  3C C0 80 9D */	lis r6, lit_4610@ha /* 0x809C9E30@ha */
/* 809C0DC0  C0 26 9E 30 */	lfs f1, lit_4610@l(r6)  /* 0x809C9E30@l */
/* 809C0DC4  7F E6 FB 78 */	mr r6, r31
/* 809C0DC8  4B 79 1E FD */	bl setBtpAnm__8daNpcF_cFP16J3DAnmTexPatternP12J3DModelDatafi
/* 809C0DCC  2C 03 00 00 */	cmpwi r3, 0
/* 809C0DD0  41 82 00 2C */	beq lbl_809C0DFC
/* 809C0DD4  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 809C0DD8  60 00 02 80 */	ori r0, r0, 0x280
/* 809C0DDC  90 1D 09 9C */	stw r0, 0x99c(r29)
/* 809C0DE0  2C 1E 00 00 */	cmpwi r30, 0
/* 809C0DE4  40 82 00 10 */	bne lbl_809C0DF4
/* 809C0DE8  80 1D 09 9C */	lwz r0, 0x99c(r29)
/* 809C0DEC  60 00 08 00 */	ori r0, r0, 0x800
/* 809C0DF0  90 1D 09 9C */	stw r0, 0x99c(r29)
lbl_809C0DF4:
/* 809C0DF4  38 60 00 01 */	li r3, 1
/* 809C0DF8  48 00 00 08 */	b lbl_809C0E00
lbl_809C0DFC:
/* 809C0DFC  38 60 00 00 */	li r3, 0
lbl_809C0E00:
/* 809C0E00  39 61 00 20 */	addi r11, r1, 0x20
/* 809C0E04  4B 9A 14 25 */	bl _restgpr_29
/* 809C0E08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809C0E0C  7C 08 03 A6 */	mtlr r0
/* 809C0E10  38 21 00 20 */	addi r1, r1, 0x20
/* 809C0E14  4E 80 00 20 */	blr 
