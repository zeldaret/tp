lbl_8031D434:
/* 8031D434  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8031D438  7C 08 02 A6 */	mflr r0
/* 8031D43C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8031D440  39 61 00 30 */	addi r11, r1, 0x30
/* 8031D444  48 04 4D 99 */	bl _savegpr_29
/* 8031D448  7C 7D 1B 78 */	mr r29, r3
/* 8031D44C  3B C0 00 00 */	li r30, 0
/* 8031D450  3B E0 00 00 */	li r31, 0
lbl_8031D454:
/* 8031D454  38 1F 00 14 */	addi r0, r31, 0x14
/* 8031D458  7C 9D 02 14 */	add r4, r29, r0
/* 8031D45C  80 64 00 00 */	lwz r3, 0(r4)
/* 8031D460  80 04 00 04 */	lwz r0, 4(r4)
/* 8031D464  90 61 00 0C */	stw r3, 0xc(r1)
/* 8031D468  90 01 00 10 */	stw r0, 0x10(r1)
/* 8031D46C  38 7E 00 01 */	addi r3, r30, 1
/* 8031D470  38 81 00 0C */	addi r4, r1, 0xc
/* 8031D474  4B FF 1F 89 */	bl J3DGDSetTevColorS10__F11_GXTevRegID11_GXColorS10
/* 8031D478  3B DE 00 01 */	addi r30, r30, 1
/* 8031D47C  28 1E 00 03 */	cmplwi r30, 3
/* 8031D480  3B FF 00 08 */	addi r31, r31, 8
/* 8031D484  41 80 FF D0 */	blt lbl_8031D454
/* 8031D488  3B C0 00 00 */	li r30, 0
/* 8031D48C  3B E0 00 00 */	li r31, 0
lbl_8031D490:
/* 8031D490  38 1F 00 45 */	addi r0, r31, 0x45
/* 8031D494  7C 1D 00 2E */	lwzx r0, r29, r0
/* 8031D498  90 01 00 08 */	stw r0, 8(r1)
/* 8031D49C  7F C3 F3 78 */	mr r3, r30
/* 8031D4A0  38 81 00 08 */	addi r4, r1, 8
/* 8031D4A4  4B FF 1D F1 */	bl J3DGDSetTevKColor__F14_GXTevKColorID8_GXColor
/* 8031D4A8  3B DE 00 01 */	addi r30, r30, 1
/* 8031D4AC  28 1E 00 04 */	cmplwi r30, 4
/* 8031D4B0  3B FF 00 04 */	addi r31, r31, 4
/* 8031D4B4  41 80 FF DC */	blt lbl_8031D490
/* 8031D4B8  39 61 00 30 */	addi r11, r1, 0x30
/* 8031D4BC  48 04 4D 6D */	bl _restgpr_29
/* 8031D4C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8031D4C4  7C 08 03 A6 */	mtlr r0
/* 8031D4C8  38 21 00 30 */	addi r1, r1, 0x30
/* 8031D4CC  4E 80 00 20 */	blr 
