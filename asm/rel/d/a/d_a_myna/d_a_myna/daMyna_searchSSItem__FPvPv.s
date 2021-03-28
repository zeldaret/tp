lbl_80945CD8:
/* 80945CD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80945CDC  7C 08 02 A6 */	mflr r0
/* 80945CE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80945CE4  39 61 00 20 */	addi r11, r1, 0x20
/* 80945CE8  4B A1 C4 F4 */	b _savegpr_29
/* 80945CEC  7C 7D 1B 78 */	mr r29, r3
/* 80945CF0  7C 9E 23 78 */	mr r30, r4
/* 80945CF4  3C 80 80 95 */	lis r4, lit_1109@ha
/* 80945CF8  3B E4 B9 F0 */	addi r31, r4, lit_1109@l
/* 80945CFC  4B 6D 2F E4 */	b fopAc_IsActor__FPv
/* 80945D00  2C 03 00 00 */	cmpwi r3, 0
/* 80945D04  41 82 00 7C */	beq lbl_80945D80
/* 80945D08  A8 9D 00 08 */	lha r4, 8(r29)
/* 80945D0C  2C 04 01 21 */	cmpwi r4, 0x121
/* 80945D10  41 82 00 14 */	beq lbl_80945D24
/* 80945D14  2C 04 01 20 */	cmpwi r4, 0x120
/* 80945D18  41 82 00 0C */	beq lbl_80945D24
/* 80945D1C  2C 04 01 22 */	cmpwi r4, 0x122
/* 80945D20  40 82 00 60 */	bne lbl_80945D80
lbl_80945D24:
/* 80945D24  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80945D28  54 03 00 06 */	rlwinm r3, r0, 0, 0, 3
/* 80945D2C  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 80945D30  54 00 00 06 */	rlwinm r0, r0, 0, 0, 3
/* 80945D34  7C 03 00 40 */	cmplw r3, r0
/* 80945D38  40 82 00 48 */	bne lbl_80945D80
/* 80945D3C  80 1F 00 D4 */	lwz r0, 0xd4(r31)
/* 80945D40  2C 00 00 0A */	cmpwi r0, 0xa
/* 80945D44  40 80 00 3C */	bge lbl_80945D80
/* 80945D48  7F A3 EB 78 */	mr r3, r29
/* 80945D4C  2C 04 01 21 */	cmpwi r4, 0x121
/* 80945D50  40 82 00 08 */	bne lbl_80945D58
/* 80945D54  48 3A 1A A4 */	b getExchangeItemPtr__14daObj_SSItem_cFv
lbl_80945D58:
/* 80945D58  28 03 00 00 */	cmplwi r3, 0
/* 80945D5C  41 82 00 24 */	beq lbl_80945D80
/* 80945D60  80 BF 00 D4 */	lwz r5, 0xd4(r31)
/* 80945D64  54 A0 10 3A */	slwi r0, r5, 2
/* 80945D68  38 9F 00 80 */	addi r4, r31, 0x80
/* 80945D6C  7C 64 01 2E */	stwx r3, r4, r0
/* 80945D70  38 7F 00 A8 */	addi r3, r31, 0xa8
/* 80945D74  7F A3 01 2E */	stwx r29, r3, r0
/* 80945D78  38 05 00 01 */	addi r0, r5, 1
/* 80945D7C  90 1F 00 D4 */	stw r0, 0xd4(r31)
lbl_80945D80:
/* 80945D80  38 60 00 00 */	li r3, 0
/* 80945D84  39 61 00 20 */	addi r11, r1, 0x20
/* 80945D88  4B A1 C4 A0 */	b _restgpr_29
/* 80945D8C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80945D90  7C 08 03 A6 */	mtlr r0
/* 80945D94  38 21 00 20 */	addi r1, r1, 0x20
/* 80945D98  4E 80 00 20 */	blr 
