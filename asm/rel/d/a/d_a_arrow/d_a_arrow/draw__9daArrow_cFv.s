lbl_8049D0CC:
/* 8049D0CC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8049D0D0  7C 08 02 A6 */	mflr r0
/* 8049D0D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8049D0D8  39 61 00 30 */	addi r11, r1, 0x30
/* 8049D0DC  4B EC 50 FC */	b _savegpr_28
/* 8049D0E0  7C 7D 1B 78 */	mr r29, r3
/* 8049D0E4  3C 60 80 4A */	lis r3, lit_3768@ha
/* 8049D0E8  3B E3 DC 84 */	addi r31, r3, lit_3768@l
/* 8049D0EC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8049D0F0  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8049D0F4  38 80 00 00 */	li r4, 0
/* 8049D0F8  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8049D0FC  38 DD 01 0C */	addi r6, r29, 0x10c
/* 8049D100  4B D0 66 C4 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 8049D104  88 1D 09 42 */	lbz r0, 0x942(r29)
/* 8049D108  28 00 00 00 */	cmplwi r0, 0
/* 8049D10C  40 82 00 1C */	bne lbl_8049D128
/* 8049D110  88 1D 09 3F */	lbz r0, 0x93f(r29)
/* 8049D114  28 00 00 00 */	cmplwi r0, 0
/* 8049D118  40 82 00 10 */	bne lbl_8049D128
/* 8049D11C  80 9D 00 B0 */	lwz r4, 0xb0(r29)
/* 8049D120  28 04 00 08 */	cmplwi r4, 8
/* 8049D124  40 82 00 0C */	bne lbl_8049D130
lbl_8049D128:
/* 8049D128  38 60 00 01 */	li r3, 1
/* 8049D12C  48 00 02 C8 */	b lbl_8049D3F4
lbl_8049D130:
/* 8049D130  80 7F 01 64 */	lwz r3, 0x164(r31)
/* 8049D134  80 1F 01 68 */	lwz r0, 0x168(r31)
/* 8049D138  90 61 00 08 */	stw r3, 8(r1)
/* 8049D13C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8049D140  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8049D144  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 8049D148  83 DC 5D B4 */	lwz r30, 0x5db4(r28)
/* 8049D14C  28 04 00 00 */	cmplwi r4, 0
/* 8049D150  40 82 00 20 */	bne lbl_8049D170
/* 8049D154  88 1D 09 40 */	lbz r0, 0x940(r29)
/* 8049D158  28 00 00 00 */	cmplwi r0, 0
/* 8049D15C  41 82 00 14 */	beq lbl_8049D170
/* 8049D160  7F A3 EB 78 */	mr r3, r29
/* 8049D164  4B FF DE 89 */	bl setKeepMatrix__9daArrow_cFv
/* 8049D168  38 00 00 00 */	li r0, 0
/* 8049D16C  98 1D 09 40 */	stb r0, 0x940(r29)
lbl_8049D170:
/* 8049D170  88 1D 09 3C */	lbz r0, 0x93c(r29)
/* 8049D174  28 00 00 01 */	cmplwi r0, 1
/* 8049D178  40 82 01 E0 */	bne lbl_8049D358
/* 8049D17C  88 1D 09 43 */	lbz r0, 0x943(r29)
/* 8049D180  28 00 00 00 */	cmplwi r0, 0
/* 8049D184  41 82 00 2C */	beq lbl_8049D1B0
/* 8049D188  7F C3 F3 78 */	mr r3, r30
/* 8049D18C  4B C3 9C 08 */	b getFreezeR__9daAlink_cCFv
/* 8049D190  B0 61 00 08 */	sth r3, 8(r1)
/* 8049D194  7F C3 F3 78 */	mr r3, r30
/* 8049D198  4B C3 9C 0C */	b getFreezeG__9daAlink_cCFv
/* 8049D19C  B0 61 00 0A */	sth r3, 0xa(r1)
/* 8049D1A0  7F C3 F3 78 */	mr r3, r30
/* 8049D1A4  4B C3 9C 10 */	b getFreezeB__9daAlink_cCFv
/* 8049D1A8  B0 61 00 0C */	sth r3, 0xc(r1)
/* 8049D1AC  48 00 01 80 */	b lbl_8049D32C
lbl_8049D1B0:
/* 8049D1B0  80 7C 5D B4 */	lwz r3, 0x5db4(r28)
/* 8049D1B4  4B C4 65 AC */	b getBombExplodeTime__9daAlink_cCFv
/* 8049D1B8  A8 9D 09 50 */	lha r4, 0x950(r29)
/* 8049D1BC  7C 65 07 34 */	extsh r5, r3
/* 8049D1C0  7C A0 0E 70 */	srawi r0, r5, 1
/* 8049D1C4  7C 04 00 00 */	cmpw r4, r0
/* 8049D1C8  40 81 00 6C */	ble lbl_8049D234
/* 8049D1CC  C0 3F 01 6C */	lfs f1, 0x16c(r31)
/* 8049D1D0  7C 00 20 50 */	subf r0, r0, r4
/* 8049D1D4  C8 5F 01 08 */	lfd f2, 0x108(r31)
/* 8049D1D8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8049D1DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049D1E0  3C 60 43 30 */	lis r3, 0x4330
/* 8049D1E4  90 61 00 10 */	stw r3, 0x10(r1)
/* 8049D1E8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8049D1EC  EC 00 10 28 */	fsubs f0, f0, f2
/* 8049D1F0  EC 21 00 32 */	fmuls f1, f1, f0
/* 8049D1F4  7C A0 16 70 */	srawi r0, r5, 2
/* 8049D1F8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8049D1FC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8049D200  90 61 00 18 */	stw r3, 0x18(r1)
/* 8049D204  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8049D208  EC 00 10 28 */	fsubs f0, f0, f2
/* 8049D20C  EC 21 00 24 */	fdivs f1, f1, f0
/* 8049D210  4B DC A3 D4 */	b cM_rad2s__Ff
/* 8049D214  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 8049D218  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8049D21C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8049D220  7C 03 04 2E */	lfsx f0, r3, r0
/* 8049D224  FC 00 02 10 */	fabs f0, f0
/* 8049D228  FC 00 00 18 */	frsp f0, f0
/* 8049D22C  FC 20 00 90 */	fmr f1, f0
/* 8049D230  48 00 00 E0 */	b lbl_8049D310
lbl_8049D234:
/* 8049D234  7C A0 16 70 */	srawi r0, r5, 2
/* 8049D238  7C 04 00 00 */	cmpw r4, r0
/* 8049D23C  40 81 00 6C */	ble lbl_8049D2A8
/* 8049D240  C0 3F 01 6C */	lfs f1, 0x16c(r31)
/* 8049D244  7C 00 20 50 */	subf r0, r0, r4
/* 8049D248  C8 5F 01 08 */	lfd f2, 0x108(r31)
/* 8049D24C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8049D250  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8049D254  3C 60 43 30 */	lis r3, 0x4330
/* 8049D258  90 61 00 18 */	stw r3, 0x18(r1)
/* 8049D25C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8049D260  EC 00 10 28 */	fsubs f0, f0, f2
/* 8049D264  EC 21 00 32 */	fmuls f1, f1, f0
/* 8049D268  7C A0 1E 70 */	srawi r0, r5, 3
/* 8049D26C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8049D270  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049D274  90 61 00 10 */	stw r3, 0x10(r1)
/* 8049D278  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8049D27C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8049D280  EC 21 00 24 */	fdivs f1, f1, f0
/* 8049D284  4B DC A3 60 */	b cM_rad2s__Ff
/* 8049D288  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 8049D28C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8049D290  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8049D294  7C 03 04 2E */	lfsx f0, r3, r0
/* 8049D298  FC 00 02 10 */	fabs f0, f0
/* 8049D29C  FC 00 00 18 */	frsp f0, f0
/* 8049D2A0  FC 20 00 90 */	fmr f1, f0
/* 8049D2A4  48 00 00 6C */	b lbl_8049D310
lbl_8049D2A8:
/* 8049D2A8  C0 3F 01 6C */	lfs f1, 0x16c(r31)
/* 8049D2AC  7C A0 1E 70 */	srawi r0, r5, 3
/* 8049D2B0  7C 00 20 50 */	subf r0, r0, r4
/* 8049D2B4  C8 5F 01 08 */	lfd f2, 0x108(r31)
/* 8049D2B8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8049D2BC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8049D2C0  3C 60 43 30 */	lis r3, 0x4330
/* 8049D2C4  90 61 00 18 */	stw r3, 0x18(r1)
/* 8049D2C8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 8049D2CC  EC 00 10 28 */	fsubs f0, f0, f2
/* 8049D2D0  EC 21 00 32 */	fmuls f1, f1, f0
/* 8049D2D4  7C A0 26 70 */	srawi r0, r5, 4
/* 8049D2D8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8049D2DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049D2E0  90 61 00 10 */	stw r3, 0x10(r1)
/* 8049D2E4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8049D2E8  EC 00 10 28 */	fsubs f0, f0, f2
/* 8049D2EC  EC 21 00 24 */	fdivs f1, f1, f0
/* 8049D2F0  4B DC A2 F4 */	b cM_rad2s__Ff
/* 8049D2F4  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 8049D2F8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8049D2FC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8049D300  7C 03 04 2E */	lfsx f0, r3, r0
/* 8049D304  FC 00 02 10 */	fabs f0, f0
/* 8049D308  FC 00 00 18 */	frsp f0, f0
/* 8049D30C  FC 20 00 90 */	fmr f1, f0
lbl_8049D310:
/* 8049D310  C0 1F 01 70 */	lfs f0, 0x170(r31)
/* 8049D314  EC 00 00 72 */	fmuls f0, f0, f1
/* 8049D318  FC 00 00 1E */	fctiwz f0, f0
/* 8049D31C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8049D320  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8049D324  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8049D328  B0 01 00 08 */	sth r0, 8(r1)
lbl_8049D32C:
/* 8049D32C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 8049D330  80 63 00 04 */	lwz r3, 4(r3)
/* 8049D334  80 63 00 60 */	lwz r3, 0x60(r3)
/* 8049D338  80 63 00 04 */	lwz r3, 4(r3)
/* 8049D33C  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 8049D340  38 80 00 01 */	li r4, 1
/* 8049D344  38 A1 00 08 */	addi r5, r1, 8
/* 8049D348  81 83 00 00 */	lwz r12, 0(r3)
/* 8049D34C  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8049D350  7D 89 03 A6 */	mtctr r12
/* 8049D354  4E 80 04 21 */	bctrl 
lbl_8049D358:
/* 8049D358  88 1D 09 43 */	lbz r0, 0x943(r29)
/* 8049D35C  28 00 00 00 */	cmplwi r0, 0
/* 8049D360  41 82 00 28 */	beq lbl_8049D388
/* 8049D364  7F C3 F3 78 */	mr r3, r30
/* 8049D368  4B C3 9A 2C */	b getFreezeR__9daAlink_cCFv
/* 8049D36C  B0 7D 04 64 */	sth r3, 0x464(r29)
/* 8049D370  7F C3 F3 78 */	mr r3, r30
/* 8049D374  4B C3 9A 30 */	b getFreezeG__9daAlink_cCFv
/* 8049D378  B0 7D 04 66 */	sth r3, 0x466(r29)
/* 8049D37C  7F C3 F3 78 */	mr r3, r30
/* 8049D380  4B C3 9A 34 */	b getFreezeB__9daAlink_cCFv
/* 8049D384  B0 7D 04 68 */	sth r3, 0x468(r29)
lbl_8049D388:
/* 8049D388  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8049D38C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8049D390  80 9D 05 68 */	lwz r4, 0x568(r29)
/* 8049D394  80 84 00 04 */	lwz r4, 4(r4)
/* 8049D398  38 BD 01 0C */	addi r5, r29, 0x10c
/* 8049D39C  4B D0 7A 04 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 8049D3A0  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 8049D3A4  4B B7 09 20 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 8049D3A8  88 1D 09 3C */	lbz r0, 0x93c(r29)
/* 8049D3AC  28 00 00 01 */	cmplwi r0, 1
/* 8049D3B0  40 82 00 40 */	bne lbl_8049D3F0
/* 8049D3B4  38 00 00 00 */	li r0, 0
/* 8049D3B8  B0 01 00 08 */	sth r0, 8(r1)
/* 8049D3BC  B0 01 00 0A */	sth r0, 0xa(r1)
/* 8049D3C0  B0 01 00 0C */	sth r0, 0xc(r1)
/* 8049D3C4  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 8049D3C8  80 63 00 04 */	lwz r3, 4(r3)
/* 8049D3CC  80 63 00 60 */	lwz r3, 0x60(r3)
/* 8049D3D0  80 63 00 04 */	lwz r3, 4(r3)
/* 8049D3D4  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 8049D3D8  38 80 00 01 */	li r4, 1
/* 8049D3DC  38 A1 00 08 */	addi r5, r1, 8
/* 8049D3E0  81 83 00 00 */	lwz r12, 0(r3)
/* 8049D3E4  81 8C 00 60 */	lwz r12, 0x60(r12)
/* 8049D3E8  7D 89 03 A6 */	mtctr r12
/* 8049D3EC  4E 80 04 21 */	bctrl 
lbl_8049D3F0:
/* 8049D3F0  38 60 00 01 */	li r3, 1
lbl_8049D3F4:
/* 8049D3F4  39 61 00 30 */	addi r11, r1, 0x30
/* 8049D3F8  4B EC 4E 2C */	b _restgpr_28
/* 8049D3FC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8049D400  7C 08 03 A6 */	mtlr r0
/* 8049D404  38 21 00 30 */	addi r1, r1, 0x30
/* 8049D408  4E 80 00 20 */	blr 
