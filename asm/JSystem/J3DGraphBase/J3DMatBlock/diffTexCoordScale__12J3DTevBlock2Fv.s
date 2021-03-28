lbl_8031D694:
/* 8031D694  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8031D698  7C 08 02 A6 */	mflr r0
/* 8031D69C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8031D6A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8031D6A4  7C 7F 1B 78 */	mr r31, r3
/* 8031D6A8  88 03 00 0D */	lbz r0, 0xd(r3)
/* 8031D6AC  54 04 1E B8 */	rlwinm r4, r0, 3, 0x1a, 0x1c
/* 8031D6B0  3C 60 80 43 */	lis r3, sTexCoordScaleTable__6J3DSys@ha
/* 8031D6B4  38 03 4C 2C */	addi r0, r3, sTexCoordScaleTable__6J3DSys@l
/* 8031D6B8  7D 00 22 14 */	add r8, r0, r4
/* 8031D6BC  88 7F 00 0C */	lbz r3, 0xc(r31)
/* 8031D6C0  A0 88 00 00 */	lhz r4, 0(r8)
/* 8031D6C4  A0 08 00 04 */	lhz r0, 4(r8)
/* 8031D6C8  20 00 00 01 */	subfic r0, r0, 1
/* 8031D6CC  7C 00 00 34 */	cntlzw r0, r0
/* 8031D6D0  54 05 DE 3E */	rlwinm r5, r0, 0x1b, 0x18, 0x1f
/* 8031D6D4  38 C0 00 00 */	li r6, 0
/* 8031D6D8  A0 E8 00 02 */	lhz r7, 2(r8)
/* 8031D6DC  A0 08 00 06 */	lhz r0, 6(r8)
/* 8031D6E0  20 00 00 01 */	subfic r0, r0, 1
/* 8031D6E4  7C 00 00 34 */	cntlzw r0, r0
/* 8031D6E8  54 08 DE 3E */	rlwinm r8, r0, 0x1b, 0x18, 0x1f
/* 8031D6EC  39 20 00 00 */	li r9, 0
/* 8031D6F0  4B FF 0B 45 */	bl J3DGDSetTexCoordScale2__F13_GXTexCoordIDUsUcUcUsUcUc
/* 8031D6F4  88 1F 00 11 */	lbz r0, 0x11(r31)
/* 8031D6F8  54 04 1E B8 */	rlwinm r4, r0, 3, 0x1a, 0x1c
/* 8031D6FC  3C 60 80 43 */	lis r3, sTexCoordScaleTable__6J3DSys@ha
/* 8031D700  38 03 4C 2C */	addi r0, r3, sTexCoordScaleTable__6J3DSys@l
/* 8031D704  7D 00 22 14 */	add r8, r0, r4
/* 8031D708  88 1F 00 10 */	lbz r0, 0x10(r31)
/* 8031D70C  54 03 07 7E */	clrlwi r3, r0, 0x1d
/* 8031D710  A0 88 00 00 */	lhz r4, 0(r8)
/* 8031D714  A0 08 00 04 */	lhz r0, 4(r8)
/* 8031D718  20 00 00 01 */	subfic r0, r0, 1
/* 8031D71C  7C 00 00 34 */	cntlzw r0, r0
/* 8031D720  54 05 DE 3E */	rlwinm r5, r0, 0x1b, 0x18, 0x1f
/* 8031D724  38 C0 00 00 */	li r6, 0
/* 8031D728  A0 E8 00 02 */	lhz r7, 2(r8)
/* 8031D72C  A0 08 00 06 */	lhz r0, 6(r8)
/* 8031D730  20 00 00 01 */	subfic r0, r0, 1
/* 8031D734  7C 00 00 34 */	cntlzw r0, r0
/* 8031D738  54 08 DE 3E */	rlwinm r8, r0, 0x1b, 0x18, 0x1f
/* 8031D73C  39 20 00 00 */	li r9, 0
/* 8031D740  4B FF 0A F5 */	bl J3DGDSetTexCoordScale2__F13_GXTexCoordIDUsUcUcUsUcUc
/* 8031D744  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8031D748  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8031D74C  7C 08 03 A6 */	mtlr r0
/* 8031D750  38 21 00 10 */	addi r1, r1, 0x10
/* 8031D754  4E 80 00 20 */	blr 
