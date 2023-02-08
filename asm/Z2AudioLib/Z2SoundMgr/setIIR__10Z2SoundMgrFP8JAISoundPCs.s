lbl_802AA270:
/* 802AA270  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802AA274  7C 08 02 A6 */	mflr r0
/* 802AA278  90 01 00 34 */	stw r0, 0x34(r1)
/* 802AA27C  39 61 00 30 */	addi r11, r1, 0x30
/* 802AA280  48 0B 7F 4D */	bl _savegpr_25
/* 802AA284  7C B9 2B 78 */	mr r25, r5
/* 802AA288  28 04 00 00 */	cmplwi r4, 0
/* 802AA28C  41 82 00 98 */	beq lbl_802AA324
/* 802AA290  7C 83 23 78 */	mr r3, r4
/* 802AA294  81 84 00 00 */	lwz r12, 0(r4)
/* 802AA298  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 802AA29C  7D 89 03 A6 */	mtctr r12
/* 802AA2A0  4E 80 04 21 */	bctrl 
/* 802AA2A4  7C 7D 1B 78 */	mr r29, r3
/* 802AA2A8  3B 60 00 00 */	li r27, 0
/* 802AA2AC  3B E0 00 00 */	li r31, 0
lbl_802AA2B0:
/* 802AA2B0  38 1F 01 30 */	addi r0, r31, 0x130
/* 802AA2B4  7F 9D 00 2E */	lwzx r28, r29, r0
/* 802AA2B8  28 1C 00 00 */	cmplwi r28, 0
/* 802AA2BC  41 82 00 58 */	beq lbl_802AA314
/* 802AA2C0  88 1C 02 15 */	lbz r0, 0x215(r28)
/* 802AA2C4  28 00 00 01 */	cmplwi r0, 1
/* 802AA2C8  40 82 00 4C */	bne lbl_802AA314
/* 802AA2CC  7F 83 E3 78 */	mr r3, r28
/* 802AA2D0  7F 24 CB 78 */	mr r4, r25
/* 802AA2D4  4B FE 85 C9 */	bl setIIR__8JASTrackFPCs
/* 802AA2D8  3B 40 00 00 */	li r26, 0
/* 802AA2DC  3B C0 00 00 */	li r30, 0
lbl_802AA2E0:
/* 802AA2E0  38 1E 01 30 */	addi r0, r30, 0x130
/* 802AA2E4  7C 7C 00 2E */	lwzx r3, r28, r0
/* 802AA2E8  28 03 00 00 */	cmplwi r3, 0
/* 802AA2EC  41 82 00 18 */	beq lbl_802AA304
/* 802AA2F0  88 03 02 15 */	lbz r0, 0x215(r3)
/* 802AA2F4  28 00 00 01 */	cmplwi r0, 1
/* 802AA2F8  40 82 00 0C */	bne lbl_802AA304
/* 802AA2FC  7F 24 CB 78 */	mr r4, r25
/* 802AA300  4B FE 85 9D */	bl setIIR__8JASTrackFPCs
lbl_802AA304:
/* 802AA304  3B 5A 00 01 */	addi r26, r26, 1
/* 802AA308  28 1A 00 04 */	cmplwi r26, 4
/* 802AA30C  3B DE 00 04 */	addi r30, r30, 4
/* 802AA310  41 80 FF D0 */	blt lbl_802AA2E0
lbl_802AA314:
/* 802AA314  3B 7B 00 01 */	addi r27, r27, 1
/* 802AA318  28 1B 00 04 */	cmplwi r27, 4
/* 802AA31C  3B FF 00 04 */	addi r31, r31, 4
/* 802AA320  41 80 FF 90 */	blt lbl_802AA2B0
lbl_802AA324:
/* 802AA324  39 61 00 30 */	addi r11, r1, 0x30
/* 802AA328  48 0B 7E F1 */	bl _restgpr_25
/* 802AA32C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802AA330  7C 08 03 A6 */	mtlr r0
/* 802AA334  38 21 00 30 */	addi r1, r1, 0x30
/* 802AA338  4E 80 00 20 */	blr 
