lbl_80AC5C28:
/* 80AC5C28  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80AC5C2C  7C 08 02 A6 */	mflr r0
/* 80AC5C30  90 01 00 34 */	stw r0, 0x34(r1)
/* 80AC5C34  39 61 00 30 */	addi r11, r1, 0x30
/* 80AC5C38  4B 89 C5 94 */	b _savegpr_25
/* 80AC5C3C  7C 7A 1B 78 */	mr r26, r3
/* 80AC5C40  7C BB 2B 78 */	mr r27, r5
/* 80AC5C44  3C A0 80 AC */	lis r5, cNullVec__6Z2Calc@ha
/* 80AC5C48  3B E5 70 F8 */	addi r31, r5, cNullVec__6Z2Calc@l
/* 80AC5C4C  3B 20 00 00 */	li r25, 0
/* 80AC5C50  3B 80 00 00 */	li r28, 0
/* 80AC5C54  54 9E 18 38 */	slwi r30, r4, 3
/* 80AC5C58  3B BF 01 58 */	addi r29, r31, 0x158
/* 80AC5C5C  7C BD F0 2E */	lwzx r5, r29, r30
/* 80AC5C60  2C 05 FF FF */	cmpwi r5, -1
/* 80AC5C64  41 82 00 20 */	beq lbl_80AC5C84
/* 80AC5C68  7C 9D F2 14 */	add r4, r29, r30
/* 80AC5C6C  80 04 00 04 */	lwz r0, 4(r4)
/* 80AC5C70  54 00 10 3A */	slwi r0, r0, 2
/* 80AC5C74  38 9F 00 40 */	addi r4, r31, 0x40
/* 80AC5C78  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AC5C7C  4B 68 24 90 */	b getTexSRTKeyAnmP__8daNpcT_cFPCci
/* 80AC5C80  7C 79 1B 78 */	mr r25, r3
lbl_80AC5C84:
/* 80AC5C84  28 19 00 00 */	cmplwi r25, 0
/* 80AC5C88  41 82 00 58 */	beq lbl_80AC5CE0
/* 80AC5C8C  80 1A 06 58 */	lwz r0, 0x658(r26)
/* 80AC5C90  7C 00 C8 40 */	cmplw r0, r25
/* 80AC5C94  40 82 00 14 */	bne lbl_80AC5CA8
/* 80AC5C98  80 1A 0D 98 */	lwz r0, 0xd98(r26)
/* 80AC5C9C  60 00 00 80 */	ori r0, r0, 0x80
/* 80AC5CA0  90 1A 0D 98 */	stw r0, 0xd98(r26)
/* 80AC5CA4  48 00 00 3C */	b lbl_80AC5CE0
lbl_80AC5CA8:
/* 80AC5CA8  80 7A 05 78 */	lwz r3, 0x578(r26)
/* 80AC5CAC  80 63 00 04 */	lwz r3, 4(r3)
/* 80AC5CB0  80 A3 00 04 */	lwz r5, 4(r3)
/* 80AC5CB4  7F 43 D3 78 */	mr r3, r26
/* 80AC5CB8  7F 24 CB 78 */	mr r4, r25
/* 80AC5CBC  3C C0 80 AC */	lis r6, lit_4215@ha
/* 80AC5CC0  C0 26 70 C4 */	lfs f1, lit_4215@l(r6)
/* 80AC5CC4  7F 66 DB 78 */	mr r6, r27
/* 80AC5CC8  4B 68 26 70 */	b setBtkAnm__8daNpcT_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi
/* 80AC5CCC  2C 03 00 00 */	cmpwi r3, 0
/* 80AC5CD0  41 82 00 10 */	beq lbl_80AC5CE0
/* 80AC5CD4  80 1A 0D 98 */	lwz r0, 0xd98(r26)
/* 80AC5CD8  60 00 00 82 */	ori r0, r0, 0x82
/* 80AC5CDC  90 1A 0D 98 */	stw r0, 0xd98(r26)
lbl_80AC5CE0:
/* 80AC5CE0  28 19 00 00 */	cmplwi r25, 0
/* 80AC5CE4  40 82 00 18 */	bne lbl_80AC5CFC
/* 80AC5CE8  7C 1D F0 2E */	lwzx r0, r29, r30
/* 80AC5CEC  2C 00 FF FF */	cmpwi r0, -1
/* 80AC5CF0  41 82 00 0C */	beq lbl_80AC5CFC
/* 80AC5CF4  38 60 00 00 */	li r3, 0
/* 80AC5CF8  48 00 00 B0 */	b lbl_80AC5DA8
lbl_80AC5CFC:
/* 80AC5CFC  3B BF 01 78 */	addi r29, r31, 0x178
/* 80AC5D00  7C BD F0 2E */	lwzx r5, r29, r30
/* 80AC5D04  2C 05 FF FF */	cmpwi r5, -1
/* 80AC5D08  41 82 00 24 */	beq lbl_80AC5D2C
/* 80AC5D0C  7F 43 D3 78 */	mr r3, r26
/* 80AC5D10  7C 9D F2 14 */	add r4, r29, r30
/* 80AC5D14  80 04 00 04 */	lwz r0, 4(r4)
/* 80AC5D18  54 00 10 3A */	slwi r0, r0, 2
/* 80AC5D1C  38 9F 00 40 */	addi r4, r31, 0x40
/* 80AC5D20  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AC5D24  4B 68 24 24 */	b getTevRegKeyAnmP__8daNpcT_cFPCci
/* 80AC5D28  7C 7C 1B 78 */	mr r28, r3
lbl_80AC5D2C:
/* 80AC5D2C  28 1C 00 00 */	cmplwi r28, 0
/* 80AC5D30  41 82 00 58 */	beq lbl_80AC5D88
/* 80AC5D34  80 1A 06 70 */	lwz r0, 0x670(r26)
/* 80AC5D38  7C 00 E0 40 */	cmplw r0, r28
/* 80AC5D3C  40 82 00 14 */	bne lbl_80AC5D50
/* 80AC5D40  80 1A 0D 98 */	lwz r0, 0xd98(r26)
/* 80AC5D44  60 00 01 00 */	ori r0, r0, 0x100
/* 80AC5D48  90 1A 0D 98 */	stw r0, 0xd98(r26)
/* 80AC5D4C  48 00 00 3C */	b lbl_80AC5D88
lbl_80AC5D50:
/* 80AC5D50  80 7A 05 78 */	lwz r3, 0x578(r26)
/* 80AC5D54  80 63 00 04 */	lwz r3, 4(r3)
/* 80AC5D58  80 A3 00 04 */	lwz r5, 4(r3)
/* 80AC5D5C  7F 43 D3 78 */	mr r3, r26
/* 80AC5D60  7F 84 E3 78 */	mr r4, r28
/* 80AC5D64  3C C0 80 AC */	lis r6, lit_4215@ha
/* 80AC5D68  C0 26 70 C4 */	lfs f1, lit_4215@l(r6)
/* 80AC5D6C  7F 66 DB 78 */	mr r6, r27
/* 80AC5D70  4B 68 26 08 */	b setBrkAnm__8daNpcT_cFP15J3DAnmTevRegKeyP12J3DModelDatafi
/* 80AC5D74  2C 03 00 00 */	cmpwi r3, 0
/* 80AC5D78  41 82 00 10 */	beq lbl_80AC5D88
/* 80AC5D7C  80 1A 0D 98 */	lwz r0, 0xd98(r26)
/* 80AC5D80  60 00 01 04 */	ori r0, r0, 0x104
/* 80AC5D84  90 1A 0D 98 */	stw r0, 0xd98(r26)
lbl_80AC5D88:
/* 80AC5D88  28 1C 00 00 */	cmplwi r28, 0
/* 80AC5D8C  40 82 00 18 */	bne lbl_80AC5DA4
/* 80AC5D90  7C 1D F0 2E */	lwzx r0, r29, r30
/* 80AC5D94  2C 00 FF FF */	cmpwi r0, -1
/* 80AC5D98  41 82 00 0C */	beq lbl_80AC5DA4
/* 80AC5D9C  38 60 00 00 */	li r3, 0
/* 80AC5DA0  48 00 00 08 */	b lbl_80AC5DA8
lbl_80AC5DA4:
/* 80AC5DA4  38 60 00 01 */	li r3, 1
lbl_80AC5DA8:
/* 80AC5DA8  39 61 00 30 */	addi r11, r1, 0x30
/* 80AC5DAC  4B 89 C4 6C */	b _restgpr_25
/* 80AC5DB0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80AC5DB4  7C 08 03 A6 */	mtlr r0
/* 80AC5DB8  38 21 00 30 */	addi r1, r1, 0x30
/* 80AC5DBC  4E 80 00 20 */	blr 
