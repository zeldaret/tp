lbl_80A08A68:
/* 80A08A68  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A08A6C  7C 08 02 A6 */	mflr r0
/* 80A08A70  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A08A74  39 61 00 20 */	addi r11, r1, 0x20
/* 80A08A78  4B 95 97 64 */	b _savegpr_29
/* 80A08A7C  7C 7E 1B 78 */	mr r30, r3
/* 80A08A80  7C 9F 23 78 */	mr r31, r4
/* 80A08A84  1F BF 00 0C */	mulli r29, r31, 0xc
/* 80A08A88  3C 80 80 A1 */	lis r4, l_btpGetParamList@ha
/* 80A08A8C  38 A4 C6 1C */	addi r5, r4, l_btpGetParamList@l
/* 80A08A90  7C 85 EA 14 */	add r4, r5, r29
/* 80A08A94  80 04 00 08 */	lwz r0, 8(r4)
/* 80A08A98  54 00 10 3A */	slwi r0, r0, 2
/* 80A08A9C  3C 80 80 A1 */	lis r4, l_arcNames@ha
/* 80A08AA0  38 84 C6 C4 */	addi r4, r4, l_arcNames@l
/* 80A08AA4  7C 84 00 2E */	lwzx r4, r4, r0
/* 80A08AA8  7C A5 E8 2E */	lwzx r5, r5, r29
/* 80A08AAC  4B 74 A0 BC */	b getTexPtrnAnmP__8daNpcF_cFPci
/* 80A08AB0  7C 64 1B 79 */	or. r4, r3, r3
/* 80A08AB4  3C 60 80 A1 */	lis r3, l_btpGetParamList@ha
/* 80A08AB8  38 03 C6 1C */	addi r0, r3, l_btpGetParamList@l
/* 80A08ABC  7C 60 EA 14 */	add r3, r0, r29
/* 80A08AC0  80 C3 00 04 */	lwz r6, 4(r3)
/* 80A08AC4  80 7E 09 9C */	lwz r3, 0x99c(r30)
/* 80A08AC8  38 00 F5 7F */	li r0, -2689
/* 80A08ACC  7C 60 00 38 */	and r0, r3, r0
/* 80A08AD0  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 80A08AD4  40 82 00 0C */	bne lbl_80A08AE0
/* 80A08AD8  38 60 00 01 */	li r3, 1
/* 80A08ADC  48 00 00 54 */	b lbl_80A08B30
lbl_80A08AE0:
/* 80A08AE0  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80A08AE4  80 63 00 04 */	lwz r3, 4(r3)
/* 80A08AE8  80 A3 00 04 */	lwz r5, 4(r3)
/* 80A08AEC  7F C3 F3 78 */	mr r3, r30
/* 80A08AF0  3C E0 80 A1 */	lis r7, lit_4248@ha
/* 80A08AF4  C0 27 C2 F0 */	lfs f1, lit_4248@l(r7)
/* 80A08AF8  4B 74 A1 CC */	b setBtpAnm__8daNpcF_cFP16J3DAnmTexPatternP12J3DModelDatafi
/* 80A08AFC  2C 03 00 00 */	cmpwi r3, 0
/* 80A08B00  41 82 00 2C */	beq lbl_80A08B2C
/* 80A08B04  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80A08B08  60 00 02 80 */	ori r0, r0, 0x280
/* 80A08B0C  90 1E 09 9C */	stw r0, 0x99c(r30)
/* 80A08B10  2C 1F 00 00 */	cmpwi r31, 0
/* 80A08B14  40 82 00 10 */	bne lbl_80A08B24
/* 80A08B18  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80A08B1C  60 00 08 00 */	ori r0, r0, 0x800
/* 80A08B20  90 1E 09 9C */	stw r0, 0x99c(r30)
lbl_80A08B24:
/* 80A08B24  38 60 00 01 */	li r3, 1
/* 80A08B28  48 00 00 08 */	b lbl_80A08B30
lbl_80A08B2C:
/* 80A08B2C  38 60 00 00 */	li r3, 0
lbl_80A08B30:
/* 80A08B30  39 61 00 20 */	addi r11, r1, 0x20
/* 80A08B34  4B 95 96 F4 */	b _restgpr_29
/* 80A08B38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A08B3C  7C 08 03 A6 */	mtlr r0
/* 80A08B40  38 21 00 20 */	addi r1, r1, 0x20
/* 80A08B44  4E 80 00 20 */	blr 
