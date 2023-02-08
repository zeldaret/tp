lbl_8031D028:
/* 8031D028  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8031D02C  7C 08 02 A6 */	mflr r0
/* 8031D030  90 01 00 34 */	stw r0, 0x34(r1)
/* 8031D034  39 61 00 30 */	addi r11, r1, 0x30
/* 8031D038  48 04 51 A5 */	bl _savegpr_29
/* 8031D03C  7C 7D 1B 78 */	mr r29, r3
/* 8031D040  3B C0 00 00 */	li r30, 0
/* 8031D044  3B E0 00 00 */	li r31, 0
lbl_8031D048:
/* 8031D048  38 1F 00 98 */	addi r0, r31, 0x98
/* 8031D04C  7C 9D 02 14 */	add r4, r29, r0
/* 8031D050  80 64 00 00 */	lwz r3, 0(r4)
/* 8031D054  80 04 00 04 */	lwz r0, 4(r4)
/* 8031D058  90 61 00 0C */	stw r3, 0xc(r1)
/* 8031D05C  90 01 00 10 */	stw r0, 0x10(r1)
/* 8031D060  38 7E 00 01 */	addi r3, r30, 1
/* 8031D064  38 81 00 0C */	addi r4, r1, 0xc
/* 8031D068  4B FF 23 95 */	bl J3DGDSetTevColorS10__F11_GXTevRegID11_GXColorS10
/* 8031D06C  3B DE 00 01 */	addi r30, r30, 1
/* 8031D070  28 1E 00 03 */	cmplwi r30, 3
/* 8031D074  3B FF 00 08 */	addi r31, r31, 8
/* 8031D078  41 80 FF D0 */	blt lbl_8031D048
/* 8031D07C  3B C0 00 00 */	li r30, 0
/* 8031D080  3B E0 00 00 */	li r31, 0
lbl_8031D084:
/* 8031D084  38 1F 00 B8 */	addi r0, r31, 0xb8
/* 8031D088  7C 1D 00 2E */	lwzx r0, r29, r0
/* 8031D08C  90 01 00 08 */	stw r0, 8(r1)
/* 8031D090  7F C3 F3 78 */	mr r3, r30
/* 8031D094  38 81 00 08 */	addi r4, r1, 8
/* 8031D098  4B FF 21 FD */	bl J3DGDSetTevKColor__F14_GXTevKColorID8_GXColor
/* 8031D09C  3B DE 00 01 */	addi r30, r30, 1
/* 8031D0A0  28 1E 00 04 */	cmplwi r30, 4
/* 8031D0A4  3B FF 00 04 */	addi r31, r31, 4
/* 8031D0A8  41 80 FF DC */	blt lbl_8031D084
/* 8031D0AC  39 61 00 30 */	addi r11, r1, 0x30
/* 8031D0B0  48 04 51 79 */	bl _restgpr_29
/* 8031D0B4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8031D0B8  7C 08 03 A6 */	mtlr r0
/* 8031D0BC  38 21 00 30 */	addi r1, r1, 0x30
/* 8031D0C0  4E 80 00 20 */	blr 
