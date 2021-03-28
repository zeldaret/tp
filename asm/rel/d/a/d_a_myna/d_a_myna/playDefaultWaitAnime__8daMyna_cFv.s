lbl_8094A098:
/* 8094A098  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 8094A09C  7C 08 02 A6 */	mflr r0
/* 8094A0A0  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8094A0A4  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 8094A0A8  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 8094A0AC  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8094A0B0  4B A1 81 2C */	b _savegpr_29
/* 8094A0B4  7C 7E 1B 78 */	mr r30, r3
/* 8094A0B8  3C 80 80 95 */	lis r4, mCcDSph__8daMyna_c@ha
/* 8094A0BC  3B E4 B1 B0 */	addi r31, r4, mCcDSph__8daMyna_c@l
/* 8094A0C0  88 03 09 35 */	lbz r0, 0x935(r3)
/* 8094A0C4  2C 00 00 05 */	cmpwi r0, 5
/* 8094A0C8  41 82 03 30 */	beq lbl_8094A3F8
/* 8094A0CC  40 80 00 18 */	bge lbl_8094A0E4
/* 8094A0D0  2C 00 00 04 */	cmpwi r0, 4
/* 8094A0D4  40 80 05 14 */	bge lbl_8094A5E8
/* 8094A0D8  2C 00 00 02 */	cmpwi r0, 2
/* 8094A0DC  40 80 00 14 */	bge lbl_8094A0F0
/* 8094A0E0  48 00 05 08 */	b lbl_8094A5E8
lbl_8094A0E4:
/* 8094A0E4  2C 00 00 07 */	cmpwi r0, 7
/* 8094A0E8  40 80 05 00 */	bge lbl_8094A5E8
/* 8094A0EC  48 00 00 20 */	b lbl_8094A10C
lbl_8094A0F0:
/* 8094A0F0  A0 1E 09 1E */	lhz r0, 0x91e(r30)
/* 8094A0F4  28 00 00 00 */	cmplwi r0, 0
/* 8094A0F8  41 82 04 F0 */	beq lbl_8094A5E8
/* 8094A0FC  38 80 00 01 */	li r4, 1
/* 8094A100  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8094A104  4B FF FF 51 */	bl setAnimeType__8daMyna_cFUcf
/* 8094A108  48 00 04 E0 */	b lbl_8094A5E8
lbl_8094A10C:
/* 8094A10C  3C 60 80 95 */	lis r3, daMyna_LightActor@ha
/* 8094A110  38 63 BA C0 */	addi r3, r3, daMyna_LightActor@l
/* 8094A114  80 63 00 00 */	lwz r3, 0(r3)
/* 8094A118  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8094A11C  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8094A120  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 8094A124  D0 01 00 A8 */	stfs f0, 0xa8(r1)
/* 8094A128  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8094A12C  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8094A130  38 61 00 38 */	addi r3, r1, 0x38
/* 8094A134  38 81 00 A4 */	addi r4, r1, 0xa4
/* 8094A138  38 BE 04 A8 */	addi r5, r30, 0x4a8
/* 8094A13C  4B 91 C9 F8 */	b __mi__4cXyzCFRC3Vec
/* 8094A140  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 8094A144  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 8094A148  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8094A14C  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8094A150  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 8094A154  D0 41 00 88 */	stfs f2, 0x88(r1)
/* 8094A158  4B 91 D5 1C */	b cM_atan2s__Fff
/* 8094A15C  7C 7D 1B 78 */	mr r29, r3
/* 8094A160  38 61 00 80 */	addi r3, r1, 0x80
/* 8094A164  4B 9F CF D4 */	b PSVECSquareMag
/* 8094A168  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8094A16C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094A170  40 81 00 58 */	ble lbl_8094A1C8
/* 8094A174  FC 00 08 34 */	frsqrte f0, f1
/* 8094A178  C8 9F 00 60 */	lfd f4, 0x60(r31)
/* 8094A17C  FC 44 00 32 */	fmul f2, f4, f0
/* 8094A180  C8 7F 00 68 */	lfd f3, 0x68(r31)
/* 8094A184  FC 00 00 32 */	fmul f0, f0, f0
/* 8094A188  FC 01 00 32 */	fmul f0, f1, f0
/* 8094A18C  FC 03 00 28 */	fsub f0, f3, f0
/* 8094A190  FC 02 00 32 */	fmul f0, f2, f0
/* 8094A194  FC 44 00 32 */	fmul f2, f4, f0
/* 8094A198  FC 00 00 32 */	fmul f0, f0, f0
/* 8094A19C  FC 01 00 32 */	fmul f0, f1, f0
/* 8094A1A0  FC 03 00 28 */	fsub f0, f3, f0
/* 8094A1A4  FC 02 00 32 */	fmul f0, f2, f0
/* 8094A1A8  FC 44 00 32 */	fmul f2, f4, f0
/* 8094A1AC  FC 00 00 32 */	fmul f0, f0, f0
/* 8094A1B0  FC 01 00 32 */	fmul f0, f1, f0
/* 8094A1B4  FC 03 00 28 */	fsub f0, f3, f0
/* 8094A1B8  FC 02 00 32 */	fmul f0, f2, f0
/* 8094A1BC  FC 21 00 32 */	fmul f1, f1, f0
/* 8094A1C0  FC 20 08 18 */	frsp f1, f1
/* 8094A1C4  48 00 00 88 */	b lbl_8094A24C
lbl_8094A1C8:
/* 8094A1C8  C8 1F 00 70 */	lfd f0, 0x70(r31)
/* 8094A1CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094A1D0  40 80 00 10 */	bge lbl_8094A1E0
/* 8094A1D4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8094A1D8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8094A1DC  48 00 00 70 */	b lbl_8094A24C
lbl_8094A1E0:
/* 8094A1E0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8094A1E4  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8094A1E8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8094A1EC  3C 00 7F 80 */	lis r0, 0x7f80
/* 8094A1F0  7C 03 00 00 */	cmpw r3, r0
/* 8094A1F4  41 82 00 14 */	beq lbl_8094A208
/* 8094A1F8  40 80 00 40 */	bge lbl_8094A238
/* 8094A1FC  2C 03 00 00 */	cmpwi r3, 0
/* 8094A200  41 82 00 20 */	beq lbl_8094A220
/* 8094A204  48 00 00 34 */	b lbl_8094A238
lbl_8094A208:
/* 8094A208  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8094A20C  41 82 00 0C */	beq lbl_8094A218
/* 8094A210  38 00 00 01 */	li r0, 1
/* 8094A214  48 00 00 28 */	b lbl_8094A23C
lbl_8094A218:
/* 8094A218  38 00 00 02 */	li r0, 2
/* 8094A21C  48 00 00 20 */	b lbl_8094A23C
lbl_8094A220:
/* 8094A220  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8094A224  41 82 00 0C */	beq lbl_8094A230
/* 8094A228  38 00 00 05 */	li r0, 5
/* 8094A22C  48 00 00 10 */	b lbl_8094A23C
lbl_8094A230:
/* 8094A230  38 00 00 03 */	li r0, 3
/* 8094A234  48 00 00 08 */	b lbl_8094A23C
lbl_8094A238:
/* 8094A238  38 00 00 04 */	li r0, 4
lbl_8094A23C:
/* 8094A23C  2C 00 00 01 */	cmpwi r0, 1
/* 8094A240  40 82 00 0C */	bne lbl_8094A24C
/* 8094A244  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8094A248  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8094A24C:
/* 8094A24C  C0 1E 09 10 */	lfs f0, 0x910(r30)
/* 8094A250  EF E0 00 72 */	fmuls f31, f0, f1
/* 8094A254  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 8094A258  C0 3E 08 30 */	lfs f1, 0x830(r30)
/* 8094A25C  C0 1E 08 48 */	lfs f0, 0x848(r30)
/* 8094A260  EC 41 00 28 */	fsubs f2, f1, f0
/* 8094A264  C0 3E 08 3C */	lfs f1, 0x83c(r30)
/* 8094A268  C0 1E 08 54 */	lfs f0, 0x854(r30)
/* 8094A26C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8094A270  EC 02 00 2A */	fadds f0, f2, f0
/* 8094A274  EC 43 00 32 */	fmuls f2, f3, f0
/* 8094A278  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8094A27C  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 8094A280  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8094A284  3C 60 80 95 */	lis r3, l_HOSTIO@ha
/* 8094A288  38 63 BA 3C */	addi r3, r3, l_HOSTIO@l
/* 8094A28C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8094A290  EC 02 00 B2 */	fmuls f0, f2, f2
/* 8094A294  EC 01 00 32 */	fmuls f0, f1, f0
/* 8094A298  D0 01 00 A0 */	stfs f0, 0xa0(r1)
/* 8094A29C  38 61 00 8C */	addi r3, r1, 0x8c
/* 8094A2A0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8094A2A4  7F A5 EB 78 */	mr r5, r29
/* 8094A2A8  38 C1 00 98 */	addi r6, r1, 0x98
/* 8094A2AC  4B 92 6B 14 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 8094A2B0  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 8094A2B4  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8094A2B8  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 8094A2BC  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8094A2C0  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 8094A2C4  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 8094A2C8  38 61 00 2C */	addi r3, r1, 0x2c
/* 8094A2CC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8094A2D0  38 BE 04 A8 */	addi r5, r30, 0x4a8
/* 8094A2D4  4B 91 C8 60 */	b __mi__4cXyzCFRC3Vec
/* 8094A2D8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8094A2DC  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8094A2E0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8094A2E4  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8094A2E8  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8094A2EC  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8094A2F0  38 61 00 74 */	addi r3, r1, 0x74
/* 8094A2F4  4B 9F CE 44 */	b PSVECSquareMag
/* 8094A2F8  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8094A2FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094A300  40 81 00 58 */	ble lbl_8094A358
/* 8094A304  FC 00 08 34 */	frsqrte f0, f1
/* 8094A308  C8 9F 00 60 */	lfd f4, 0x60(r31)
/* 8094A30C  FC 44 00 32 */	fmul f2, f4, f0
/* 8094A310  C8 7F 00 68 */	lfd f3, 0x68(r31)
/* 8094A314  FC 00 00 32 */	fmul f0, f0, f0
/* 8094A318  FC 01 00 32 */	fmul f0, f1, f0
/* 8094A31C  FC 03 00 28 */	fsub f0, f3, f0
/* 8094A320  FC 02 00 32 */	fmul f0, f2, f0
/* 8094A324  FC 44 00 32 */	fmul f2, f4, f0
/* 8094A328  FC 00 00 32 */	fmul f0, f0, f0
/* 8094A32C  FC 01 00 32 */	fmul f0, f1, f0
/* 8094A330  FC 03 00 28 */	fsub f0, f3, f0
/* 8094A334  FC 02 00 32 */	fmul f0, f2, f0
/* 8094A338  FC 44 00 32 */	fmul f2, f4, f0
/* 8094A33C  FC 00 00 32 */	fmul f0, f0, f0
/* 8094A340  FC 01 00 32 */	fmul f0, f1, f0
/* 8094A344  FC 03 00 28 */	fsub f0, f3, f0
/* 8094A348  FC 02 00 32 */	fmul f0, f2, f0
/* 8094A34C  FC 21 00 32 */	fmul f1, f1, f0
/* 8094A350  FC 20 08 18 */	frsp f1, f1
/* 8094A354  48 00 00 88 */	b lbl_8094A3DC
lbl_8094A358:
/* 8094A358  C8 1F 00 70 */	lfd f0, 0x70(r31)
/* 8094A35C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094A360  40 80 00 10 */	bge lbl_8094A370
/* 8094A364  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8094A368  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8094A36C  48 00 00 70 */	b lbl_8094A3DC
lbl_8094A370:
/* 8094A370  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8094A374  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8094A378  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8094A37C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8094A380  7C 03 00 00 */	cmpw r3, r0
/* 8094A384  41 82 00 14 */	beq lbl_8094A398
/* 8094A388  40 80 00 40 */	bge lbl_8094A3C8
/* 8094A38C  2C 03 00 00 */	cmpwi r3, 0
/* 8094A390  41 82 00 20 */	beq lbl_8094A3B0
/* 8094A394  48 00 00 34 */	b lbl_8094A3C8
lbl_8094A398:
/* 8094A398  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8094A39C  41 82 00 0C */	beq lbl_8094A3A8
/* 8094A3A0  38 00 00 01 */	li r0, 1
/* 8094A3A4  48 00 00 28 */	b lbl_8094A3CC
lbl_8094A3A8:
/* 8094A3A8  38 00 00 02 */	li r0, 2
/* 8094A3AC  48 00 00 20 */	b lbl_8094A3CC
lbl_8094A3B0:
/* 8094A3B0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8094A3B4  41 82 00 0C */	beq lbl_8094A3C0
/* 8094A3B8  38 00 00 05 */	li r0, 5
/* 8094A3BC  48 00 00 10 */	b lbl_8094A3CC
lbl_8094A3C0:
/* 8094A3C0  38 00 00 03 */	li r0, 3
/* 8094A3C4  48 00 00 08 */	b lbl_8094A3CC
lbl_8094A3C8:
/* 8094A3C8  38 00 00 04 */	li r0, 4
lbl_8094A3CC:
/* 8094A3CC  2C 00 00 01 */	cmpwi r0, 1
/* 8094A3D0  40 82 00 0C */	bne lbl_8094A3DC
/* 8094A3D4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8094A3D8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8094A3DC:
/* 8094A3DC  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8094A3E0  40 81 02 08 */	ble lbl_8094A5E8
/* 8094A3E4  7F C3 F3 78 */	mr r3, r30
/* 8094A3E8  38 80 00 01 */	li r4, 1
/* 8094A3EC  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 8094A3F0  4B FF FC 65 */	bl setAnimeType__8daMyna_cFUcf
/* 8094A3F4  48 00 01 F4 */	b lbl_8094A5E8
lbl_8094A3F8:
/* 8094A3F8  38 61 00 20 */	addi r3, r1, 0x20
/* 8094A3FC  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 8094A400  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8094A404  4B 91 C7 30 */	b __mi__4cXyzCFRC3Vec
/* 8094A408  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 8094A40C  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 8094A410  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8094A414  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8094A418  C0 41 00 28 */	lfs f2, 0x28(r1)
/* 8094A41C  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 8094A420  4B 91 D2 54 */	b cM_atan2s__Fff
/* 8094A424  7C 65 1B 78 */	mr r5, r3
/* 8094A428  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 8094A42C  C0 3E 08 30 */	lfs f1, 0x830(r30)
/* 8094A430  C0 1E 08 48 */	lfs f0, 0x848(r30)
/* 8094A434  EC 41 00 28 */	fsubs f2, f1, f0
/* 8094A438  C0 3E 08 3C */	lfs f1, 0x83c(r30)
/* 8094A43C  C0 1E 08 54 */	lfs f0, 0x854(r30)
/* 8094A440  EC 01 00 28 */	fsubs f0, f1, f0
/* 8094A444  EC 02 00 2A */	fadds f0, f2, f0
/* 8094A448  EC 43 00 32 */	fmuls f2, f3, f0
/* 8094A44C  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8094A450  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8094A454  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8094A458  3C 60 80 95 */	lis r3, l_HOSTIO@ha
/* 8094A45C  38 63 BA 3C */	addi r3, r3, l_HOSTIO@l
/* 8094A460  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 8094A464  EC 02 00 B2 */	fmuls f0, f2, f2
/* 8094A468  EC 01 00 32 */	fmuls f0, f1, f0
/* 8094A46C  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8094A470  38 61 00 5C */	addi r3, r1, 0x5c
/* 8094A474  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8094A478  38 C1 00 68 */	addi r6, r1, 0x68
/* 8094A47C  4B 92 69 44 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 8094A480  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8094A484  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8094A488  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 8094A48C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8094A490  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 8094A494  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 8094A498  38 61 00 14 */	addi r3, r1, 0x14
/* 8094A49C  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 8094A4A0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8094A4A4  4B 91 C6 90 */	b __mi__4cXyzCFRC3Vec
/* 8094A4A8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8094A4AC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8094A4B0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8094A4B4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8094A4B8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8094A4BC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8094A4C0  38 61 00 44 */	addi r3, r1, 0x44
/* 8094A4C4  4B 9F CC 74 */	b PSVECSquareMag
/* 8094A4C8  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 8094A4CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094A4D0  40 81 00 58 */	ble lbl_8094A528
/* 8094A4D4  FC 00 08 34 */	frsqrte f0, f1
/* 8094A4D8  C8 9F 00 60 */	lfd f4, 0x60(r31)
/* 8094A4DC  FC 44 00 32 */	fmul f2, f4, f0
/* 8094A4E0  C8 7F 00 68 */	lfd f3, 0x68(r31)
/* 8094A4E4  FC 00 00 32 */	fmul f0, f0, f0
/* 8094A4E8  FC 01 00 32 */	fmul f0, f1, f0
/* 8094A4EC  FC 03 00 28 */	fsub f0, f3, f0
/* 8094A4F0  FC 02 00 32 */	fmul f0, f2, f0
/* 8094A4F4  FC 44 00 32 */	fmul f2, f4, f0
/* 8094A4F8  FC 00 00 32 */	fmul f0, f0, f0
/* 8094A4FC  FC 01 00 32 */	fmul f0, f1, f0
/* 8094A500  FC 03 00 28 */	fsub f0, f3, f0
/* 8094A504  FC 02 00 32 */	fmul f0, f2, f0
/* 8094A508  FC 44 00 32 */	fmul f2, f4, f0
/* 8094A50C  FC 00 00 32 */	fmul f0, f0, f0
/* 8094A510  FC 01 00 32 */	fmul f0, f1, f0
/* 8094A514  FC 03 00 28 */	fsub f0, f3, f0
/* 8094A518  FC 02 00 32 */	fmul f0, f2, f0
/* 8094A51C  FC 21 00 32 */	fmul f1, f1, f0
/* 8094A520  FC 20 08 18 */	frsp f1, f1
/* 8094A524  48 00 00 88 */	b lbl_8094A5AC
lbl_8094A528:
/* 8094A528  C8 1F 00 70 */	lfd f0, 0x70(r31)
/* 8094A52C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094A530  40 80 00 10 */	bge lbl_8094A540
/* 8094A534  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8094A538  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8094A53C  48 00 00 70 */	b lbl_8094A5AC
lbl_8094A540:
/* 8094A540  D0 21 00 08 */	stfs f1, 8(r1)
/* 8094A544  80 81 00 08 */	lwz r4, 8(r1)
/* 8094A548  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8094A54C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8094A550  7C 03 00 00 */	cmpw r3, r0
/* 8094A554  41 82 00 14 */	beq lbl_8094A568
/* 8094A558  40 80 00 40 */	bge lbl_8094A598
/* 8094A55C  2C 03 00 00 */	cmpwi r3, 0
/* 8094A560  41 82 00 20 */	beq lbl_8094A580
/* 8094A564  48 00 00 34 */	b lbl_8094A598
lbl_8094A568:
/* 8094A568  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8094A56C  41 82 00 0C */	beq lbl_8094A578
/* 8094A570  38 00 00 01 */	li r0, 1
/* 8094A574  48 00 00 28 */	b lbl_8094A59C
lbl_8094A578:
/* 8094A578  38 00 00 02 */	li r0, 2
/* 8094A57C  48 00 00 20 */	b lbl_8094A59C
lbl_8094A580:
/* 8094A580  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8094A584  41 82 00 0C */	beq lbl_8094A590
/* 8094A588  38 00 00 05 */	li r0, 5
/* 8094A58C  48 00 00 10 */	b lbl_8094A59C
lbl_8094A590:
/* 8094A590  38 00 00 03 */	li r0, 3
/* 8094A594  48 00 00 08 */	b lbl_8094A59C
lbl_8094A598:
/* 8094A598  38 00 00 04 */	li r0, 4
lbl_8094A59C:
/* 8094A59C  2C 00 00 01 */	cmpwi r0, 1
/* 8094A5A0  40 82 00 0C */	bne lbl_8094A5AC
/* 8094A5A4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8094A5A8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8094A5AC:
/* 8094A5AC  3C 60 80 95 */	lis r3, l_HOSTIO@ha
/* 8094A5B0  38 63 BA 3C */	addi r3, r3, l_HOSTIO@l
/* 8094A5B4  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8094A5B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8094A5BC  40 80 00 2C */	bge lbl_8094A5E8
/* 8094A5C0  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 8094A5C4  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8094A5C8  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 8094A5CC  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8094A5D0  C0 1E 04 B0 */	lfs f0, 0x4b0(r30)
/* 8094A5D4  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 8094A5D8  7F C3 F3 78 */	mr r3, r30
/* 8094A5DC  38 80 00 01 */	li r4, 1
/* 8094A5E0  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 8094A5E4  4B FF FA 71 */	bl setAnimeType__8daMyna_cFUcf
lbl_8094A5E8:
/* 8094A5E8  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 8094A5EC  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 8094A5F0  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8094A5F4  4B A1 7C 34 */	b _restgpr_29
/* 8094A5F8  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 8094A5FC  7C 08 03 A6 */	mtlr r0
/* 8094A600  38 21 00 D0 */	addi r1, r1, 0xd0
/* 8094A604  4E 80 00 20 */	blr 
