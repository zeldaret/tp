lbl_8031E328:
/* 8031E328  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8031E32C  7C 08 02 A6 */	mflr r0
/* 8031E330  90 01 00 24 */	stw r0, 0x24(r1)
/* 8031E334  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8031E338  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8031E33C  7C 7E 1B 78 */	mr r30, r3
/* 8031E340  54 80 01 09 */	rlwinm. r0, r4, 0, 4, 4
/* 8031E344  41 82 00 AC */	beq lbl_8031E3F0
/* 8031E348  8B FE 00 04 */	lbz r31, 4(r30)
/* 8031E34C  38 60 00 01 */	li r3, 1
/* 8031E350  38 9E 00 18 */	addi r4, r30, 0x18
/* 8031E354  88 1E 00 30 */	lbz r0, 0x30(r30)
/* 8031E358  7C 05 07 74 */	extsb r5, r0
/* 8031E35C  4B FF 07 D5 */	bl J3DGDSetIndTexMtx__F14_GXIndTexMtxIDPA3_fSc
/* 8031E360  38 60 00 00 */	li r3, 0
/* 8031E364  88 9E 00 6C */	lbz r4, 0x6c(r30)
/* 8031E368  88 BE 00 6D */	lbz r5, 0x6d(r30)
/* 8031E36C  88 DE 00 70 */	lbz r6, 0x70(r30)
/* 8031E370  88 FE 00 71 */	lbz r7, 0x71(r30)
/* 8031E374  4B FF 0A 9D */	bl J3DGDSetIndTexCoordScale__F16_GXIndTexStageID14_GXIndTexScale14_GXIndTexScale14_GXIndTexScale14_GXIndTexScale
/* 8031E378  88 1E 00 06 */	lbz r0, 6(r30)
/* 8031E37C  54 04 1E B8 */	rlwinm r4, r0, 3, 0x1a, 0x1c
/* 8031E380  3C 60 80 43 */	lis r3, sTexCoordScaleTable__6J3DSys@ha
/* 8031E384  38 03 4C 2C */	addi r0, r3, sTexCoordScaleTable__6J3DSys@l
/* 8031E388  7D 00 22 14 */	add r8, r0, r4
/* 8031E38C  88 7E 00 05 */	lbz r3, 5(r30)
/* 8031E390  A0 88 00 00 */	lhz r4, 0(r8)
/* 8031E394  A0 08 00 04 */	lhz r0, 4(r8)
/* 8031E398  20 00 00 01 */	subfic r0, r0, 1
/* 8031E39C  7C 00 00 34 */	cntlzw r0, r0
/* 8031E3A0  54 05 DE 3E */	rlwinm r5, r0, 0x1b, 0x18, 0x1f
/* 8031E3A4  38 C0 00 00 */	li r6, 0
/* 8031E3A8  A0 E8 00 02 */	lhz r7, 2(r8)
/* 8031E3AC  A0 08 00 06 */	lhz r0, 6(r8)
/* 8031E3B0  20 00 00 01 */	subfic r0, r0, 1
/* 8031E3B4  7C 00 00 34 */	cntlzw r0, r0
/* 8031E3B8  54 08 DE 3E */	rlwinm r8, r0, 0x1b, 0x18, 0x1f
/* 8031E3BC  39 20 00 00 */	li r9, 0
/* 8031E3C0  4B FE FE 75 */	bl J3DGDSetTexCoordScale2__F13_GXTexCoordIDUsUcUcUsUcUc
/* 8031E3C4  88 1E 00 12 */	lbz r0, 0x12(r30)
/* 8031E3C8  90 01 00 08 */	stw r0, 8(r1)
/* 8031E3CC  7F E3 FB 78 */	mr r3, r31
/* 8031E3D0  88 9E 00 05 */	lbz r4, 5(r30)
/* 8031E3D4  88 BE 00 06 */	lbz r5, 6(r30)
/* 8031E3D8  88 DE 00 09 */	lbz r6, 9(r30)
/* 8031E3DC  88 FE 00 0A */	lbz r7, 0xa(r30)
/* 8031E3E0  89 1E 00 0D */	lbz r8, 0xd(r30)
/* 8031E3E4  89 3E 00 0E */	lbz r9, 0xe(r30)
/* 8031E3E8  89 5E 00 11 */	lbz r10, 0x11(r30)
/* 8031E3EC  4B FF 0B 1D */	bl J3DGDSetIndTexOrder__FUl13_GXTexCoordID11_GXTexMapID13_GXTexCoordID11_GXTexMapID13_GXTexCoordID11_GXTexMapID13_GXTexCoordID11_GXTexMapID
lbl_8031E3F0:
/* 8031E3F0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8031E3F4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8031E3F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8031E3FC  7C 08 03 A6 */	mtlr r0
/* 8031E400  38 21 00 20 */	addi r1, r1, 0x20
/* 8031E404  4E 80 00 20 */	blr 
