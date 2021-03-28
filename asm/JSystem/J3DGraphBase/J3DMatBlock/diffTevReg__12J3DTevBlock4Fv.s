lbl_8031D7BC:
/* 8031D7BC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8031D7C0  7C 08 02 A6 */	mflr r0
/* 8031D7C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8031D7C8  39 61 00 30 */	addi r11, r1, 0x30
/* 8031D7CC  48 04 4A 11 */	bl _savegpr_29
/* 8031D7D0  7C 7D 1B 78 */	mr r29, r3
/* 8031D7D4  3B C0 00 00 */	li r30, 0
/* 8031D7D8  3B E0 00 00 */	li r31, 0
lbl_8031D7DC:
/* 8031D7DC  38 1F 00 42 */	addi r0, r31, 0x42
/* 8031D7E0  7C 9D 02 14 */	add r4, r29, r0
/* 8031D7E4  80 64 00 00 */	lwz r3, 0(r4)
/* 8031D7E8  80 04 00 04 */	lwz r0, 4(r4)
/* 8031D7EC  90 61 00 0C */	stw r3, 0xc(r1)
/* 8031D7F0  90 01 00 10 */	stw r0, 0x10(r1)
/* 8031D7F4  38 7E 00 01 */	addi r3, r30, 1
/* 8031D7F8  38 81 00 0C */	addi r4, r1, 0xc
/* 8031D7FC  4B FF 1C 01 */	bl J3DGDSetTevColorS10__F11_GXTevRegID11_GXColorS10
/* 8031D800  3B DE 00 01 */	addi r30, r30, 1
/* 8031D804  28 1E 00 03 */	cmplwi r30, 3
/* 8031D808  3B FF 00 08 */	addi r31, r31, 8
/* 8031D80C  41 80 FF D0 */	blt lbl_8031D7DC
/* 8031D810  3B C0 00 00 */	li r30, 0
/* 8031D814  3B E0 00 00 */	li r31, 0
lbl_8031D818:
/* 8031D818  38 1F 00 62 */	addi r0, r31, 0x62
/* 8031D81C  7C 1D 00 2E */	lwzx r0, r29, r0
/* 8031D820  90 01 00 08 */	stw r0, 8(r1)
/* 8031D824  7F C3 F3 78 */	mr r3, r30
/* 8031D828  38 81 00 08 */	addi r4, r1, 8
/* 8031D82C  4B FF 1A 69 */	bl J3DGDSetTevKColor__F14_GXTevKColorID8_GXColor
/* 8031D830  3B DE 00 01 */	addi r30, r30, 1
/* 8031D834  28 1E 00 04 */	cmplwi r30, 4
/* 8031D838  3B FF 00 04 */	addi r31, r31, 4
/* 8031D83C  41 80 FF DC */	blt lbl_8031D818
/* 8031D840  39 61 00 30 */	addi r11, r1, 0x30
/* 8031D844  48 04 49 E5 */	bl _restgpr_29
/* 8031D848  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8031D84C  7C 08 03 A6 */	mtlr r0
/* 8031D850  38 21 00 30 */	addi r1, r1, 0x30
/* 8031D854  4E 80 00 20 */	blr 
