lbl_8031E12C:
/* 8031E12C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8031E130  7C 08 02 A6 */	mflr r0
/* 8031E134  90 01 00 24 */	stw r0, 0x24(r1)
/* 8031E138  39 61 00 20 */	addi r11, r1, 0x20
/* 8031E13C  48 04 40 9D */	bl _savegpr_28
/* 8031E140  7C 7F 1B 78 */	mr r31, r3
/* 8031E144  8B C3 00 04 */	lbz r30, 4(r3)
/* 8031E148  3B 80 00 00 */	li r28, 0
/* 8031E14C  3B A0 00 00 */	li r29, 0
/* 8031E150  48 00 00 24 */	b lbl_8031E174
lbl_8031E154:
/* 8031E154  7C BF EA 14 */	add r5, r31, r29
/* 8031E158  38 7C 00 01 */	addi r3, r28, 1
/* 8031E15C  38 85 00 18 */	addi r4, r5, 0x18
/* 8031E160  88 05 00 30 */	lbz r0, 0x30(r5)
/* 8031E164  7C 05 07 74 */	extsb r5, r0
/* 8031E168  4B FF 09 C9 */	bl J3DGDSetIndTexMtx__F14_GXIndTexMtxIDPA3_fSc
/* 8031E16C  3B 9C 00 01 */	addi r28, r28, 1
/* 8031E170  3B BD 00 1C */	addi r29, r29, 0x1c
lbl_8031E174:
/* 8031E174  7C 1C F0 40 */	cmplw r28, r30
/* 8031E178  41 80 FF DC */	blt lbl_8031E154
/* 8031E17C  3B 80 00 00 */	li r28, 0
/* 8031E180  3B A0 00 00 */	li r29, 0
/* 8031E184  48 00 00 28 */	b lbl_8031E1AC
lbl_8031E188:
/* 8031E188  7C FF EA 14 */	add r7, r31, r29
/* 8031E18C  7F 83 E3 78 */	mr r3, r28
/* 8031E190  88 87 00 6C */	lbz r4, 0x6c(r7)
/* 8031E194  88 A7 00 6D */	lbz r5, 0x6d(r7)
/* 8031E198  88 C7 00 70 */	lbz r6, 0x70(r7)
/* 8031E19C  88 E7 00 71 */	lbz r7, 0x71(r7)
/* 8031E1A0  4B FF 0C 71 */	bl J3DGDSetIndTexCoordScale__F16_GXIndTexStageID14_GXIndTexScale14_GXIndTexScale14_GXIndTexScale14_GXIndTexScale
/* 8031E1A4  3B 9C 00 02 */	addi r28, r28, 2
/* 8031E1A8  3B BD 00 08 */	addi r29, r29, 8
lbl_8031E1AC:
/* 8031E1AC  7C 1C F0 40 */	cmplw r28, r30
/* 8031E1B0  41 80 FF D8 */	blt lbl_8031E188
/* 8031E1B4  88 1F 00 06 */	lbz r0, 6(r31)
/* 8031E1B8  54 04 1E B8 */	rlwinm r4, r0, 3, 0x1a, 0x1c
/* 8031E1BC  3C 60 80 43 */	lis r3, sTexCoordScaleTable__6J3DSys@ha /* 0x80434C2C@ha */
/* 8031E1C0  38 03 4C 2C */	addi r0, r3, sTexCoordScaleTable__6J3DSys@l /* 0x80434C2C@l */
/* 8031E1C4  7D 00 22 14 */	add r8, r0, r4
/* 8031E1C8  88 7F 00 05 */	lbz r3, 5(r31)
/* 8031E1CC  A0 88 00 00 */	lhz r4, 0(r8)
/* 8031E1D0  A0 08 00 04 */	lhz r0, 4(r8)
/* 8031E1D4  20 00 00 01 */	subfic r0, r0, 1
/* 8031E1D8  7C 00 00 34 */	cntlzw r0, r0
/* 8031E1DC  54 05 DE 3E */	rlwinm r5, r0, 0x1b, 0x18, 0x1f
/* 8031E1E0  38 C0 00 00 */	li r6, 0
/* 8031E1E4  A0 E8 00 02 */	lhz r7, 2(r8)
/* 8031E1E8  A0 08 00 06 */	lhz r0, 6(r8)
/* 8031E1EC  20 00 00 01 */	subfic r0, r0, 1
/* 8031E1F0  7C 00 00 34 */	cntlzw r0, r0
/* 8031E1F4  54 08 DE 3E */	rlwinm r8, r0, 0x1b, 0x18, 0x1f
/* 8031E1F8  39 20 00 00 */	li r9, 0
/* 8031E1FC  4B FF 00 39 */	bl J3DGDSetTexCoordScale2__F13_GXTexCoordIDUsUcUcUsUcUc
/* 8031E200  88 1F 00 0A */	lbz r0, 0xa(r31)
/* 8031E204  54 04 1E B8 */	rlwinm r4, r0, 3, 0x1a, 0x1c
/* 8031E208  3C 60 80 43 */	lis r3, sTexCoordScaleTable__6J3DSys@ha /* 0x80434C2C@ha */
/* 8031E20C  38 03 4C 2C */	addi r0, r3, sTexCoordScaleTable__6J3DSys@l /* 0x80434C2C@l */
/* 8031E210  7D 00 22 14 */	add r8, r0, r4
/* 8031E214  88 7F 00 09 */	lbz r3, 9(r31)
/* 8031E218  A0 88 00 00 */	lhz r4, 0(r8)
/* 8031E21C  A0 08 00 04 */	lhz r0, 4(r8)
/* 8031E220  20 00 00 01 */	subfic r0, r0, 1
/* 8031E224  7C 00 00 34 */	cntlzw r0, r0
/* 8031E228  54 05 DE 3E */	rlwinm r5, r0, 0x1b, 0x18, 0x1f
/* 8031E22C  38 C0 00 00 */	li r6, 0
/* 8031E230  A0 E8 00 02 */	lhz r7, 2(r8)
/* 8031E234  A0 08 00 06 */	lhz r0, 6(r8)
/* 8031E238  20 00 00 01 */	subfic r0, r0, 1
/* 8031E23C  7C 00 00 34 */	cntlzw r0, r0
/* 8031E240  54 08 DE 3E */	rlwinm r8, r0, 0x1b, 0x18, 0x1f
/* 8031E244  39 20 00 00 */	li r9, 0
/* 8031E248  4B FE FF ED */	bl J3DGDSetTexCoordScale2__F13_GXTexCoordIDUsUcUcUsUcUc
/* 8031E24C  88 1F 00 0E */	lbz r0, 0xe(r31)
/* 8031E250  54 04 1E B8 */	rlwinm r4, r0, 3, 0x1a, 0x1c
/* 8031E254  3C 60 80 43 */	lis r3, sTexCoordScaleTable__6J3DSys@ha /* 0x80434C2C@ha */
/* 8031E258  38 03 4C 2C */	addi r0, r3, sTexCoordScaleTable__6J3DSys@l /* 0x80434C2C@l */
/* 8031E25C  7D 00 22 14 */	add r8, r0, r4
/* 8031E260  88 7F 00 0D */	lbz r3, 0xd(r31)
/* 8031E264  A0 88 00 00 */	lhz r4, 0(r8)
/* 8031E268  A0 08 00 04 */	lhz r0, 4(r8)
/* 8031E26C  20 00 00 01 */	subfic r0, r0, 1
/* 8031E270  7C 00 00 34 */	cntlzw r0, r0
/* 8031E274  54 05 DE 3E */	rlwinm r5, r0, 0x1b, 0x18, 0x1f
/* 8031E278  38 C0 00 00 */	li r6, 0
/* 8031E27C  A0 E8 00 02 */	lhz r7, 2(r8)
/* 8031E280  A0 08 00 06 */	lhz r0, 6(r8)
/* 8031E284  20 00 00 01 */	subfic r0, r0, 1
/* 8031E288  7C 00 00 34 */	cntlzw r0, r0
/* 8031E28C  54 08 DE 3E */	rlwinm r8, r0, 0x1b, 0x18, 0x1f
/* 8031E290  39 20 00 00 */	li r9, 0
/* 8031E294  4B FE FF A1 */	bl J3DGDSetTexCoordScale2__F13_GXTexCoordIDUsUcUcUsUcUc
/* 8031E298  88 1F 00 12 */	lbz r0, 0x12(r31)
/* 8031E29C  54 04 1E B8 */	rlwinm r4, r0, 3, 0x1a, 0x1c
/* 8031E2A0  3C 60 80 43 */	lis r3, sTexCoordScaleTable__6J3DSys@ha /* 0x80434C2C@ha */
/* 8031E2A4  38 03 4C 2C */	addi r0, r3, sTexCoordScaleTable__6J3DSys@l /* 0x80434C2C@l */
/* 8031E2A8  7D 00 22 14 */	add r8, r0, r4
/* 8031E2AC  88 7F 00 11 */	lbz r3, 0x11(r31)
/* 8031E2B0  A0 88 00 00 */	lhz r4, 0(r8)
/* 8031E2B4  A0 08 00 04 */	lhz r0, 4(r8)
/* 8031E2B8  20 00 00 01 */	subfic r0, r0, 1
/* 8031E2BC  7C 00 00 34 */	cntlzw r0, r0
/* 8031E2C0  54 05 DE 3E */	rlwinm r5, r0, 0x1b, 0x18, 0x1f
/* 8031E2C4  38 C0 00 00 */	li r6, 0
/* 8031E2C8  A0 E8 00 02 */	lhz r7, 2(r8)
/* 8031E2CC  A0 08 00 06 */	lhz r0, 6(r8)
/* 8031E2D0  20 00 00 01 */	subfic r0, r0, 1
/* 8031E2D4  7C 00 00 34 */	cntlzw r0, r0
/* 8031E2D8  54 08 DE 3E */	rlwinm r8, r0, 0x1b, 0x18, 0x1f
/* 8031E2DC  39 20 00 00 */	li r9, 0
/* 8031E2E0  4B FE FF 55 */	bl J3DGDSetTexCoordScale2__F13_GXTexCoordIDUsUcUcUsUcUc
/* 8031E2E4  88 1F 00 12 */	lbz r0, 0x12(r31)
/* 8031E2E8  90 01 00 08 */	stw r0, 8(r1)
/* 8031E2EC  7F C3 F3 78 */	mr r3, r30
/* 8031E2F0  88 9F 00 05 */	lbz r4, 5(r31)
/* 8031E2F4  88 BF 00 06 */	lbz r5, 6(r31)
/* 8031E2F8  88 DF 00 09 */	lbz r6, 9(r31)
/* 8031E2FC  88 FF 00 0A */	lbz r7, 0xa(r31)
/* 8031E300  89 1F 00 0D */	lbz r8, 0xd(r31)
/* 8031E304  89 3F 00 0E */	lbz r9, 0xe(r31)
/* 8031E308  89 5F 00 11 */	lbz r10, 0x11(r31)
/* 8031E30C  4B FF 0B FD */	bl J3DGDSetIndTexOrder__FUl13_GXTexCoordID11_GXTexMapID13_GXTexCoordID11_GXTexMapID13_GXTexCoordID11_GXTexMapID13_GXTexCoordID11_GXTexMapID
/* 8031E310  39 61 00 20 */	addi r11, r1, 0x20
/* 8031E314  48 04 3F 11 */	bl _restgpr_28
/* 8031E318  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8031E31C  7C 08 03 A6 */	mtlr r0
/* 8031E320  38 21 00 20 */	addi r1, r1, 0x20
/* 8031E324  4E 80 00 20 */	blr 
