lbl_8052F120:
/* 8052F120  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8052F124  7C 08 02 A6 */	mflr r0
/* 8052F128  90 01 00 84 */	stw r0, 0x84(r1)
/* 8052F12C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 8052F130  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 8052F134  39 61 00 70 */	addi r11, r1, 0x70
/* 8052F138  4B E3 30 99 */	bl _savegpr_26
/* 8052F13C  7C 7A 1B 78 */	mr r26, r3
/* 8052F140  3C 60 80 53 */	lis r3, lit_3679@ha /* 0x80536168@ha */
/* 8052F144  3B A3 61 68 */	addi r29, r3, lit_3679@l /* 0x80536168@l */
/* 8052F148  80 1A 06 4C */	lwz r0, 0x64c(r26)
/* 8052F14C  90 01 00 08 */	stw r0, 8(r1)
/* 8052F150  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 8052F154  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 8052F158  38 81 00 08 */	addi r4, r1, 8
/* 8052F15C  4B AE A6 9D */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8052F160  7C 7E 1B 79 */	or. r30, r3, r3
/* 8052F164  40 82 00 38 */	bne lbl_8052F19C
/* 8052F168  38 00 00 01 */	li r0, 1
/* 8052F16C  B0 1A 05 B6 */	sth r0, 0x5b6(r26)
/* 8052F170  38 00 00 00 */	li r0, 0
/* 8052F174  B0 1A 05 B8 */	sth r0, 0x5b8(r26)
/* 8052F178  C0 3D 00 54 */	lfs f1, 0x54(r29)
/* 8052F17C  4B D3 87 D9 */	bl cM_rndF__Ff
/* 8052F180  C0 1D 00 7C */	lfs f0, 0x7c(r29)
/* 8052F184  EC 00 08 2A */	fadds f0, f0, f1
/* 8052F188  FC 00 00 1E */	fctiwz f0, f0
/* 8052F18C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8052F190  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8052F194  B0 1A 06 2E */	sth r0, 0x62e(r26)
/* 8052F198  48 00 08 94 */	b lbl_8052FA2C
lbl_8052F19C:
/* 8052F19C  38 00 00 02 */	li r0, 2
/* 8052F1A0  98 1A 06 58 */	stb r0, 0x658(r26)
/* 8052F1A4  98 1E 10 A5 */	stb r0, 0x10a5(r30)
/* 8052F1A8  3B 80 00 00 */	li r28, 0
/* 8052F1AC  3B 60 00 00 */	li r27, 0
/* 8052F1B0  A8 1A 05 B8 */	lha r0, 0x5b8(r26)
/* 8052F1B4  2C 00 00 01 */	cmpwi r0, 1
/* 8052F1B8  41 82 00 50 */	beq lbl_8052F208
/* 8052F1BC  40 80 00 10 */	bge lbl_8052F1CC
/* 8052F1C0  2C 00 00 00 */	cmpwi r0, 0
/* 8052F1C4  40 80 00 14 */	bge lbl_8052F1D8
/* 8052F1C8  48 00 03 10 */	b lbl_8052F4D8
lbl_8052F1CC:
/* 8052F1CC  2C 00 00 03 */	cmpwi r0, 3
/* 8052F1D0  40 80 03 08 */	bge lbl_8052F4D8
/* 8052F1D4  48 00 02 60 */	b lbl_8052F434
lbl_8052F1D8:
/* 8052F1D8  C0 3D 00 14 */	lfs f1, 0x14(r29)
/* 8052F1DC  4B D3 87 79 */	bl cM_rndF__Ff
/* 8052F1E0  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 8052F1E4  EC 00 08 2A */	fadds f0, f0, f1
/* 8052F1E8  FC 00 00 1E */	fctiwz f0, f0
/* 8052F1EC  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8052F1F0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8052F1F4  B0 1A 06 26 */	sth r0, 0x626(r26)
/* 8052F1F8  38 00 00 01 */	li r0, 1
/* 8052F1FC  B0 1A 05 B8 */	sth r0, 0x5b8(r26)
/* 8052F200  38 00 00 00 */	li r0, 0
/* 8052F204  98 1A 06 5B */	stb r0, 0x65b(r26)
lbl_8052F208:
/* 8052F208  C0 3D 00 68 */	lfs f1, 0x68(r29)
/* 8052F20C  4B D3 87 81 */	bl cM_rndFX__Ff
/* 8052F210  FC 00 08 1E */	fctiwz f0, f1
/* 8052F214  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8052F218  80 81 00 44 */	lwz r4, 0x44(r1)
/* 8052F21C  A8 7A 05 F4 */	lha r3, 0x5f4(r26)
/* 8052F220  3C 03 00 01 */	addis r0, r3, 1
/* 8052F224  7C 60 22 14 */	add r3, r0, r4
/* 8052F228  38 03 80 00 */	addi r0, r3, -32768
/* 8052F22C  7C 04 07 34 */	extsh r4, r0
/* 8052F230  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8052F234  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8052F238  80 63 00 00 */	lwz r3, 0(r3)
/* 8052F23C  4B AD D1 A1 */	bl mDoMtx_YrotS__FPA4_fs
/* 8052F240  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 8052F244  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8052F248  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8052F24C  C0 3D 00 9C */	lfs f1, 0x9c(r29)
/* 8052F250  4B D3 87 05 */	bl cM_rndF__Ff
/* 8052F254  C0 1D 00 8C */	lfs f0, 0x8c(r29)
/* 8052F258  EC 00 08 2A */	fadds f0, f0, f1
/* 8052F25C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8052F260  38 61 00 30 */	addi r3, r1, 0x30
/* 8052F264  38 9A 05 C0 */	addi r4, r26, 0x5c0
/* 8052F268  4B D4 1C 85 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8052F26C  38 7A 05 C0 */	addi r3, r26, 0x5c0
/* 8052F270  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 8052F274  7C 65 1B 78 */	mr r5, r3
/* 8052F278  4B E1 7E 19 */	bl PSVECAdd
/* 8052F27C  7F 43 D3 78 */	mr r3, r26
/* 8052F280  38 9A 05 C0 */	addi r4, r26, 0x5c0
/* 8052F284  4B FF C7 49 */	bl get_ground_y__FP13mg_fish_classP4cXyz
/* 8052F288  D0 3A 05 DC */	stfs f1, 0x5dc(r26)
/* 8052F28C  C0 1A 05 D8 */	lfs f0, 0x5d8(r26)
/* 8052F290  C3 FA 05 DC */	lfs f31, 0x5dc(r26)
/* 8052F294  EC 20 F8 28 */	fsubs f1, f0, f31
/* 8052F298  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 8052F29C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052F2A0  40 81 02 38 */	ble lbl_8052F4D8
/* 8052F2A4  C0 1D 00 7C */	lfs f0, 0x7c(r29)
/* 8052F2A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052F2AC  40 80 02 2C */	bge lbl_8052F4D8
/* 8052F2B0  88 1A 06 34 */	lbz r0, 0x634(r26)
/* 8052F2B4  28 00 00 03 */	cmplwi r0, 3
/* 8052F2B8  41 82 00 0C */	beq lbl_8052F2C4
/* 8052F2BC  28 00 00 01 */	cmplwi r0, 1
/* 8052F2C0  40 82 00 30 */	bne lbl_8052F2F0
lbl_8052F2C4:
/* 8052F2C4  C3 FA 05 DC */	lfs f31, 0x5dc(r26)
/* 8052F2C8  C0 3D 00 20 */	lfs f1, 0x20(r29)
/* 8052F2CC  4B D3 86 89 */	bl cM_rndF__Ff
/* 8052F2D0  C0 1D 00 80 */	lfs f0, 0x80(r29)
/* 8052F2D4  EC 20 08 2A */	fadds f1, f0, f1
/* 8052F2D8  C0 1A 05 D8 */	lfs f0, 0x5d8(r26)
/* 8052F2DC  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8052F2E0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8052F2E4  EC 1F 00 2A */	fadds f0, f31, f0
/* 8052F2E8  D0 1A 05 C4 */	stfs f0, 0x5c4(r26)
/* 8052F2EC  48 00 00 28 */	b lbl_8052F314
lbl_8052F2F0:
/* 8052F2F0  C0 3D 01 2C */	lfs f1, 0x12c(r29)
/* 8052F2F4  4B D3 86 61 */	bl cM_rndF__Ff
/* 8052F2F8  C0 1D 00 80 */	lfs f0, 0x80(r29)
/* 8052F2FC  EC 20 08 2A */	fadds f1, f0, f1
/* 8052F300  C0 1A 05 D8 */	lfs f0, 0x5d8(r26)
/* 8052F304  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8052F308  EC 00 00 72 */	fmuls f0, f0, f1
/* 8052F30C  EC 1F 00 2A */	fadds f0, f31, f0
/* 8052F310  D0 1A 05 C4 */	stfs f0, 0x5c4(r26)
lbl_8052F314:
/* 8052F314  C0 3D 00 90 */	lfs f1, 0x90(r29)
/* 8052F318  4B D3 86 3D */	bl cM_rndF__Ff
/* 8052F31C  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 8052F320  EC 00 08 2A */	fadds f0, f0, f1
/* 8052F324  FC 00 00 1E */	fctiwz f0, f0
/* 8052F328  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8052F32C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8052F330  B0 1A 06 24 */	sth r0, 0x624(r26)
/* 8052F334  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 8052F338  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8052F33C  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 8052F340  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8052F344  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 8052F348  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8052F34C  38 61 00 24 */	addi r3, r1, 0x24
/* 8052F350  C0 3D 00 24 */	lfs f1, 0x24(r29)
/* 8052F354  C0 1A 05 BC */	lfs f0, 0x5bc(r26)
/* 8052F358  EC 01 00 32 */	fmuls f0, f1, f0
/* 8052F35C  FC 00 00 1E */	fctiwz f0, f0
/* 8052F360  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8052F364  80 81 00 4C */	lwz r4, 0x4c(r1)
/* 8052F368  28 1A 00 00 */	cmplwi r26, 0
/* 8052F36C  41 82 00 0C */	beq lbl_8052F378
/* 8052F370  80 BA 00 04 */	lwz r5, 4(r26)
/* 8052F374  48 00 00 08 */	b lbl_8052F37C
lbl_8052F378:
/* 8052F378  38 A0 FF FF */	li r5, -1
lbl_8052F37C:
/* 8052F37C  38 C0 00 05 */	li r6, 5
/* 8052F380  4B C7 8E 41 */	bl dKy_Sound_set__F4cXyziUii
/* 8052F384  38 00 00 02 */	li r0, 2
/* 8052F388  B0 1A 05 B8 */	sth r0, 0x5b8(r26)
/* 8052F38C  A8 1A 06 26 */	lha r0, 0x626(r26)
/* 8052F390  2C 00 00 00 */	cmpwi r0, 0
/* 8052F394  40 82 00 A0 */	bne lbl_8052F434
/* 8052F398  C0 3A 05 F0 */	lfs f1, 0x5f0(r26)
/* 8052F39C  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8052F3A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052F3A4  40 81 00 90 */	ble lbl_8052F434
/* 8052F3A8  C0 1A 06 60 */	lfs f0, 0x660(r26)
/* 8052F3AC  C0 3D 01 18 */	lfs f1, 0x118(r29)
/* 8052F3B0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8052F3B4  40 81 00 80 */	ble lbl_8052F434
/* 8052F3B8  C3 FD 00 48 */	lfs f31, 0x48(r29)
/* 8052F3BC  88 1A 06 34 */	lbz r0, 0x634(r26)
/* 8052F3C0  28 00 00 00 */	cmplwi r0, 0
/* 8052F3C4  40 82 00 24 */	bne lbl_8052F3E8
/* 8052F3C8  C0 1A 05 BC */	lfs f0, 0x5bc(r26)
/* 8052F3CC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8052F3D0  4C 41 13 82 */	cror 2, 1, 2
/* 8052F3D4  40 82 00 0C */	bne lbl_8052F3E0
/* 8052F3D8  C3 FD 00 5C */	lfs f31, 0x5c(r29)
/* 8052F3DC  48 00 00 30 */	b lbl_8052F40C
lbl_8052F3E0:
/* 8052F3E0  C3 FD 00 A8 */	lfs f31, 0xa8(r29)
/* 8052F3E4  48 00 00 28 */	b lbl_8052F40C
lbl_8052F3E8:
/* 8052F3E8  28 00 00 02 */	cmplwi r0, 2
/* 8052F3EC  41 82 00 0C */	beq lbl_8052F3F8
/* 8052F3F0  28 00 00 04 */	cmplwi r0, 4
/* 8052F3F4  40 82 00 0C */	bne lbl_8052F400
lbl_8052F3F8:
/* 8052F3F8  C3 FD 01 30 */	lfs f31, 0x130(r29)
/* 8052F3FC  48 00 00 10 */	b lbl_8052F40C
lbl_8052F400:
/* 8052F400  28 00 00 01 */	cmplwi r0, 1
/* 8052F404  40 82 00 08 */	bne lbl_8052F40C
/* 8052F408  C3 FD 00 80 */	lfs f31, 0x80(r29)
lbl_8052F40C:
/* 8052F40C  C0 3D 00 00 */	lfs f1, 0(r29)
/* 8052F410  4B D3 85 45 */	bl cM_rndF__Ff
/* 8052F414  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8052F418  40 80 00 1C */	bge lbl_8052F434
/* 8052F41C  38 00 00 35 */	li r0, 0x35
/* 8052F420  B0 1A 05 B6 */	sth r0, 0x5b6(r26)
/* 8052F424  38 00 00 00 */	li r0, 0
/* 8052F428  B0 1A 05 B8 */	sth r0, 0x5b8(r26)
/* 8052F42C  7F 43 D3 78 */	mr r3, r26
/* 8052F430  4B FF AD 91 */	bl mouth_open__FP13mg_fish_class
lbl_8052F434:
/* 8052F434  38 61 00 18 */	addi r3, r1, 0x18
/* 8052F438  38 9A 05 C0 */	addi r4, r26, 0x5c0
/* 8052F43C  38 BA 04 D0 */	addi r5, r26, 0x4d0
/* 8052F440  4B D3 76 F5 */	bl __mi__4cXyzCFRC3Vec
/* 8052F444  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8052F448  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8052F44C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8052F450  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8052F454  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 8052F458  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8052F45C  4B D3 82 19 */	bl cM_atan2s__Fff
/* 8052F460  B0 7A 05 CC */	sth r3, 0x5cc(r26)
/* 8052F464  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8052F468  EC 20 00 32 */	fmuls f1, f0, f0
/* 8052F46C  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8052F470  EC 00 00 32 */	fmuls f0, f0, f0
/* 8052F474  EC 41 00 2A */	fadds f2, f1, f0
/* 8052F478  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 8052F47C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8052F480  40 81 00 0C */	ble lbl_8052F48C
/* 8052F484  FC 00 10 34 */	frsqrte f0, f2
/* 8052F488  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8052F48C:
/* 8052F48C  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 8052F490  4B D3 81 E5 */	bl cM_atan2s__Fff
/* 8052F494  7C 03 00 D0 */	neg r0, r3
/* 8052F498  B0 1A 05 CE */	sth r0, 0x5ce(r26)
/* 8052F49C  A8 1A 06 24 */	lha r0, 0x624(r26)
/* 8052F4A0  2C 00 00 00 */	cmpwi r0, 0
/* 8052F4A4  40 82 00 0C */	bne lbl_8052F4B0
/* 8052F4A8  38 00 00 01 */	li r0, 1
/* 8052F4AC  B0 1A 05 B8 */	sth r0, 0x5b8(r26)
lbl_8052F4B0:
/* 8052F4B0  A8 1A 07 32 */	lha r0, 0x732(r26)
/* 8052F4B4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8052F4B8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8052F4BC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8052F4C0  7C 23 04 2E */	lfsx f1, r3, r0
/* 8052F4C4  C0 1D 01 2C */	lfs f0, 0x12c(r29)
/* 8052F4C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052F4CC  40 81 00 0C */	ble lbl_8052F4D8
/* 8052F4D0  7F 43 D3 78 */	mr r3, r26
/* 8052F4D4  4B FF A8 A9 */	bl hit_vib_set__FP13mg_fish_class
lbl_8052F4D8:
/* 8052F4D8  38 7A 05 2C */	addi r3, r26, 0x52c
/* 8052F4DC  C0 3D 00 58 */	lfs f1, 0x58(r29)
/* 8052F4E0  C0 5D 00 00 */	lfs f2, 0(r29)
/* 8052F4E4  C0 7D 00 5C */	lfs f3, 0x5c(r29)
/* 8052F4E8  4B D4 05 55 */	bl cLib_addCalc2__FPffff
/* 8052F4EC  38 00 08 00 */	li r0, 0x800
/* 8052F4F0  B0 1A 05 D0 */	sth r0, 0x5d0(r26)
/* 8052F4F4  38 7A 04 DE */	addi r3, r26, 0x4de
/* 8052F4F8  A8 9A 05 CC */	lha r4, 0x5cc(r26)
/* 8052F4FC  38 A0 00 02 */	li r5, 2
/* 8052F500  A8 DA 05 D0 */	lha r6, 0x5d0(r26)
/* 8052F504  4B D4 11 05 */	bl cLib_addCalcAngleS2__FPssss
/* 8052F508  38 7A 04 DC */	addi r3, r26, 0x4dc
/* 8052F50C  A8 9A 05 CE */	lha r4, 0x5ce(r26)
/* 8052F510  38 A0 00 02 */	li r5, 2
/* 8052F514  A8 DA 05 D0 */	lha r6, 0x5d0(r26)
/* 8052F518  4B D4 10 F1 */	bl cLib_addCalcAngleS2__FPssss
/* 8052F51C  3C 60 80 53 */	lis r3, l_HIO@ha /* 0x80536BCC@ha */
/* 8052F520  38 63 6B CC */	addi r3, r3, l_HIO@l /* 0x80536BCC@l */
/* 8052F524  88 03 00 19 */	lbz r0, 0x19(r3)
/* 8052F528  28 00 00 00 */	cmplwi r0, 0
/* 8052F52C  41 82 00 08 */	beq lbl_8052F534
/* 8052F530  3B 60 00 01 */	li r27, 1
lbl_8052F534:
/* 8052F534  C0 3A 05 F0 */	lfs f1, 0x5f0(r26)
/* 8052F538  C0 1D 00 8C */	lfs f0, 0x8c(r29)
/* 8052F53C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052F540  40 80 03 18 */	bge lbl_8052F858
/* 8052F544  C0 7A 04 D4 */	lfs f3, 0x4d4(r26)
/* 8052F548  C0 5A 05 D8 */	lfs f2, 0x5d8(r26)
/* 8052F54C  C0 3D 00 6C */	lfs f1, 0x6c(r29)
/* 8052F550  C0 1A 05 BC */	lfs f0, 0x5bc(r26)
/* 8052F554  EC 01 00 32 */	fmuls f0, f1, f0
/* 8052F558  EC 02 00 28 */	fsubs f0, f2, f0
/* 8052F55C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 8052F560  40 81 02 F8 */	ble lbl_8052F858
/* 8052F564  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 8052F568  3B E3 D2 E8 */	addi r31, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 8052F56C  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 8052F570  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8052F574  41 82 00 0C */	beq lbl_8052F580
/* 8052F578  38 00 00 3C */	li r0, 0x3c
/* 8052F57C  B0 1A 06 2C */	sth r0, 0x62c(r26)
lbl_8052F580:
/* 8052F580  A8 1A 06 2C */	lha r0, 0x62c(r26)
/* 8052F584  2C 00 00 00 */	cmpwi r0, 0
/* 8052F588  40 82 02 80 */	bne lbl_8052F808
/* 8052F58C  88 1A 06 35 */	lbz r0, 0x635(r26)
/* 8052F590  28 00 00 03 */	cmplwi r0, 3
/* 8052F594  40 82 00 48 */	bne lbl_8052F5DC
/* 8052F598  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 8052F59C  4B D3 83 B9 */	bl cM_rndF__Ff
/* 8052F5A0  C0 1D 00 6C */	lfs f0, 0x6c(r29)
/* 8052F5A4  EC 00 08 2A */	fadds f0, f0, f1
/* 8052F5A8  FC 00 00 1E */	fctiwz f0, f0
/* 8052F5AC  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8052F5B0  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8052F5B4  B0 1A 06 2C */	sth r0, 0x62c(r26)
/* 8052F5B8  C0 3D 01 0C */	lfs f1, 0x10c(r29)
/* 8052F5BC  4B D3 83 99 */	bl cM_rndF__Ff
/* 8052F5C0  C0 1D 01 0C */	lfs f0, 0x10c(r29)
/* 8052F5C4  EC 00 08 2A */	fadds f0, f0, f1
/* 8052F5C8  FC 00 00 1E */	fctiwz f0, f0
/* 8052F5CC  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8052F5D0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8052F5D4  B0 1A 06 28 */	sth r0, 0x628(r26)
/* 8052F5D8  48 00 02 30 */	b lbl_8052F808
lbl_8052F5DC:
/* 8052F5DC  C0 3A 05 BC */	lfs f1, 0x5bc(r26)
/* 8052F5E0  28 00 00 02 */	cmplwi r0, 2
/* 8052F5E4  40 82 00 0C */	bne lbl_8052F5F0
/* 8052F5E8  C0 1D 01 08 */	lfs f0, 0x108(r29)
/* 8052F5EC  EC 21 00 28 */	fsubs f1, f1, f0
lbl_8052F5F0:
/* 8052F5F0  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 8052F5F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052F5F8  40 80 00 48 */	bge lbl_8052F640
/* 8052F5FC  C0 3D 00 50 */	lfs f1, 0x50(r29)
/* 8052F600  4B D3 83 55 */	bl cM_rndF__Ff
/* 8052F604  C0 1D 00 6C */	lfs f0, 0x6c(r29)
/* 8052F608  EC 00 08 2A */	fadds f0, f0, f1
/* 8052F60C  FC 00 00 1E */	fctiwz f0, f0
/* 8052F610  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8052F614  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8052F618  B0 1A 06 2C */	sth r0, 0x62c(r26)
/* 8052F61C  C0 3D 01 0C */	lfs f1, 0x10c(r29)
/* 8052F620  4B D3 83 35 */	bl cM_rndF__Ff
/* 8052F624  C0 1D 01 0C */	lfs f0, 0x10c(r29)
/* 8052F628  EC 00 08 2A */	fadds f0, f0, f1
/* 8052F62C  FC 00 00 1E */	fctiwz f0, f0
/* 8052F630  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8052F634  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8052F638  B0 1A 06 28 */	sth r0, 0x628(r26)
/* 8052F63C  48 00 01 CC */	b lbl_8052F808
lbl_8052F640:
/* 8052F640  C0 1D 01 34 */	lfs f0, 0x134(r29)
/* 8052F644  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052F648  40 80 00 48 */	bge lbl_8052F690
/* 8052F64C  C0 3D 00 24 */	lfs f1, 0x24(r29)
/* 8052F650  4B D3 83 05 */	bl cM_rndF__Ff
/* 8052F654  C0 1D 00 90 */	lfs f0, 0x90(r29)
/* 8052F658  EC 00 08 2A */	fadds f0, f0, f1
/* 8052F65C  FC 00 00 1E */	fctiwz f0, f0
/* 8052F660  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8052F664  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8052F668  B0 1A 06 2C */	sth r0, 0x62c(r26)
/* 8052F66C  C0 3D 01 0C */	lfs f1, 0x10c(r29)
/* 8052F670  4B D3 82 E5 */	bl cM_rndF__Ff
/* 8052F674  C0 1D 01 38 */	lfs f0, 0x138(r29)
/* 8052F678  EC 00 08 2A */	fadds f0, f0, f1
/* 8052F67C  FC 00 00 1E */	fctiwz f0, f0
/* 8052F680  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8052F684  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8052F688  B0 1A 06 28 */	sth r0, 0x628(r26)
/* 8052F68C  48 00 01 7C */	b lbl_8052F808
lbl_8052F690:
/* 8052F690  C0 1D 01 18 */	lfs f0, 0x118(r29)
/* 8052F694  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052F698  40 80 00 48 */	bge lbl_8052F6E0
/* 8052F69C  C0 3D 00 90 */	lfs f1, 0x90(r29)
/* 8052F6A0  4B D3 82 B5 */	bl cM_rndF__Ff
/* 8052F6A4  C0 1D 00 24 */	lfs f0, 0x24(r29)
/* 8052F6A8  EC 00 08 2A */	fadds f0, f0, f1
/* 8052F6AC  FC 00 00 1E */	fctiwz f0, f0
/* 8052F6B0  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8052F6B4  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8052F6B8  B0 1A 06 2C */	sth r0, 0x62c(r26)
/* 8052F6BC  C0 3D 00 28 */	lfs f1, 0x28(r29)
/* 8052F6C0  4B D3 82 95 */	bl cM_rndF__Ff
/* 8052F6C4  C0 1D 01 14 */	lfs f0, 0x114(r29)
/* 8052F6C8  EC 00 08 2A */	fadds f0, f0, f1
/* 8052F6CC  FC 00 00 1E */	fctiwz f0, f0
/* 8052F6D0  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8052F6D4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8052F6D8  B0 1A 06 28 */	sth r0, 0x628(r26)
/* 8052F6DC  48 00 01 2C */	b lbl_8052F808
lbl_8052F6E0:
/* 8052F6E0  C0 1D 01 3C */	lfs f0, 0x13c(r29)
/* 8052F6E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052F6E8  40 80 00 48 */	bge lbl_8052F730
/* 8052F6EC  C0 3D 01 40 */	lfs f1, 0x140(r29)
/* 8052F6F0  4B D3 82 65 */	bl cM_rndF__Ff
/* 8052F6F4  C0 1D 00 24 */	lfs f0, 0x24(r29)
/* 8052F6F8  EC 00 08 2A */	fadds f0, f0, f1
/* 8052F6FC  FC 00 00 1E */	fctiwz f0, f0
/* 8052F700  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8052F704  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8052F708  B0 1A 06 2C */	sth r0, 0x62c(r26)
/* 8052F70C  C0 3D 01 48 */	lfs f1, 0x148(r29)
/* 8052F710  4B D3 82 45 */	bl cM_rndF__Ff
/* 8052F714  C0 1D 01 44 */	lfs f0, 0x144(r29)
/* 8052F718  EC 00 08 2A */	fadds f0, f0, f1
/* 8052F71C  FC 00 00 1E */	fctiwz f0, f0
/* 8052F720  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8052F724  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8052F728  B0 1A 06 28 */	sth r0, 0x628(r26)
/* 8052F72C  48 00 00 DC */	b lbl_8052F808
lbl_8052F730:
/* 8052F730  40 80 00 48 */	bge lbl_8052F778
/* 8052F734  C0 3D 00 6C */	lfs f1, 0x6c(r29)
/* 8052F738  4B D3 82 1D */	bl cM_rndF__Ff
/* 8052F73C  C0 1D 00 24 */	lfs f0, 0x24(r29)
/* 8052F740  EC 00 08 2A */	fadds f0, f0, f1
/* 8052F744  FC 00 00 1E */	fctiwz f0, f0
/* 8052F748  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8052F74C  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8052F750  B0 1A 06 2C */	sth r0, 0x62c(r26)
/* 8052F754  C0 3D 01 4C */	lfs f1, 0x14c(r29)
/* 8052F758  4B D3 81 FD */	bl cM_rndF__Ff
/* 8052F75C  C0 1D 00 28 */	lfs f0, 0x28(r29)
/* 8052F760  EC 00 08 2A */	fadds f0, f0, f1
/* 8052F764  FC 00 00 1E */	fctiwz f0, f0
/* 8052F768  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8052F76C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8052F770  B0 1A 06 28 */	sth r0, 0x628(r26)
/* 8052F774  48 00 00 94 */	b lbl_8052F808
lbl_8052F778:
/* 8052F778  C0 1D 01 28 */	lfs f0, 0x128(r29)
/* 8052F77C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052F780  40 80 00 48 */	bge lbl_8052F7C8
/* 8052F784  C0 3D 00 6C */	lfs f1, 0x6c(r29)
/* 8052F788  4B D3 81 CD */	bl cM_rndF__Ff
/* 8052F78C  C0 1D 00 90 */	lfs f0, 0x90(r29)
/* 8052F790  EC 00 08 2A */	fadds f0, f0, f1
/* 8052F794  FC 00 00 1E */	fctiwz f0, f0
/* 8052F798  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8052F79C  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8052F7A0  B0 1A 06 2C */	sth r0, 0x62c(r26)
/* 8052F7A4  C0 3D 00 F4 */	lfs f1, 0xf4(r29)
/* 8052F7A8  4B D3 81 AD */	bl cM_rndF__Ff
/* 8052F7AC  C0 1D 01 48 */	lfs f0, 0x148(r29)
/* 8052F7B0  EC 00 08 2A */	fadds f0, f0, f1
/* 8052F7B4  FC 00 00 1E */	fctiwz f0, f0
/* 8052F7B8  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8052F7BC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8052F7C0  B0 1A 06 28 */	sth r0, 0x628(r26)
/* 8052F7C4  48 00 00 44 */	b lbl_8052F808
lbl_8052F7C8:
/* 8052F7C8  C0 3D 00 6C */	lfs f1, 0x6c(r29)
/* 8052F7CC  4B D3 81 89 */	bl cM_rndF__Ff
/* 8052F7D0  C0 1D 00 6C */	lfs f0, 0x6c(r29)
/* 8052F7D4  EC 00 08 2A */	fadds f0, f0, f1
/* 8052F7D8  FC 00 00 1E */	fctiwz f0, f0
/* 8052F7DC  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8052F7E0  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8052F7E4  B0 1A 06 2C */	sth r0, 0x62c(r26)
/* 8052F7E8  C0 3D 01 50 */	lfs f1, 0x150(r29)
/* 8052F7EC  4B D3 81 69 */	bl cM_rndF__Ff
/* 8052F7F0  C0 1D 01 4C */	lfs f0, 0x14c(r29)
/* 8052F7F4  EC 00 08 2A */	fadds f0, f0, f1
/* 8052F7F8  FC 00 00 1E */	fctiwz f0, f0
/* 8052F7FC  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 8052F800  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8052F804  B0 1A 06 28 */	sth r0, 0x628(r26)
lbl_8052F808:
/* 8052F808  88 7A 06 5B */	lbz r3, 0x65b(r26)
/* 8052F80C  38 03 00 01 */	addi r0, r3, 1
/* 8052F810  98 1A 06 5B */	stb r0, 0x65b(r26)
/* 8052F814  88 1A 06 5B */	lbz r0, 0x65b(r26)
/* 8052F818  28 00 00 C8 */	cmplwi r0, 0xc8
/* 8052F81C  40 82 00 14 */	bne lbl_8052F830
/* 8052F820  3B 80 00 02 */	li r28, 2
/* 8052F824  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 8052F828  D0 1E 0F 5C */	stfs f0, 0xf5c(r30)
/* 8052F82C  48 00 00 7C */	b lbl_8052F8A8
lbl_8052F830:
/* 8052F830  A8 1A 06 28 */	lha r0, 0x628(r26)
/* 8052F834  2C 00 00 00 */	cmpwi r0, 0
/* 8052F838  41 82 00 70 */	beq lbl_8052F8A8
/* 8052F83C  38 00 00 01 */	li r0, 1
/* 8052F840  98 1E 10 0F */	stb r0, 0x100f(r30)
/* 8052F844  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 8052F848  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8052F84C  41 82 00 5C */	beq lbl_8052F8A8
/* 8052F850  3B 60 00 01 */	li r27, 1
/* 8052F854  48 00 00 54 */	b lbl_8052F8A8
lbl_8052F858:
/* 8052F858  80 1E 14 F0 */	lwz r0, 0x14f0(r30)
/* 8052F85C  2C 00 00 00 */	cmpwi r0, 0
/* 8052F860  41 82 00 20 */	beq lbl_8052F880
/* 8052F864  88 1E 15 15 */	lbz r0, 0x1515(r30)
/* 8052F868  28 00 00 00 */	cmplwi r0, 0
/* 8052F86C  41 82 00 14 */	beq lbl_8052F880
/* 8052F870  C0 3E 0F 60 */	lfs f1, 0xf60(r30)
/* 8052F874  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 8052F878  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052F87C  40 80 00 14 */	bge lbl_8052F890
lbl_8052F880:
/* 8052F880  88 7A 06 5C */	lbz r3, 0x65c(r26)
/* 8052F884  38 03 00 01 */	addi r0, r3, 1
/* 8052F888  98 1A 06 5C */	stb r0, 0x65c(r26)
/* 8052F88C  48 00 00 0C */	b lbl_8052F898
lbl_8052F890:
/* 8052F890  38 00 00 00 */	li r0, 0
/* 8052F894  98 1A 06 5C */	stb r0, 0x65c(r26)
lbl_8052F898:
/* 8052F898  88 1A 06 5C */	lbz r0, 0x65c(r26)
/* 8052F89C  28 00 00 5A */	cmplwi r0, 0x5a
/* 8052F8A0  40 82 00 08 */	bne lbl_8052F8A8
/* 8052F8A4  3B 80 00 01 */	li r28, 1
lbl_8052F8A8:
/* 8052F8A8  2C 1B 00 00 */	cmpwi r27, 0
/* 8052F8AC  41 82 00 EC */	beq lbl_8052F998
/* 8052F8B0  38 00 00 3C */	li r0, 0x3c
/* 8052F8B4  B0 1A 05 B6 */	sth r0, 0x5b6(r26)
/* 8052F8B8  38 00 00 00 */	li r0, 0
/* 8052F8BC  B0 1A 05 B8 */	sth r0, 0x5b8(r26)
/* 8052F8C0  C0 3D 00 18 */	lfs f1, 0x18(r29)
/* 8052F8C4  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8052F8C8  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8052F8CC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8052F8D0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8052F8D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8052F8D8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8052F8DC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8052F8E0  38 80 00 04 */	li r4, 4
/* 8052F8E4  38 A0 00 01 */	li r5, 1
/* 8052F8E8  38 C1 00 0C */	addi r6, r1, 0xc
/* 8052F8EC  4B B4 01 39 */	bl StartShock__12dVibration_cFii4cXyz
/* 8052F8F0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8052F8F4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8052F8F8  80 63 00 00 */	lwz r3, 0(r3)
/* 8052F8FC  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8052F900  38 80 00 04 */	li r4, 4
/* 8052F904  4B D8 06 89 */	bl changeBgmStatus__8Z2SeqMgrFl
/* 8052F908  38 00 00 06 */	li r0, 6
/* 8052F90C  B0 1E 0F 7E */	sth r0, 0xf7e(r30)
/* 8052F910  38 00 00 0A */	li r0, 0xa
/* 8052F914  B0 1E 13 B4 */	sth r0, 0x13b4(r30)
/* 8052F918  38 00 00 00 */	li r0, 0
/* 8052F91C  B0 1E 13 B6 */	sth r0, 0x13b6(r30)
/* 8052F920  B0 1E 14 C2 */	sth r0, 0x14c2(r30)
/* 8052F924  C0 1D 01 54 */	lfs f0, 0x154(r29)
/* 8052F928  D0 1E 14 08 */	stfs f0, 0x1408(r30)
/* 8052F92C  98 1E 14 6D */	stb r0, 0x146d(r30)
/* 8052F930  B0 1E 10 B0 */	sth r0, 0x10b0(r30)
/* 8052F934  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8052F938  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8052F93C  80 83 5D B4 */	lwz r4, 0x5db4(r3)
/* 8052F940  80 04 05 88 */	lwz r0, 0x588(r4)
/* 8052F944  64 00 00 04 */	oris r0, r0, 4
/* 8052F948  90 04 05 88 */	stw r0, 0x588(r4)
/* 8052F94C  88 1E 0F 80 */	lbz r0, 0xf80(r30)
/* 8052F950  2C 00 00 04 */	cmpwi r0, 4
/* 8052F954  40 82 00 D8 */	bne lbl_8052FA2C
/* 8052F958  3B 43 07 F0 */	addi r26, r3, 0x7f0
/* 8052F95C  7F 43 D3 78 */	mr r3, r26
/* 8052F960  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000F11F@ha */
/* 8052F964  38 84 F1 1F */	addi r4, r4, 0xF11F /* 0x0000F11F@l */
/* 8052F968  4B B0 50 9D */	bl getEventReg__11dSv_event_cCFUs
/* 8052F96C  7C 65 1B 78 */	mr r5, r3
/* 8052F970  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8052F974  28 03 00 1F */	cmplwi r3, 0x1f
/* 8052F978  40 80 00 0C */	bge lbl_8052F984
/* 8052F97C  38 03 00 01 */	addi r0, r3, 1
/* 8052F980  54 05 06 3E */	clrlwi r5, r0, 0x18
lbl_8052F984:
/* 8052F984  7F 43 D3 78 */	mr r3, r26
/* 8052F988  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000F11F@ha */
/* 8052F98C  38 84 F1 1F */	addi r4, r4, 0xF11F /* 0x0000F11F@l */
/* 8052F990  4B B0 50 51 */	bl setEventReg__11dSv_event_cFUsUc
/* 8052F994  48 00 00 98 */	b lbl_8052FA2C
lbl_8052F998:
/* 8052F998  2C 1C 00 00 */	cmpwi r28, 0
/* 8052F99C  41 82 00 90 */	beq lbl_8052FA2C
/* 8052F9A0  2C 1C 00 02 */	cmpwi r28, 2
/* 8052F9A4  40 82 00 38 */	bne lbl_8052F9DC
/* 8052F9A8  38 00 00 03 */	li r0, 3
/* 8052F9AC  98 1E 10 A7 */	stb r0, 0x10a7(r30)
/* 8052F9B0  C0 3D 01 38 */	lfs f1, 0x138(r29)
/* 8052F9B4  4B D3 7F A1 */	bl cM_rndF__Ff
/* 8052F9B8  C0 1D 00 24 */	lfs f0, 0x24(r29)
/* 8052F9BC  EC 00 08 2A */	fadds f0, f0, f1
/* 8052F9C0  FC 00 00 1E */	fctiwz f0, f0
/* 8052F9C4  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8052F9C8  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8052F9CC  B0 1E 05 7E */	sth r0, 0x57e(r30)
/* 8052F9D0  38 00 00 01 */	li r0, 1
/* 8052F9D4  98 1E 10 A6 */	stb r0, 0x10a6(r30)
/* 8052F9D8  48 00 00 1C */	b lbl_8052F9F4
lbl_8052F9DC:
/* 8052F9DC  38 00 00 02 */	li r0, 2
/* 8052F9E0  98 1E 10 A7 */	stb r0, 0x10a7(r30)
/* 8052F9E4  38 00 00 19 */	li r0, 0x19
/* 8052F9E8  98 1E 10 A6 */	stb r0, 0x10a6(r30)
/* 8052F9EC  38 00 00 00 */	li r0, 0
/* 8052F9F0  B0 1E 05 7E */	sth r0, 0x57e(r30)
lbl_8052F9F4:
/* 8052F9F4  38 00 00 02 */	li r0, 2
/* 8052F9F8  B0 1A 05 B6 */	sth r0, 0x5b6(r26)
/* 8052F9FC  38 00 FF FF */	li r0, -1
/* 8052FA00  B0 1A 05 B8 */	sth r0, 0x5b8(r26)
/* 8052FA04  38 00 00 00 */	li r0, 0
/* 8052FA08  98 1A 06 58 */	stb r0, 0x658(r26)
/* 8052FA0C  C0 3D 00 74 */	lfs f1, 0x74(r29)
/* 8052FA10  4B D3 7F 45 */	bl cM_rndF__Ff
/* 8052FA14  C0 1D 01 58 */	lfs f0, 0x158(r29)
/* 8052FA18  EC 00 08 2A */	fadds f0, f0, f1
/* 8052FA1C  FC 00 00 1E */	fctiwz f0, f0
/* 8052FA20  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8052FA24  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 8052FA28  B0 1A 06 2E */	sth r0, 0x62e(r26)
lbl_8052FA2C:
/* 8052FA2C  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 8052FA30  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8052FA34  39 61 00 70 */	addi r11, r1, 0x70
/* 8052FA38  4B E3 27 E5 */	bl _restgpr_26
/* 8052FA3C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8052FA40  7C 08 03 A6 */	mtlr r0
/* 8052FA44  38 21 00 80 */	addi r1, r1, 0x80
/* 8052FA48  4E 80 00 20 */	blr 
