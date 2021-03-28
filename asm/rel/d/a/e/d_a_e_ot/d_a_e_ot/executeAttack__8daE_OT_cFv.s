lbl_8073B0D0:
/* 8073B0D0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8073B0D4  7C 08 02 A6 */	mflr r0
/* 8073B0D8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8073B0DC  39 61 00 30 */	addi r11, r1, 0x30
/* 8073B0E0  4B C2 70 F8 */	b _savegpr_28
/* 8073B0E4  7C 7D 1B 78 */	mr r29, r3
/* 8073B0E8  3C 80 80 74 */	lis r4, cNullVec__6Z2Calc@ha
/* 8073B0EC  3B C4 CF 74 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 8073B0F0  3C 80 80 74 */	lis r4, lit_3910@ha
/* 8073B0F4  3B E4 CE A8 */	addi r31, r4, lit_3910@l
/* 8073B0F8  88 03 06 92 */	lbz r0, 0x692(r3)
/* 8073B0FC  28 00 00 00 */	cmplwi r0, 0
/* 8073B100  41 82 00 1C */	beq lbl_8073B11C
/* 8073B104  80 9D 06 70 */	lwz r4, 0x670(r29)
/* 8073B108  88 04 07 82 */	lbz r0, 0x782(r4)
/* 8073B10C  28 00 00 00 */	cmplwi r0, 0
/* 8073B110  41 82 00 0C */	beq lbl_8073B11C
/* 8073B114  4B 8D EB 68 */	b fopAcM_delete__FP10fopAc_ac_c
/* 8073B118  48 00 02 F8 */	b lbl_8073B410
lbl_8073B11C:
/* 8073B11C  80 7D 06 70 */	lwz r3, 0x670(r29)
/* 8073B120  88 03 07 76 */	lbz r0, 0x776(r3)
/* 8073B124  28 00 00 00 */	cmplwi r0, 0
/* 8073B128  40 82 00 10 */	bne lbl_8073B138
/* 8073B12C  88 03 07 79 */	lbz r0, 0x779(r3)
/* 8073B130  28 00 00 00 */	cmplwi r0, 0
/* 8073B134  41 82 00 1C */	beq lbl_8073B150
lbl_8073B138:
/* 8073B138  80 1D 0A 24 */	lwz r0, 0xa24(r29)
/* 8073B13C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8073B140  90 1D 0A 24 */	stw r0, 0xa24(r29)
/* 8073B144  38 00 00 00 */	li r0, 0
/* 8073B148  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 8073B14C  48 00 00 10 */	b lbl_8073B15C
lbl_8073B150:
/* 8073B150  80 1D 0A 24 */	lwz r0, 0xa24(r29)
/* 8073B154  60 00 00 01 */	ori r0, r0, 1
/* 8073B158  90 1D 0A 24 */	stw r0, 0xa24(r29)
lbl_8073B15C:
/* 8073B15C  80 1D 06 78 */	lwz r0, 0x678(r29)
/* 8073B160  2C 00 00 01 */	cmpwi r0, 1
/* 8073B164  41 82 00 68 */	beq lbl_8073B1CC
/* 8073B168  40 80 00 10 */	bge lbl_8073B178
/* 8073B16C  2C 00 00 00 */	cmpwi r0, 0
/* 8073B170  40 80 00 14 */	bge lbl_8073B184
/* 8073B174  48 00 02 94 */	b lbl_8073B408
lbl_8073B178:
/* 8073B178  2C 00 00 0A */	cmpwi r0, 0xa
/* 8073B17C  41 82 00 20 */	beq lbl_8073B19C
/* 8073B180  48 00 02 88 */	b lbl_8073B408
lbl_8073B184:
/* 8073B184  7F A3 EB 78 */	mr r3, r29
/* 8073B188  38 80 00 08 */	li r4, 8
/* 8073B18C  38 A0 00 02 */	li r5, 2
/* 8073B190  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 8073B194  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8073B198  4B FF F2 BD */	bl setBck__8daE_OT_cFiUcff
lbl_8073B19C:
/* 8073B19C  38 00 00 01 */	li r0, 1
/* 8073B1A0  90 1D 06 78 */	stw r0, 0x678(r29)
/* 8073B1A4  38 00 00 00 */	li r0, 0
/* 8073B1A8  98 1D 06 94 */	stb r0, 0x694(r29)
/* 8073B1AC  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 8073B1B0  4B B2 C7 DC */	b cM_rndFX__Ff
/* 8073B1B4  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 8073B1B8  EC 00 08 2A */	fadds f0, f0, f1
/* 8073B1BC  FC 00 00 1E */	fctiwz f0, f0
/* 8073B1C0  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8073B1C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8073B1C8  98 1D 06 95 */	stb r0, 0x695(r29)
lbl_8073B1CC:
/* 8073B1CC  88 1D 06 95 */	lbz r0, 0x695(r29)
/* 8073B1D0  28 00 00 00 */	cmplwi r0, 0
/* 8073B1D4  40 82 00 24 */	bne lbl_8073B1F8
/* 8073B1D8  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 8073B1DC  4B B2 C7 B0 */	b cM_rndFX__Ff
/* 8073B1E0  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 8073B1E4  EC 00 08 2A */	fadds f0, f0, f1
/* 8073B1E8  FC 00 00 1E */	fctiwz f0, f0
/* 8073B1EC  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8073B1F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8073B1F4  98 1D 06 95 */	stb r0, 0x695(r29)
lbl_8073B1F8:
/* 8073B1F8  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 8073B1FC  38 63 00 0C */	addi r3, r3, 0xc
/* 8073B200  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8073B204  4B BE D2 28 */	b checkPass__12J3DFrameCtrlFf
/* 8073B208  2C 03 00 00 */	cmpwi r3, 0
/* 8073B20C  41 82 00 30 */	beq lbl_8073B23C
/* 8073B210  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070237@ha */
/* 8073B214  38 03 02 37 */	addi r0, r3, 0x0237 /* 0x00070237@l */
/* 8073B218  90 01 00 08 */	stw r0, 8(r1)
/* 8073B21C  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 8073B220  38 81 00 08 */	addi r4, r1, 8
/* 8073B224  38 A0 00 00 */	li r5, 0
/* 8073B228  38 C0 FF FF */	li r6, -1
/* 8073B22C  81 9D 05 C0 */	lwz r12, 0x5c0(r29)
/* 8073B230  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8073B234  7D 89 03 A6 */	mtctr r12
/* 8073B238  4E 80 04 21 */	bctrl 
lbl_8073B23C:
/* 8073B23C  38 7D 05 2C */	addi r3, r29, 0x52c
/* 8073B240  3C 80 80 74 */	lis r4, l_HIO@ha
/* 8073B244  38 84 D2 BC */	addi r4, r4, l_HIO@l
/* 8073B248  C0 24 00 08 */	lfs f1, 8(r4)
/* 8073B24C  80 1D 06 8C */	lwz r0, 0x68c(r29)
/* 8073B250  54 00 17 3A */	rlwinm r0, r0, 2, 0x1c, 0x1d
/* 8073B254  38 9E 00 38 */	addi r4, r30, 0x38
/* 8073B258  7C 04 04 2E */	lfsx f0, r4, r0
/* 8073B25C  EC 21 00 2A */	fadds f1, f1, f0
/* 8073B260  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 8073B264  4B B3 54 DC */	b cLib_chaseF__FPfff
/* 8073B268  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 8073B26C  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8073B270  EC 01 00 24 */	fdivs f0, f1, f0
/* 8073B274  80 7D 05 B4 */	lwz r3, 0x5b4(r29)
/* 8073B278  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8073B27C  80 7D 06 70 */	lwz r3, 0x670(r29)
/* 8073B280  88 03 07 79 */	lbz r0, 0x779(r3)
/* 8073B284  28 00 00 00 */	cmplwi r0, 0
/* 8073B288  41 82 00 90 */	beq lbl_8073B318
/* 8073B28C  88 1D 06 94 */	lbz r0, 0x694(r29)
/* 8073B290  28 00 00 00 */	cmplwi r0, 0
/* 8073B294  40 82 00 68 */	bne lbl_8073B2FC
/* 8073B298  7F A3 EB 78 */	mr r3, r29
/* 8073B29C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8073B2A0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8073B2A4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8073B2A8  4B 8D F4 68 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8073B2AC  7C 7C 1B 78 */	mr r28, r3
/* 8073B2B0  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 8073B2B4  4B B2 C6 D8 */	b cM_rndFX__Ff
/* 8073B2B8  7F 83 07 34 */	extsh r3, r28
/* 8073B2BC  3C 63 00 01 */	addis r3, r3, 1
/* 8073B2C0  38 03 80 00 */	addi r0, r3, -32768
/* 8073B2C4  C8 5F 00 80 */	lfd f2, 0x80(r31)
/* 8073B2C8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8073B2CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8073B2D0  3C 00 43 30 */	lis r0, 0x4330
/* 8073B2D4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8073B2D8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8073B2DC  EC 00 10 28 */	fsubs f0, f0, f2
/* 8073B2E0  EC 00 08 2A */	fadds f0, f0, f1
/* 8073B2E4  FC 00 00 1E */	fctiwz f0, f0
/* 8073B2E8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8073B2EC  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8073B2F0  B0 1D 06 90 */	sth r0, 0x690(r29)
/* 8073B2F4  38 00 00 1E */	li r0, 0x1e
/* 8073B2F8  98 1D 06 94 */	stb r0, 0x694(r29)
lbl_8073B2FC:
/* 8073B2FC  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 8073B300  A8 9D 06 90 */	lha r4, 0x690(r29)
/* 8073B304  38 A0 00 10 */	li r5, 0x10
/* 8073B308  38 C0 08 00 */	li r6, 0x800
/* 8073B30C  38 E0 01 00 */	li r7, 0x100
/* 8073B310  4B B3 52 30 */	b cLib_addCalcAngleS__FPsssss
/* 8073B314  48 00 00 F4 */	b lbl_8073B408
lbl_8073B318:
/* 8073B318  88 1D 06 95 */	lbz r0, 0x695(r29)
/* 8073B31C  28 00 00 1E */	cmplwi r0, 0x1e
/* 8073B320  40 81 00 A4 */	ble lbl_8073B3C4
/* 8073B324  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8073B328  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 8073B32C  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 8073B330  A8 04 05 6C */	lha r0, 0x56c(r4)
/* 8073B334  7C 00 07 35 */	extsh. r0, r0
/* 8073B338  41 82 00 18 */	beq lbl_8073B350
/* 8073B33C  7F A3 EB 78 */	mr r3, r29
/* 8073B340  4B 8D F4 A0 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8073B344  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8073B348  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8073B34C  40 81 00 78 */	ble lbl_8073B3C4
lbl_8073B350:
/* 8073B350  88 1D 06 92 */	lbz r0, 0x692(r29)
/* 8073B354  28 00 00 01 */	cmplwi r0, 1
/* 8073B358  40 82 00 2C */	bne lbl_8073B384
/* 8073B35C  7F A3 EB 78 */	mr r3, r29
/* 8073B360  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 8073B364  4B 8D F3 AC */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8073B368  7C 64 1B 78 */	mr r4, r3
/* 8073B36C  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 8073B370  38 A0 00 0C */	li r5, 0xc
/* 8073B374  38 C0 08 00 */	li r6, 0x800
/* 8073B378  38 E0 01 00 */	li r7, 0x100
/* 8073B37C  4B B3 51 C4 */	b cLib_addCalcAngleS__FPsssss
/* 8073B380  48 00 00 88 */	b lbl_8073B408
lbl_8073B384:
/* 8073B384  7F A3 EB 78 */	mr r3, r29
/* 8073B388  80 9C 5D AC */	lwz r4, 0x5dac(r28)
/* 8073B38C  4B 8D F3 84 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8073B390  7C 65 1B 78 */	mr r5, r3
/* 8073B394  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 8073B398  80 1D 06 8C */	lwz r0, 0x68c(r29)
/* 8073B39C  54 00 FF 7C */	rlwinm r0, r0, 0x1f, 0x1d, 0x1e
/* 8073B3A0  38 9E 00 48 */	addi r4, r30, 0x48
/* 8073B3A4  7C 04 02 AE */	lhax r0, r4, r0
/* 8073B3A8  7C 00 2A 14 */	add r0, r0, r5
/* 8073B3AC  7C 04 07 34 */	extsh r4, r0
/* 8073B3B0  38 A0 00 0C */	li r5, 0xc
/* 8073B3B4  38 C0 08 00 */	li r6, 0x800
/* 8073B3B8  38 E0 01 00 */	li r7, 0x100
/* 8073B3BC  4B B3 51 84 */	b cLib_addCalcAngleS__FPsssss
/* 8073B3C0  48 00 00 48 */	b lbl_8073B408
lbl_8073B3C4:
/* 8073B3C4  7F A3 EB 78 */	mr r3, r29
/* 8073B3C8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8073B3CC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8073B3D0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8073B3D4  4B 8D F3 3C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8073B3D8  7C 65 1B 78 */	mr r5, r3
/* 8073B3DC  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 8073B3E0  80 1D 06 8C */	lwz r0, 0x68c(r29)
/* 8073B3E4  54 00 FF 7C */	rlwinm r0, r0, 0x1f, 0x1d, 0x1e
/* 8073B3E8  38 9E 00 50 */	addi r4, r30, 0x50
/* 8073B3EC  7C 04 02 AE */	lhax r0, r4, r0
/* 8073B3F0  7C 00 2A 14 */	add r0, r0, r5
/* 8073B3F4  7C 04 07 34 */	extsh r4, r0
/* 8073B3F8  38 A0 00 10 */	li r5, 0x10
/* 8073B3FC  38 C0 08 00 */	li r6, 0x800
/* 8073B400  38 E0 01 00 */	li r7, 0x100
/* 8073B404  4B B3 51 3C */	b cLib_addCalcAngleS__FPsssss
lbl_8073B408:
/* 8073B408  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8073B40C  B0 1D 04 DE */	sth r0, 0x4de(r29)
lbl_8073B410:
/* 8073B410  39 61 00 30 */	addi r11, r1, 0x30
/* 8073B414  4B C2 6E 10 */	b _restgpr_28
/* 8073B418  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8073B41C  7C 08 03 A6 */	mtlr r0
/* 8073B420  38 21 00 30 */	addi r1, r1, 0x30
/* 8073B424  4E 80 00 20 */	blr 
