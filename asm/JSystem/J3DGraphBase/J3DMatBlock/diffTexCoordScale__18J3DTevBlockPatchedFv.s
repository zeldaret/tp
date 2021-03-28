lbl_8031D0C4:
/* 8031D0C4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8031D0C8  7C 08 02 A6 */	mflr r0
/* 8031D0CC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8031D0D0  39 61 00 20 */	addi r11, r1, 0x20
/* 8031D0D4  48 04 51 01 */	bl _savegpr_27
/* 8031D0D8  7C 7C 1B 78 */	mr r28, r3
/* 8031D0DC  8B C3 00 D0 */	lbz r30, 0xd0(r3)
/* 8031D0E0  3B A0 00 00 */	li r29, 0
/* 8031D0E4  3B 60 00 00 */	li r27, 0
/* 8031D0E8  3C 60 80 43 */	lis r3, sTexCoordScaleTable__6J3DSys@ha
/* 8031D0EC  3B E3 4C 2C */	addi r31, r3, sTexCoordScaleTable__6J3DSys@l
/* 8031D0F0  48 00 00 AC */	b lbl_8031D19C
lbl_8031D0F4:
/* 8031D0F4  7C 7C DA 14 */	add r3, r28, r27
/* 8031D0F8  88 03 00 19 */	lbz r0, 0x19(r3)
/* 8031D0FC  54 00 1E B8 */	rlwinm r0, r0, 3, 0x1a, 0x1c
/* 8031D100  7D 1F 02 14 */	add r8, r31, r0
/* 8031D104  88 03 00 18 */	lbz r0, 0x18(r3)
/* 8031D108  54 03 07 7E */	clrlwi r3, r0, 0x1d
/* 8031D10C  A0 88 00 00 */	lhz r4, 0(r8)
/* 8031D110  A0 08 00 04 */	lhz r0, 4(r8)
/* 8031D114  20 00 00 01 */	subfic r0, r0, 1
/* 8031D118  7C 00 00 34 */	cntlzw r0, r0
/* 8031D11C  54 05 DE 3E */	rlwinm r5, r0, 0x1b, 0x18, 0x1f
/* 8031D120  38 C0 00 00 */	li r6, 0
/* 8031D124  A0 E8 00 02 */	lhz r7, 2(r8)
/* 8031D128  A0 08 00 06 */	lhz r0, 6(r8)
/* 8031D12C  20 00 00 01 */	subfic r0, r0, 1
/* 8031D130  7C 00 00 34 */	cntlzw r0, r0
/* 8031D134  54 08 DE 3E */	rlwinm r8, r0, 0x1b, 0x18, 0x1f
/* 8031D138  39 20 00 00 */	li r9, 0
/* 8031D13C  4B FF 10 F9 */	bl J3DGDSetTexCoordScale2__F13_GXTexCoordIDUsUcUcUsUcUc
/* 8031D140  38 1D 00 01 */	addi r0, r29, 1
/* 8031D144  54 00 10 3A */	slwi r0, r0, 2
/* 8031D148  7C 7C 02 14 */	add r3, r28, r0
/* 8031D14C  88 03 00 19 */	lbz r0, 0x19(r3)
/* 8031D150  54 00 1E B8 */	rlwinm r0, r0, 3, 0x1a, 0x1c
/* 8031D154  7D 1F 02 14 */	add r8, r31, r0
/* 8031D158  88 03 00 18 */	lbz r0, 0x18(r3)
/* 8031D15C  54 03 07 7E */	clrlwi r3, r0, 0x1d
/* 8031D160  A0 88 00 00 */	lhz r4, 0(r8)
/* 8031D164  A0 08 00 04 */	lhz r0, 4(r8)
/* 8031D168  20 00 00 01 */	subfic r0, r0, 1
/* 8031D16C  7C 00 00 34 */	cntlzw r0, r0
/* 8031D170  54 05 DE 3E */	rlwinm r5, r0, 0x1b, 0x18, 0x1f
/* 8031D174  38 C0 00 00 */	li r6, 0
/* 8031D178  A0 E8 00 02 */	lhz r7, 2(r8)
/* 8031D17C  A0 08 00 06 */	lhz r0, 6(r8)
/* 8031D180  20 00 00 01 */	subfic r0, r0, 1
/* 8031D184  7C 00 00 34 */	cntlzw r0, r0
/* 8031D188  54 08 DE 3E */	rlwinm r8, r0, 0x1b, 0x18, 0x1f
/* 8031D18C  39 20 00 00 */	li r9, 0
/* 8031D190  4B FF 10 A5 */	bl J3DGDSetTexCoordScale2__F13_GXTexCoordIDUsUcUcUsUcUc
/* 8031D194  3B BD 00 02 */	addi r29, r29, 2
/* 8031D198  3B 7B 00 08 */	addi r27, r27, 8
lbl_8031D19C:
/* 8031D19C  7C 1D F0 40 */	cmplw r29, r30
/* 8031D1A0  41 80 FF 54 */	blt lbl_8031D0F4
/* 8031D1A4  39 61 00 20 */	addi r11, r1, 0x20
/* 8031D1A8  48 04 50 79 */	bl _restgpr_27
/* 8031D1AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8031D1B0  7C 08 03 A6 */	mtlr r0
/* 8031D1B4  38 21 00 20 */	addi r1, r1, 0x20
/* 8031D1B8  4E 80 00 20 */	blr 
