lbl_80D256B8:
/* 80D256B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D256BC  7C 08 02 A6 */	mflr r0
/* 80D256C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D256C4  39 61 00 20 */	addi r11, r1, 0x20
/* 80D256C8  4B 63 CB 15 */	bl _savegpr_29
/* 80D256CC  7C 7D 1B 78 */	mr r29, r3
/* 80D256D0  80 A3 0A 04 */	lwz r5, 0xa04(r3)
/* 80D256D4  28 05 00 00 */	cmplwi r5, 0
/* 80D256D8  41 82 00 28 */	beq lbl_80D25700
/* 80D256DC  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80D256E0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80D256E4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80D256E8  A0 1D 0A 18 */	lhz r0, 0xa18(r29)
/* 80D256EC  1C 00 00 30 */	mulli r0, r0, 0x30
/* 80D256F0  7C 63 02 14 */	add r3, r3, r0
/* 80D256F4  38 85 00 68 */	addi r4, r5, 0x68
/* 80D256F8  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80D256FC  4B 55 B0 E5 */	bl func_802807E0
lbl_80D25700:
/* 80D25700  3B C0 00 00 */	li r30, 0
/* 80D25704  3B E0 00 00 */	li r31, 0
lbl_80D25708:
/* 80D25708  38 1F 09 F8 */	addi r0, r31, 0x9f8
/* 80D2570C  7C BD 00 2E */	lwzx r5, r29, r0
/* 80D25710  28 05 00 00 */	cmplwi r5, 0
/* 80D25714  41 82 00 1C */	beq lbl_80D25730
/* 80D25718  80 7D 05 A8 */	lwz r3, 0x5a8(r29)
/* 80D2571C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80D25720  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80D25724  38 85 00 68 */	addi r4, r5, 0x68
/* 80D25728  38 A5 00 A4 */	addi r5, r5, 0xa4
/* 80D2572C  4B 55 B0 B5 */	bl func_802807E0
lbl_80D25730:
/* 80D25730  3B DE 00 01 */	addi r30, r30, 1
/* 80D25734  2C 1E 00 03 */	cmpwi r30, 3
/* 80D25738  3B FF 00 04 */	addi r31, r31, 4
/* 80D2573C  41 80 FF CC */	blt lbl_80D25708
/* 80D25740  39 61 00 20 */	addi r11, r1, 0x20
/* 80D25744  4B 63 CA E5 */	bl _restgpr_29
/* 80D25748  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D2574C  7C 08 03 A6 */	mtlr r0
/* 80D25750  38 21 00 20 */	addi r1, r1, 0x20
/* 80D25754  4E 80 00 20 */	blr 
