lbl_80ACA1C0:
/* 80ACA1C0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80ACA1C4  7C 08 02 A6 */	mflr r0
/* 80ACA1C8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80ACA1CC  39 61 00 30 */	addi r11, r1, 0x30
/* 80ACA1D0  4B 89 7F FC */	b _savegpr_25
/* 80ACA1D4  7C 7A 1B 78 */	mr r26, r3
/* 80ACA1D8  7C BB 2B 78 */	mr r27, r5
/* 80ACA1DC  3C A0 80 AD */	lis r5, cNullVec__6Z2Calc@ha
/* 80ACA1E0  3B E5 B4 30 */	addi r31, r5, cNullVec__6Z2Calc@l
/* 80ACA1E4  3B 20 00 00 */	li r25, 0
/* 80ACA1E8  3B 80 00 00 */	li r28, 0
/* 80ACA1EC  54 9E 18 38 */	slwi r30, r4, 3
/* 80ACA1F0  3B BF 00 D4 */	addi r29, r31, 0xd4
/* 80ACA1F4  7C BD F0 2E */	lwzx r5, r29, r30
/* 80ACA1F8  2C 05 FF FF */	cmpwi r5, -1
/* 80ACA1FC  41 82 00 20 */	beq lbl_80ACA21C
/* 80ACA200  7C 9D F2 14 */	add r4, r29, r30
/* 80ACA204  80 04 00 04 */	lwz r0, 4(r4)
/* 80ACA208  54 00 10 3A */	slwi r0, r0, 2
/* 80ACA20C  38 9F 00 40 */	addi r4, r31, 0x40
/* 80ACA210  7C 84 00 2E */	lwzx r4, r4, r0
/* 80ACA214  4B 67 DE F8 */	b getTexSRTKeyAnmP__8daNpcT_cFPCci
/* 80ACA218  7C 79 1B 78 */	mr r25, r3
lbl_80ACA21C:
/* 80ACA21C  28 19 00 00 */	cmplwi r25, 0
/* 80ACA220  41 82 00 58 */	beq lbl_80ACA278
/* 80ACA224  80 1A 06 58 */	lwz r0, 0x658(r26)
/* 80ACA228  7C 00 C8 40 */	cmplw r0, r25
/* 80ACA22C  40 82 00 14 */	bne lbl_80ACA240
/* 80ACA230  80 1A 0D 98 */	lwz r0, 0xd98(r26)
/* 80ACA234  60 00 00 80 */	ori r0, r0, 0x80
/* 80ACA238  90 1A 0D 98 */	stw r0, 0xd98(r26)
/* 80ACA23C  48 00 00 3C */	b lbl_80ACA278
lbl_80ACA240:
/* 80ACA240  80 7A 05 78 */	lwz r3, 0x578(r26)
/* 80ACA244  80 63 00 04 */	lwz r3, 4(r3)
/* 80ACA248  80 A3 00 04 */	lwz r5, 4(r3)
/* 80ACA24C  7F 43 D3 78 */	mr r3, r26
/* 80ACA250  7F 24 CB 78 */	mr r4, r25
/* 80ACA254  3C C0 80 AD */	lis r6, lit_4215@ha
/* 80ACA258  C0 26 B3 FC */	lfs f1, lit_4215@l(r6)
/* 80ACA25C  7F 66 DB 78 */	mr r6, r27
/* 80ACA260  4B 67 E0 D8 */	b setBtkAnm__8daNpcT_cFP19J3DAnmTextureSRTKeyP12J3DModelDatafi
/* 80ACA264  2C 03 00 00 */	cmpwi r3, 0
/* 80ACA268  41 82 00 10 */	beq lbl_80ACA278
/* 80ACA26C  80 1A 0D 98 */	lwz r0, 0xd98(r26)
/* 80ACA270  60 00 00 82 */	ori r0, r0, 0x82
/* 80ACA274  90 1A 0D 98 */	stw r0, 0xd98(r26)
lbl_80ACA278:
/* 80ACA278  28 19 00 00 */	cmplwi r25, 0
/* 80ACA27C  40 82 00 18 */	bne lbl_80ACA294
/* 80ACA280  7C 1D F0 2E */	lwzx r0, r29, r30
/* 80ACA284  2C 00 FF FF */	cmpwi r0, -1
/* 80ACA288  41 82 00 0C */	beq lbl_80ACA294
/* 80ACA28C  38 60 00 00 */	li r3, 0
/* 80ACA290  48 00 00 B0 */	b lbl_80ACA340
lbl_80ACA294:
/* 80ACA294  3B BF 00 DC */	addi r29, r31, 0xdc
/* 80ACA298  7C BD F0 2E */	lwzx r5, r29, r30
/* 80ACA29C  2C 05 FF FF */	cmpwi r5, -1
/* 80ACA2A0  41 82 00 24 */	beq lbl_80ACA2C4
/* 80ACA2A4  7F 43 D3 78 */	mr r3, r26
/* 80ACA2A8  7C 9D F2 14 */	add r4, r29, r30
/* 80ACA2AC  80 04 00 04 */	lwz r0, 4(r4)
/* 80ACA2B0  54 00 10 3A */	slwi r0, r0, 2
/* 80ACA2B4  38 9F 00 40 */	addi r4, r31, 0x40
/* 80ACA2B8  7C 84 00 2E */	lwzx r4, r4, r0
/* 80ACA2BC  4B 67 DE 8C */	b getTevRegKeyAnmP__8daNpcT_cFPCci
/* 80ACA2C0  7C 7C 1B 78 */	mr r28, r3
lbl_80ACA2C4:
/* 80ACA2C4  28 1C 00 00 */	cmplwi r28, 0
/* 80ACA2C8  41 82 00 58 */	beq lbl_80ACA320
/* 80ACA2CC  80 1A 06 70 */	lwz r0, 0x670(r26)
/* 80ACA2D0  7C 00 E0 40 */	cmplw r0, r28
/* 80ACA2D4  40 82 00 14 */	bne lbl_80ACA2E8
/* 80ACA2D8  80 1A 0D 98 */	lwz r0, 0xd98(r26)
/* 80ACA2DC  60 00 01 00 */	ori r0, r0, 0x100
/* 80ACA2E0  90 1A 0D 98 */	stw r0, 0xd98(r26)
/* 80ACA2E4  48 00 00 3C */	b lbl_80ACA320
lbl_80ACA2E8:
/* 80ACA2E8  80 7A 05 78 */	lwz r3, 0x578(r26)
/* 80ACA2EC  80 63 00 04 */	lwz r3, 4(r3)
/* 80ACA2F0  80 A3 00 04 */	lwz r5, 4(r3)
/* 80ACA2F4  7F 43 D3 78 */	mr r3, r26
/* 80ACA2F8  7F 84 E3 78 */	mr r4, r28
/* 80ACA2FC  3C C0 80 AD */	lis r6, lit_4215@ha
/* 80ACA300  C0 26 B3 FC */	lfs f1, lit_4215@l(r6)
/* 80ACA304  7F 66 DB 78 */	mr r6, r27
/* 80ACA308  4B 67 E0 70 */	b setBrkAnm__8daNpcT_cFP15J3DAnmTevRegKeyP12J3DModelDatafi
/* 80ACA30C  2C 03 00 00 */	cmpwi r3, 0
/* 80ACA310  41 82 00 10 */	beq lbl_80ACA320
/* 80ACA314  80 1A 0D 98 */	lwz r0, 0xd98(r26)
/* 80ACA318  60 00 01 04 */	ori r0, r0, 0x104
/* 80ACA31C  90 1A 0D 98 */	stw r0, 0xd98(r26)
lbl_80ACA320:
/* 80ACA320  28 1C 00 00 */	cmplwi r28, 0
/* 80ACA324  40 82 00 18 */	bne lbl_80ACA33C
/* 80ACA328  7C 1D F0 2E */	lwzx r0, r29, r30
/* 80ACA32C  2C 00 FF FF */	cmpwi r0, -1
/* 80ACA330  41 82 00 0C */	beq lbl_80ACA33C
/* 80ACA334  38 60 00 00 */	li r3, 0
/* 80ACA338  48 00 00 08 */	b lbl_80ACA340
lbl_80ACA33C:
/* 80ACA33C  38 60 00 01 */	li r3, 1
lbl_80ACA340:
/* 80ACA340  39 61 00 30 */	addi r11, r1, 0x30
/* 80ACA344  4B 89 7E D4 */	b _restgpr_25
/* 80ACA348  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80ACA34C  7C 08 03 A6 */	mtlr r0
/* 80ACA350  38 21 00 30 */	addi r1, r1, 0x30
/* 80ACA354  4E 80 00 20 */	blr 
