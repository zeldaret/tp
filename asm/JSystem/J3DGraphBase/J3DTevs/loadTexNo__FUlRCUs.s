lbl_80323F94:
/* 80323F94  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80323F98  7C 08 02 A6 */	mflr r0
/* 80323F9C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80323FA0  39 61 00 30 */	addi r11, r1, 0x30
/* 80323FA4  48 03 E2 35 */	bl _savegpr_28
/* 80323FA8  7C 7E 1B 78 */	mr r30, r3
/* 80323FAC  3C 60 80 43 */	lis r3, j3dSys@ha /* 0x80434AC8@ha */
/* 80323FB0  38 63 4A C8 */	addi r3, r3, j3dSys@l /* 0x80434AC8@l */
/* 80323FB4  80 63 00 58 */	lwz r3, 0x58(r3)
/* 80323FB8  80 63 00 04 */	lwz r3, 4(r3)
/* 80323FBC  A0 04 00 00 */	lhz r0, 0(r4)
/* 80323FC0  54 00 2A F4 */	rlwinm r0, r0, 5, 0xb, 0x1a
/* 80323FC4  7F E3 02 14 */	add r31, r3, r0
/* 80323FC8  A0 1F 00 02 */	lhz r0, 2(r31)
/* 80323FCC  57 C4 18 38 */	slwi r4, r30, 3
/* 80323FD0  3C 60 80 43 */	lis r3, sTexCoordScaleTable__6J3DSys@ha /* 0x80434C2C@ha */
/* 80323FD4  38 63 4C 2C */	addi r3, r3, sTexCoordScaleTable__6J3DSys@l /* 0x80434C2C@l */
/* 80323FD8  7C 03 23 2E */	sthx r0, r3, r4
/* 80323FDC  A0 1F 00 04 */	lhz r0, 4(r31)
/* 80323FE0  7C 63 22 14 */	add r3, r3, r4
/* 80323FE4  B0 03 00 02 */	sth r0, 2(r3)
/* 80323FE8  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 80323FEC  80 64 00 08 */	lwz r3, 8(r4)
/* 80323FF0  38 63 00 14 */	addi r3, r3, 0x14
/* 80323FF4  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80323FF8  7C 03 00 40 */	cmplw r3, r0
/* 80323FFC  40 81 00 08 */	ble lbl_80324004
/* 80324000  48 03 D0 D5 */	bl GDOverflowed
lbl_80324004:
/* 80324004  7F C3 F3 78 */	mr r3, r30
/* 80324008  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8032400C  7C 9F 02 14 */	add r4, r31, r0
/* 80324010  4B FE A6 6D */	bl J3DGDSetTexImgPtr__F11_GXTexMapIDPv
/* 80324014  7F C3 F3 78 */	mr r3, r30
/* 80324018  A0 9F 00 02 */	lhz r4, 2(r31)
/* 8032401C  A0 BF 00 04 */	lhz r5, 4(r31)
/* 80324020  88 1F 00 00 */	lbz r0, 0(r31)
/* 80324024  54 06 07 3E */	clrlwi r6, r0, 0x1c
/* 80324028  4B FE A5 AD */	bl J3DGDSetTexImgAttr__F11_GXTexMapIDUsUs9_GXTexFmt
/* 8032402C  7F C3 F3 78 */	mr r3, r30
/* 80324030  88 9F 00 06 */	lbz r4, 6(r31)
/* 80324034  88 BF 00 07 */	lbz r5, 7(r31)
/* 80324038  88 DF 00 14 */	lbz r6, 0x14(r31)
/* 8032403C  88 FF 00 15 */	lbz r7, 0x15(r31)
/* 80324040  C0 42 C9 B0 */	lfs f2, lit_1167(r2)
/* 80324044  88 1F 00 16 */	lbz r0, 0x16(r31)
/* 80324048  7C 00 07 74 */	extsb r0, r0
/* 8032404C  C8 82 C9 B8 */	lfd f4, lit_1171(r2)
/* 80324050  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80324054  90 01 00 0C */	stw r0, 0xc(r1)
/* 80324058  3D 00 43 30 */	lis r8, 0x4330
/* 8032405C  91 01 00 08 */	stw r8, 8(r1)
/* 80324060  C8 01 00 08 */	lfd f0, 8(r1)
/* 80324064  EC 00 20 28 */	fsubs f0, f0, f4
/* 80324068  EC 22 00 32 */	fmuls f1, f2, f0
/* 8032406C  88 1F 00 17 */	lbz r0, 0x17(r31)
/* 80324070  7C 00 07 74 */	extsb r0, r0
/* 80324074  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80324078  90 01 00 14 */	stw r0, 0x14(r1)
/* 8032407C  91 01 00 10 */	stw r8, 0x10(r1)
/* 80324080  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80324084  EC 00 20 28 */	fsubs f0, f0, f4
/* 80324088  EC 42 00 32 */	fmuls f2, f2, f0
/* 8032408C  C0 62 C9 B4 */	lfs f3, lit_1168(r2)
/* 80324090  A8 1F 00 1A */	lha r0, 0x1a(r31)
/* 80324094  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80324098  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8032409C  91 01 00 18 */	stw r8, 0x18(r1)
/* 803240A0  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 803240A4  EC 00 20 28 */	fsubs f0, f0, f4
/* 803240A8  EC 63 00 32 */	fmuls f3, f3, f0
/* 803240AC  89 1F 00 12 */	lbz r8, 0x12(r31)
/* 803240B0  89 3F 00 11 */	lbz r9, 0x11(r31)
/* 803240B4  89 5F 00 13 */	lbz r10, 0x13(r31)
/* 803240B8  4B FE A3 81 */	bl J3DGDSetTexLookupMode__F11_GXTexMapID14_GXTexWrapMode14_GXTexWrapMode12_GXTexFilter12_GXTexFilterfffUcUc13_GXAnisotropy
/* 803240BC  88 1F 00 08 */	lbz r0, 8(r31)
/* 803240C0  28 00 00 01 */	cmplwi r0, 1
/* 803240C4  40 82 00 60 */	bne lbl_80324124
/* 803240C8  A0 1F 00 0A */	lhz r0, 0xa(r31)
/* 803240CC  28 00 00 10 */	cmplwi r0, 0x10
/* 803240D0  3B A0 00 01 */	li r29, 1
/* 803240D4  40 81 00 08 */	ble lbl_803240DC
/* 803240D8  3B A0 00 10 */	li r29, 0x10
lbl_803240DC:
/* 803240DC  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 803240E0  80 64 00 08 */	lwz r3, 8(r4)
/* 803240E4  38 63 00 14 */	addi r3, r3, 0x14
/* 803240E8  80 04 00 0C */	lwz r0, 0xc(r4)
/* 803240EC  7C 03 00 40 */	cmplw r3, r0
/* 803240F0  40 81 00 08 */	ble lbl_803240F8
/* 803240F4  48 03 CF E1 */	bl GDOverflowed
lbl_803240F8:
/* 803240F8  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 803240FC  7C 7F 02 14 */	add r3, r31, r0
/* 80324100  57 C4 68 24 */	slwi r4, r30, 0xd
/* 80324104  3F 84 00 0F */	addis r28, r4, 0xf
/* 80324108  7F 84 E3 78 */	mr r4, r28
/* 8032410C  7F A5 EB 78 */	mr r5, r29
/* 80324110  4B FE A7 69 */	bl J3DGDLoadTlut__FPvUl11_GXTlutSize
/* 80324114  7F C3 F3 78 */	mr r3, r30
/* 80324118  7F 84 E3 78 */	mr r4, r28
/* 8032411C  88 BF 00 09 */	lbz r5, 9(r31)
/* 80324120  4B FE A6 C1 */	bl J3DGDSetTexTlut__F11_GXTexMapIDUl10_GXTlutFmt
lbl_80324124:
/* 80324124  39 61 00 30 */	addi r11, r1, 0x30
/* 80324128  48 03 E0 FD */	bl _restgpr_28
/* 8032412C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80324130  7C 08 03 A6 */	mtlr r0
/* 80324134  38 21 00 30 */	addi r1, r1, 0x30
/* 80324138  4E 80 00 20 */	blr 
