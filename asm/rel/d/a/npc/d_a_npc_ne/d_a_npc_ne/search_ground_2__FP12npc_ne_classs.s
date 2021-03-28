lbl_80A8DD58:
/* 80A8DD58  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80A8DD5C  7C 08 02 A6 */	mflr r0
/* 80A8DD60  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80A8DD64  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 80A8DD68  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 80A8DD6C  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 80A8DD70  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, 0 /* qr0 */
/* 80A8DD74  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80A8DD78  4B 8D 44 60 */	b _savegpr_28
/* 80A8DD7C  7C 7D 1B 78 */	mr r29, r3
/* 80A8DD80  7C 9C 23 78 */	mr r28, r4
/* 80A8DD84  3C 60 80 A9 */	lis r3, lit_3990@ha
/* 80A8DD88  3B E3 24 1C */	addi r31, r3, lit_3990@l
/* 80A8DD8C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80A8DD90  4B 5E 9E D8 */	b __ct__11dBgS_LinChkFv
/* 80A8DD94  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80A8DD98  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A8DD9C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80A8DDA0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A8DDA4  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80A8DDA8  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A8DDAC  C0 1D 06 BC */	lfs f0, 0x6bc(r29)
/* 80A8DDB0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A8DDB4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80A8DDB8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80A8DDBC  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 80A8DDC0  38 7E 3E C8 */	addi r3, r30, 0x3ec8
/* 80A8DDC4  3C 80 80 A9 */	lis r4, stringBase0@ha
/* 80A8DDC8  38 84 25 D0 */	addi r4, r4, stringBase0@l
/* 80A8DDCC  38 84 00 0F */	addi r4, r4, 0xf
/* 80A8DDD0  4B 8D AB C4 */	b strcmp
/* 80A8DDD4  2C 03 00 00 */	cmpwi r3, 0
/* 80A8DDD8  40 82 00 10 */	bne lbl_80A8DDE8
/* 80A8DDDC  C3 FF 01 14 */	lfs f31, 0x114(r31)
/* 80A8DDE0  C3 DF 00 18 */	lfs f30, 0x18(r31)
/* 80A8DDE4  48 00 00 0C */	b lbl_80A8DDF0
lbl_80A8DDE8:
/* 80A8DDE8  C3 FF 00 20 */	lfs f31, 0x20(r31)
/* 80A8DDEC  C3 DF 00 84 */	lfs f30, 0x84(r31)
lbl_80A8DDF0:
/* 80A8DDF0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80A8DDF4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80A8DDF8  80 63 00 00 */	lwz r3, 0(r3)
/* 80A8DDFC  7F 84 E3 78 */	mr r4, r28
/* 80A8DE00  4B 57 E5 DC */	b mDoMtx_YrotS__FPA4_fs
/* 80A8DE04  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80A8DE08  D0 01 00 08 */	stfs f0, 8(r1)
/* 80A8DE0C  D3 E1 00 0C */	stfs f31, 0xc(r1)
/* 80A8DE10  D3 C1 00 10 */	stfs f30, 0x10(r1)
/* 80A8DE14  38 61 00 08 */	addi r3, r1, 8
/* 80A8DE18  38 81 00 20 */	addi r4, r1, 0x20
/* 80A8DE1C  4B 7E 30 D0 */	b MtxPosition__FP4cXyzP4cXyz
/* 80A8DE20  38 61 00 20 */	addi r3, r1, 0x20
/* 80A8DE24  38 81 00 14 */	addi r4, r1, 0x14
/* 80A8DE28  7C 65 1B 78 */	mr r5, r3
/* 80A8DE2C  4B 8B 92 64 */	b PSVECAdd
/* 80A8DE30  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80A8DE34  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A8DE38  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80A8DE3C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80A8DE40  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80A8DE44  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80A8DE48  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80A8DE4C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80A8DE50  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A8DE54  38 61 00 2C */	addi r3, r1, 0x2c
/* 80A8DE58  38 81 00 20 */	addi r4, r1, 0x20
/* 80A8DE5C  38 A1 00 14 */	addi r5, r1, 0x14
/* 80A8DE60  7F A6 EB 78 */	mr r6, r29
/* 80A8DE64  4B 5E 9F 00 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80A8DE68  7F C3 F3 78 */	mr r3, r30
/* 80A8DE6C  38 81 00 2C */	addi r4, r1, 0x2c
/* 80A8DE70  4B 5E 65 44 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80A8DE74  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80A8DE78  41 82 00 30 */	beq lbl_80A8DEA8
/* 80A8DE7C  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80A8DE80  D0 1D 05 C4 */	stfs f0, 0x5c4(r29)
/* 80A8DE84  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80A8DE88  D0 1D 05 C8 */	stfs f0, 0x5c8(r29)
/* 80A8DE8C  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80A8DE90  D0 1D 05 CC */	stfs f0, 0x5cc(r29)
/* 80A8DE94  38 61 00 2C */	addi r3, r1, 0x2c
/* 80A8DE98  38 80 FF FF */	li r4, -1
/* 80A8DE9C  4B 5E 9E 40 */	b __dt__11dBgS_LinChkFv
/* 80A8DEA0  38 60 00 01 */	li r3, 1
/* 80A8DEA4  48 00 00 14 */	b lbl_80A8DEB8
lbl_80A8DEA8:
/* 80A8DEA8  38 61 00 2C */	addi r3, r1, 0x2c
/* 80A8DEAC  38 80 FF FF */	li r4, -1
/* 80A8DEB0  4B 5E 9E 2C */	b __dt__11dBgS_LinChkFv
/* 80A8DEB4  38 60 00 00 */	li r3, 0
lbl_80A8DEB8:
/* 80A8DEB8  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 80A8DEBC  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 80A8DEC0  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, 0 /* qr0 */
/* 80A8DEC4  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 80A8DEC8  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80A8DECC  4B 8D 43 58 */	b _restgpr_28
/* 80A8DED0  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80A8DED4  7C 08 03 A6 */	mtlr r0
/* 80A8DED8  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80A8DEDC  4E 80 00 20 */	blr 
