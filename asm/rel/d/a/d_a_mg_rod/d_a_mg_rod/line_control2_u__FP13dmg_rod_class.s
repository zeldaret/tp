lbl_804ABCE0:
/* 804ABCE0  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 804ABCE4  7C 08 02 A6 */	mflr r0
/* 804ABCE8  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 804ABCEC  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 804ABCF0  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 804ABCF4  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 804ABCF8  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, 0 /* qr0 */
/* 804ABCFC  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 804ABD00  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, 0 /* qr0 */
/* 804ABD04  DB 81 00 A0 */	stfd f28, 0xa0(r1)
/* 804ABD08  F3 81 00 A8 */	psq_st f28, 168(r1), 0, 0 /* qr0 */
/* 804ABD0C  39 61 00 A0 */	addi r11, r1, 0xa0
/* 804ABD10  4B EB 64 B8 */	b _savegpr_24
/* 804ABD14  7C 78 1B 78 */	mr r24, r3
/* 804ABD18  3C 60 80 4C */	lis r3, lit_3879@ha
/* 804ABD1C  3B C3 B5 34 */	addi r30, r3, lit_3879@l
/* 804ABD20  38 61 00 2C */	addi r3, r1, 0x2c
/* 804ABD24  4B BC B8 58 */	b __ct__11dBgS_GndChkFv
/* 804ABD28  C0 18 04 D0 */	lfs f0, 0x4d0(r24)
/* 804ABD2C  D0 18 0C 14 */	stfs f0, 0xc14(r24)
/* 804ABD30  C0 18 04 D4 */	lfs f0, 0x4d4(r24)
/* 804ABD34  D0 18 0C 18 */	stfs f0, 0xc18(r24)
/* 804ABD38  C0 18 04 D8 */	lfs f0, 0x4d8(r24)
/* 804ABD3C  D0 18 0C 1C */	stfs f0, 0xc1c(r24)
/* 804ABD40  3B 38 0C 08 */	addi r25, r24, 0xc08
/* 804ABD44  C3 FE 00 58 */	lfs f31, 0x58(r30)
/* 804ABD48  D3 E1 00 20 */	stfs f31, 0x20(r1)
/* 804ABD4C  D3 E1 00 24 */	stfs f31, 0x24(r1)
/* 804ABD50  C0 18 0F 5C */	lfs f0, 0xf5c(r24)
/* 804ABD54  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804ABD58  3B 80 00 62 */	li r28, 0x62
/* 804ABD5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804ABD60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804ABD64  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 804ABD68  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 804ABD6C  3B E3 07 68 */	addi r31, r3, calc_mtx@l
lbl_804ABD70:
/* 804ABD70  C0 39 00 00 */	lfs f1, 0(r25)
/* 804ABD74  C0 19 00 0C */	lfs f0, 0xc(r25)
/* 804ABD78  EF C1 00 28 */	fsubs f30, f1, f0
/* 804ABD7C  C0 59 00 08 */	lfs f2, 8(r25)
/* 804ABD80  C0 19 00 14 */	lfs f0, 0x14(r25)
/* 804ABD84  EF 82 00 28 */	fsubs f28, f2, f0
/* 804ABD88  A8 18 0F 7E */	lha r0, 0xf7e(r24)
/* 804ABD8C  2C 00 00 01 */	cmpwi r0, 1
/* 804ABD90  40 82 00 58 */	bne lbl_804ABDE8
/* 804ABD94  D0 21 00 08 */	stfs f1, 8(r1)
/* 804ABD98  C0 3E 00 B4 */	lfs f1, 0xb4(r30)
/* 804ABD9C  C0 19 00 04 */	lfs f0, 4(r25)
/* 804ABDA0  EC 01 00 2A */	fadds f0, f1, f0
/* 804ABDA4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804ABDA8  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 804ABDAC  38 61 00 2C */	addi r3, r1, 0x2c
/* 804ABDB0  38 81 00 08 */	addi r4, r1, 8
/* 804ABDB4  4B DB BF 58 */	b SetPos__11cBgS_GndChkFPC3Vec
/* 804ABDB8  7F A3 EB 78 */	mr r3, r29
/* 804ABDBC  38 81 00 2C */	addi r4, r1, 0x2c
/* 804ABDC0  4B BC 86 E0 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 804ABDC4  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 804ABDC8  EC 00 08 2A */	fadds f0, f0, f1
/* 804ABDCC  C0 39 00 04 */	lfs f1, 4(r25)
/* 804ABDD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804ABDD4  40 80 00 08 */	bge lbl_804ABDDC
/* 804ABDD8  FC 20 00 90 */	fmr f1, f0
lbl_804ABDDC:
/* 804ABDDC  C0 19 00 10 */	lfs f0, 0x10(r25)
/* 804ABDE0  EF A1 00 28 */	fsubs f29, f1, f0
/* 804ABDE4  48 00 00 10 */	b lbl_804ABDF4
lbl_804ABDE8:
/* 804ABDE8  C0 39 00 04 */	lfs f1, 4(r25)
/* 804ABDEC  C0 19 00 10 */	lfs f0, 0x10(r25)
/* 804ABDF0  EF A1 00 28 */	fsubs f29, f1, f0
lbl_804ABDF4:
/* 804ABDF4  FC 20 F0 90 */	fmr f1, f30
/* 804ABDF8  FC 40 E0 90 */	fmr f2, f28
/* 804ABDFC  4B DB B8 78 */	b cM_atan2s__Fff
/* 804ABE00  7C 7A 07 34 */	extsh r26, r3
/* 804ABE04  EC 3E 07 B2 */	fmuls f1, f30, f30
/* 804ABE08  EC 1C 07 32 */	fmuls f0, f28, f28
/* 804ABE0C  EC 41 00 2A */	fadds f2, f1, f0
/* 804ABE10  FC 02 F8 40 */	fcmpo cr0, f2, f31
/* 804ABE14  40 81 00 0C */	ble lbl_804ABE20
/* 804ABE18  FC 00 10 34 */	frsqrte f0, f2
/* 804ABE1C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_804ABE20:
/* 804ABE20  FC 20 E8 90 */	fmr f1, f29
/* 804ABE24  4B DB B8 50 */	b cM_atan2s__Fff
/* 804ABE28  7C 03 00 D0 */	neg r0, r3
/* 804ABE2C  7C 1B 07 34 */	extsh r27, r0
/* 804ABE30  80 7F 00 00 */	lwz r3, 0(r31)
/* 804ABE34  7F 44 D3 78 */	mr r4, r26
/* 804ABE38  4B B6 05 A4 */	b mDoMtx_YrotS__FPA4_fs
/* 804ABE3C  80 7F 00 00 */	lwz r3, 0(r31)
/* 804ABE40  7F 64 DB 78 */	mr r4, r27
/* 804ABE44  4B B6 05 58 */	b mDoMtx_XrotM__FPA4_fs
/* 804ABE48  38 61 00 20 */	addi r3, r1, 0x20
/* 804ABE4C  38 81 00 14 */	addi r4, r1, 0x14
/* 804ABE50  4B DC 50 9C */	b MtxPosition__FP4cXyzP4cXyz
/* 804ABE54  C0 39 00 0C */	lfs f1, 0xc(r25)
/* 804ABE58  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804ABE5C  EC 01 00 2A */	fadds f0, f1, f0
/* 804ABE60  D0 19 00 00 */	stfs f0, 0(r25)
/* 804ABE64  C0 39 00 10 */	lfs f1, 0x10(r25)
/* 804ABE68  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 804ABE6C  EC 01 00 2A */	fadds f0, f1, f0
/* 804ABE70  D0 19 00 04 */	stfs f0, 4(r25)
/* 804ABE74  C0 39 00 14 */	lfs f1, 0x14(r25)
/* 804ABE78  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804ABE7C  EC 01 00 2A */	fadds f0, f1, f0
/* 804ABE80  D0 19 00 08 */	stfs f0, 8(r25)
/* 804ABE84  3B 9C FF FF */	addi r28, r28, -1
/* 804ABE88  2C 1C 00 01 */	cmpwi r28, 1
/* 804ABE8C  3B 39 FF F4 */	addi r25, r25, -12
/* 804ABE90  40 80 FE E0 */	bge lbl_804ABD70
/* 804ABE94  38 61 00 2C */	addi r3, r1, 0x2c
/* 804ABE98  38 80 FF FF */	li r4, -1
/* 804ABE9C  4B BC B7 54 */	b __dt__11dBgS_GndChkFv
/* 804ABEA0  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 804ABEA4  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 804ABEA8  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, 0 /* qr0 */
/* 804ABEAC  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 804ABEB0  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, 0 /* qr0 */
/* 804ABEB4  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 804ABEB8  E3 81 00 A8 */	psq_l f28, 168(r1), 0, 0 /* qr0 */
/* 804ABEBC  CB 81 00 A0 */	lfd f28, 0xa0(r1)
/* 804ABEC0  39 61 00 A0 */	addi r11, r1, 0xa0
/* 804ABEC4  4B EB 63 50 */	b _restgpr_24
/* 804ABEC8  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 804ABECC  7C 08 03 A6 */	mtlr r0
/* 804ABED0  38 21 00 E0 */	addi r1, r1, 0xe0
/* 804ABED4  4E 80 00 20 */	blr 
