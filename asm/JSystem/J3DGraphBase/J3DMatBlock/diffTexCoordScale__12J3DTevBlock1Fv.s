lbl_8031D368:
/* 8031D368  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031D36C  7C 08 02 A6 */	mflr r0
/* 8031D370  90 01 00 14 */	stw r0, 0x14(r1)
/* 8031D374  88 03 00 0B */	lbz r0, 0xb(r3)
/* 8031D378  54 05 1E B8 */	rlwinm r5, r0, 3, 0x1a, 0x1c
/* 8031D37C  3C 80 80 43 */	lis r4, sTexCoordScaleTable__6J3DSys@ha
/* 8031D380  38 04 4C 2C */	addi r0, r4, sTexCoordScaleTable__6J3DSys@l
/* 8031D384  7D 00 2A 14 */	add r8, r0, r5
/* 8031D388  88 63 00 0A */	lbz r3, 0xa(r3)
/* 8031D38C  A0 88 00 00 */	lhz r4, 0(r8)
/* 8031D390  A0 08 00 04 */	lhz r0, 4(r8)
/* 8031D394  20 00 00 01 */	subfic r0, r0, 1
/* 8031D398  7C 00 00 34 */	cntlzw r0, r0
/* 8031D39C  54 05 DE 3E */	rlwinm r5, r0, 0x1b, 0x18, 0x1f
/* 8031D3A0  38 C0 00 00 */	li r6, 0
/* 8031D3A4  A0 E8 00 02 */	lhz r7, 2(r8)
/* 8031D3A8  A0 08 00 06 */	lhz r0, 6(r8)
/* 8031D3AC  20 00 00 01 */	subfic r0, r0, 1
/* 8031D3B0  7C 00 00 34 */	cntlzw r0, r0
/* 8031D3B4  54 08 DE 3E */	rlwinm r8, r0, 0x1b, 0x18, 0x1f
/* 8031D3B8  39 20 00 00 */	li r9, 0
/* 8031D3BC  4B FF 0E 79 */	bl J3DGDSetTexCoordScale2__F13_GXTexCoordIDUsUcUcUsUcUc
/* 8031D3C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031D3C4  7C 08 03 A6 */	mtlr r0
/* 8031D3C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8031D3CC  4E 80 00 20 */	blr 
