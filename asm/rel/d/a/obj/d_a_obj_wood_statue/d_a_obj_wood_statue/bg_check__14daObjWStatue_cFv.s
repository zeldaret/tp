lbl_80D3A8E8:
/* 80D3A8E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D3A8EC  7C 08 02 A6 */	mflr r0
/* 80D3A8F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D3A8F4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D3A8F8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80D3A8FC  7C 7E 1B 78 */	mr r30, r3
/* 80D3A900  3C 60 80 D4 */	lis r3, l_cyl_src@ha /* 0x80D3B638@ha */
/* 80D3A904  3B E3 B6 38 */	addi r31, r3, l_cyl_src@l /* 0x80D3B638@l */
/* 80D3A908  80 1E 05 B8 */	lwz r0, 0x5b8(r30)
/* 80D3A90C  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80D3A910  41 82 00 34 */	beq lbl_80D3A944
/* 80D3A914  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80D3A918  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80D3A91C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D3A920  40 81 00 14 */	ble lbl_80D3A934
/* 80D3A924  38 7E 04 F8 */	addi r3, r30, 0x4f8
/* 80D3A928  38 9E 07 64 */	addi r4, r30, 0x764
/* 80D3A92C  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80D3A930  4B FF F5 09 */	bl Reflect__FP4cXyzRC13cBgS_PolyInfof
lbl_80D3A934:
/* 80D3A934  C0 3E 04 F8 */	lfs f1, 0x4f8(r30)
/* 80D3A938  C0 5E 05 00 */	lfs f2, 0x500(r30)
/* 80D3A93C  4B 52 CD 39 */	bl cM_atan2s__Fff
/* 80D3A940  B0 7E 04 DE */	sth r3, 0x4de(r30)
lbl_80D3A944:
/* 80D3A944  80 1E 05 B8 */	lwz r0, 0x5b8(r30)
/* 80D3A948  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 80D3A94C  41 82 00 D8 */	beq lbl_80D3AA24
/* 80D3A950  C0 1E 04 F8 */	lfs f0, 0x4f8(r30)
/* 80D3A954  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D3A958  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 80D3A95C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D3A960  C0 1E 05 00 */	lfs f0, 0x500(r30)
/* 80D3A964  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D3A968  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80D3A96C  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80D3A970  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D3A974  40 81 00 14 */	ble lbl_80D3A988
/* 80D3A978  38 61 00 0C */	addi r3, r1, 0xc
/* 80D3A97C  38 9E 07 64 */	addi r4, r30, 0x764
/* 80D3A980  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 80D3A984  4B FF F4 B5 */	bl Reflect__FP4cXyzRC13cBgS_PolyInfof
lbl_80D3A988:
/* 80D3A988  C0 1E 09 40 */	lfs f0, 0x940(r30)
/* 80D3A98C  FC 20 00 50 */	fneg f1, f0
/* 80D3A990  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 80D3A994  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D3A998  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80D3A99C  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 80D3A9A0  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80D3A9A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D3A9A8  40 80 00 0C */	bge lbl_80D3A9B4
/* 80D3A9AC  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80D3A9B0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_80D3A9B4:
/* 80D3A9B4  A8 1E 09 4A */	lha r0, 0x94a(r30)
/* 80D3A9B8  2C 00 00 05 */	cmpwi r0, 5
/* 80D3A9BC  40 81 00 10 */	ble lbl_80D3A9CC
/* 80D3A9C0  88 7E 09 39 */	lbz r3, 0x939(r30)
/* 80D3A9C4  38 03 00 01 */	addi r0, r3, 1
/* 80D3A9C8  98 1E 09 39 */	stb r0, 0x939(r30)
lbl_80D3A9CC:
/* 80D3A9CC  88 1E 09 39 */	lbz r0, 0x939(r30)
/* 80D3A9D0  28 00 00 01 */	cmplwi r0, 1
/* 80D3A9D4  40 82 00 50 */	bne lbl_80D3AA24
/* 80D3A9D8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80D3A9DC  7C 03 07 74 */	extsb r3, r0
/* 80D3A9E0  4B 2F 26 8D */	bl dComIfGp_getReverb__Fi
/* 80D3A9E4  7C 67 1B 78 */	mr r7, r3
/* 80D3A9E8  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008024E@ha */
/* 80D3A9EC  38 03 02 4E */	addi r0, r3, 0x024E /* 0x0008024E@l */
/* 80D3A9F0  90 01 00 08 */	stw r0, 8(r1)
/* 80D3A9F4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D3A9F8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D3A9FC  80 63 00 00 */	lwz r3, 0(r3)
/* 80D3AA00  38 81 00 08 */	addi r4, r1, 8
/* 80D3AA04  38 BE 05 38 */	addi r5, r30, 0x538
/* 80D3AA08  38 C0 00 00 */	li r6, 0
/* 80D3AA0C  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 80D3AA10  FC 40 08 90 */	fmr f2, f1
/* 80D3AA14  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 80D3AA18  FC 80 18 90 */	fmr f4, f3
/* 80D3AA1C  39 00 00 00 */	li r8, 0
/* 80D3AA20  4B 57 0F 65 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D3AA24:
/* 80D3AA24  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D3AA28  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80D3AA2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D3AA30  7C 08 03 A6 */	mtlr r0
/* 80D3AA34  38 21 00 20 */	addi r1, r1, 0x20
/* 80D3AA38  4E 80 00 20 */	blr 
