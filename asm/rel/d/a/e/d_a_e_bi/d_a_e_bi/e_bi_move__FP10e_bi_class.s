lbl_8068B068:
/* 8068B068  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8068B06C  7C 08 02 A6 */	mflr r0
/* 8068B070  90 01 00 54 */	stw r0, 0x54(r1)
/* 8068B074  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8068B078  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8068B07C  39 61 00 40 */	addi r11, r1, 0x40
/* 8068B080  4B CD 71 5D */	bl _savegpr_29
/* 8068B084  7C 7E 1B 78 */	mr r30, r3
/* 8068B088  3C 60 80 69 */	lis r3, lit_3903@ha /* 0x8068D7EC@ha */
/* 8068B08C  3B E3 D7 EC */	addi r31, r3, lit_3903@l /* 0x8068D7EC@l */
/* 8068B090  C3 FF 00 04 */	lfs f31, 4(r31)
/* 8068B094  38 61 00 0C */	addi r3, r1, 0xc
/* 8068B098  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 8068B09C  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8068B0A0  4B BD BA 95 */	bl __mi__4cXyzCFRC3Vec
/* 8068B0A4  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8068B0A8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8068B0AC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8068B0B0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8068B0B4  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 8068B0B8  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8068B0BC  A8 1E 06 70 */	lha r0, 0x670(r30)
/* 8068B0C0  2C 00 00 02 */	cmpwi r0, 2
/* 8068B0C4  41 82 01 04 */	beq lbl_8068B1C8
/* 8068B0C8  40 80 00 14 */	bge lbl_8068B0DC
/* 8068B0CC  2C 00 00 00 */	cmpwi r0, 0
/* 8068B0D0  41 82 00 18 */	beq lbl_8068B0E8
/* 8068B0D4  40 80 00 6C */	bge lbl_8068B140
/* 8068B0D8  48 00 02 EC */	b lbl_8068B3C4
lbl_8068B0DC:
/* 8068B0DC  2C 00 00 05 */	cmpwi r0, 5
/* 8068B0E0  41 82 01 58 */	beq lbl_8068B238
/* 8068B0E4  48 00 02 E0 */	b lbl_8068B3C4
lbl_8068B0E8:
/* 8068B0E8  A8 1E 06 8C */	lha r0, 0x68c(r30)
/* 8068B0EC  2C 00 00 00 */	cmpwi r0, 0
/* 8068B0F0  40 82 02 D4 */	bne lbl_8068B3C4
/* 8068B0F4  7F C3 F3 78 */	mr r3, r30
/* 8068B0F8  38 80 00 07 */	li r4, 7
/* 8068B0FC  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8068B100  38 A0 00 02 */	li r5, 2
/* 8068B104  FC 40 08 90 */	fmr f2, f1
/* 8068B108  4B FF F5 2D */	bl anm_init__FP10e_bi_classifUcf
/* 8068B10C  7F C3 F3 78 */	mr r3, r30
/* 8068B110  3C 80 80 69 */	lis r4, l_HIO@ha /* 0x8068DB2C@ha */
/* 8068B114  38 84 DB 2C */	addi r4, r4, l_HIO@l /* 0x8068DB2C@l */
/* 8068B118  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 8068B11C  4B FF F7 F1 */	bl pl_check__FP10e_bi_classf
/* 8068B120  2C 03 00 00 */	cmpwi r3, 0
/* 8068B124  40 82 00 10 */	bne lbl_8068B134
/* 8068B128  38 00 00 05 */	li r0, 5
/* 8068B12C  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 8068B130  48 00 02 94 */	b lbl_8068B3C4
lbl_8068B134:
/* 8068B134  38 00 00 01 */	li r0, 1
/* 8068B138  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 8068B13C  48 00 02 88 */	b lbl_8068B3C4
lbl_8068B140:
/* 8068B140  3C 60 80 69 */	lis r3, l_HIO@ha /* 0x8068DB2C@ha */
/* 8068B144  38 63 DB 2C */	addi r3, r3, l_HIO@l /* 0x8068DB2C@l */
/* 8068B148  C3 E3 00 18 */	lfs f31, 0x18(r3)
/* 8068B14C  A8 1E 06 84 */	lha r0, 0x684(r30)
/* 8068B150  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 8068B154  7F C3 F3 78 */	mr r3, r30
/* 8068B158  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8068B15C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8068B160  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8068B164  4B 98 F6 7D */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8068B168  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8068B16C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8068B170  40 80 00 30 */	bge lbl_8068B1A0
/* 8068B174  38 00 00 02 */	li r0, 2
/* 8068B178  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 8068B17C  7F C3 F3 78 */	mr r3, r30
/* 8068B180  38 80 00 05 */	li r4, 5
/* 8068B184  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8068B188  38 A0 00 00 */	li r5, 0
/* 8068B18C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8068B190  4B FF F4 A5 */	bl anm_init__FP10e_bi_classifUcf
/* 8068B194  C3 FF 00 04 */	lfs f31, 4(r31)
/* 8068B198  D3 FE 05 2C */	stfs f31, 0x52c(r30)
/* 8068B19C  48 00 02 28 */	b lbl_8068B3C4
lbl_8068B1A0:
/* 8068B1A0  7F C3 F3 78 */	mr r3, r30
/* 8068B1A4  3C 80 80 69 */	lis r4, l_HIO@ha /* 0x8068DB2C@ha */
/* 8068B1A8  38 84 DB 2C */	addi r4, r4, l_HIO@l /* 0x8068DB2C@l */
/* 8068B1AC  C0 24 00 10 */	lfs f1, 0x10(r4)
/* 8068B1B0  4B FF F7 5D */	bl pl_check__FP10e_bi_classf
/* 8068B1B4  2C 03 00 00 */	cmpwi r3, 0
/* 8068B1B8  40 82 02 0C */	bne lbl_8068B3C4
/* 8068B1BC  38 00 00 05 */	li r0, 5
/* 8068B1C0  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 8068B1C4  48 00 02 00 */	b lbl_8068B3C4
lbl_8068B1C8:
/* 8068B1C8  38 80 00 01 */	li r4, 1
/* 8068B1CC  98 9E 09 88 */	stb r4, 0x988(r30)
/* 8068B1D0  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 8068B1D4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8068B1D8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8068B1DC  40 82 00 18 */	bne lbl_8068B1F4
/* 8068B1E0  FC 20 F8 90 */	fmr f1, f31
/* 8068B1E4  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8068B1E8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8068B1EC  41 82 00 08 */	beq lbl_8068B1F4
/* 8068B1F0  38 80 00 00 */	li r4, 0
lbl_8068B1F4:
/* 8068B1F4  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8068B1F8  41 82 01 CC */	beq lbl_8068B3C4
/* 8068B1FC  38 00 00 00 */	li r0, 0
/* 8068B200  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 8068B204  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8068B208  4B BD C7 4D */	bl cM_rndF__Ff
/* 8068B20C  FC 00 08 1E */	fctiwz f0, f1
/* 8068B210  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8068B214  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 8068B218  B0 1E 06 8C */	sth r0, 0x68c(r30)
/* 8068B21C  7F C3 F3 78 */	mr r3, r30
/* 8068B220  38 80 00 0A */	li r4, 0xa
/* 8068B224  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8068B228  38 A0 00 02 */	li r5, 2
/* 8068B22C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8068B230  4B FF F4 05 */	bl anm_init__FP10e_bi_classifUcf
/* 8068B234  48 00 01 90 */	b lbl_8068B3C4
lbl_8068B238:
/* 8068B238  3C 60 80 69 */	lis r3, l_HIO@ha /* 0x8068DB2C@ha */
/* 8068B23C  3B A3 DB 2C */	addi r29, r3, l_HIO@l /* 0x8068DB2C@l */
/* 8068B240  C3 FD 00 18 */	lfs f31, 0x18(r29)
/* 8068B244  4B BD C4 31 */	bl cM_atan2s__Fff
/* 8068B248  B0 7E 06 80 */	sth r3, 0x680(r30)
/* 8068B24C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8068B250  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8068B254  A8 1E 06 94 */	lha r0, 0x694(r30)
/* 8068B258  2C 00 00 00 */	cmpwi r0, 0
/* 8068B25C  40 82 01 40 */	bne lbl_8068B39C
/* 8068B260  38 61 00 18 */	addi r3, r1, 0x18
/* 8068B264  4B CB BE D5 */	bl PSVECSquareMag
/* 8068B268  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8068B26C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8068B270  40 81 00 58 */	ble lbl_8068B2C8
/* 8068B274  FC 00 08 34 */	frsqrte f0, f1
/* 8068B278  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8068B27C  FC 44 00 32 */	fmul f2, f4, f0
/* 8068B280  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8068B284  FC 00 00 32 */	fmul f0, f0, f0
/* 8068B288  FC 01 00 32 */	fmul f0, f1, f0
/* 8068B28C  FC 03 00 28 */	fsub f0, f3, f0
/* 8068B290  FC 02 00 32 */	fmul f0, f2, f0
/* 8068B294  FC 44 00 32 */	fmul f2, f4, f0
/* 8068B298  FC 00 00 32 */	fmul f0, f0, f0
/* 8068B29C  FC 01 00 32 */	fmul f0, f1, f0
/* 8068B2A0  FC 03 00 28 */	fsub f0, f3, f0
/* 8068B2A4  FC 02 00 32 */	fmul f0, f2, f0
/* 8068B2A8  FC 44 00 32 */	fmul f2, f4, f0
/* 8068B2AC  FC 00 00 32 */	fmul f0, f0, f0
/* 8068B2B0  FC 01 00 32 */	fmul f0, f1, f0
/* 8068B2B4  FC 03 00 28 */	fsub f0, f3, f0
/* 8068B2B8  FC 02 00 32 */	fmul f0, f2, f0
/* 8068B2BC  FC 21 00 32 */	fmul f1, f1, f0
/* 8068B2C0  FC 20 08 18 */	frsp f1, f1
/* 8068B2C4  48 00 00 88 */	b lbl_8068B34C
lbl_8068B2C8:
/* 8068B2C8  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8068B2CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8068B2D0  40 80 00 10 */	bge lbl_8068B2E0
/* 8068B2D4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8068B2D8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8068B2DC  48 00 00 70 */	b lbl_8068B34C
lbl_8068B2E0:
/* 8068B2E0  D0 21 00 08 */	stfs f1, 8(r1)
/* 8068B2E4  80 81 00 08 */	lwz r4, 8(r1)
/* 8068B2E8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8068B2EC  3C 00 7F 80 */	lis r0, 0x7f80
/* 8068B2F0  7C 03 00 00 */	cmpw r3, r0
/* 8068B2F4  41 82 00 14 */	beq lbl_8068B308
/* 8068B2F8  40 80 00 40 */	bge lbl_8068B338
/* 8068B2FC  2C 03 00 00 */	cmpwi r3, 0
/* 8068B300  41 82 00 20 */	beq lbl_8068B320
/* 8068B304  48 00 00 34 */	b lbl_8068B338
lbl_8068B308:
/* 8068B308  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8068B30C  41 82 00 0C */	beq lbl_8068B318
/* 8068B310  38 00 00 01 */	li r0, 1
/* 8068B314  48 00 00 28 */	b lbl_8068B33C
lbl_8068B318:
/* 8068B318  38 00 00 02 */	li r0, 2
/* 8068B31C  48 00 00 20 */	b lbl_8068B33C
lbl_8068B320:
/* 8068B320  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8068B324  41 82 00 0C */	beq lbl_8068B330
/* 8068B328  38 00 00 05 */	li r0, 5
/* 8068B32C  48 00 00 10 */	b lbl_8068B33C
lbl_8068B330:
/* 8068B330  38 00 00 03 */	li r0, 3
/* 8068B334  48 00 00 08 */	b lbl_8068B33C
lbl_8068B338:
/* 8068B338  38 00 00 04 */	li r0, 4
lbl_8068B33C:
/* 8068B33C  2C 00 00 01 */	cmpwi r0, 1
/* 8068B340  40 82 00 0C */	bne lbl_8068B34C
/* 8068B344  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8068B348  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8068B34C:
/* 8068B34C  C0 5F 00 58 */	lfs f2, 0x58(r31)
/* 8068B350  C0 1D 00 18 */	lfs f0, 0x18(r29)
/* 8068B354  EC 02 00 32 */	fmuls f0, f2, f0
/* 8068B358  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8068B35C  40 80 00 40 */	bge lbl_8068B39C
/* 8068B360  38 00 00 00 */	li r0, 0
/* 8068B364  B0 1E 06 6E */	sth r0, 0x66e(r30)
/* 8068B368  7F C3 F3 78 */	mr r3, r30
/* 8068B36C  38 80 00 0A */	li r4, 0xa
/* 8068B370  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8068B374  38 A0 00 02 */	li r5, 2
/* 8068B378  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8068B37C  4B FF F2 B9 */	bl anm_init__FP10e_bi_classifUcf
/* 8068B380  38 00 00 02 */	li r0, 2
/* 8068B384  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 8068B388  3C 60 80 69 */	lis r3, l_HIO@ha /* 0x8068DB2C@ha */
/* 8068B38C  38 63 DB 2C */	addi r3, r3, l_HIO@l /* 0x8068DB2C@l */
/* 8068B390  A8 03 00 14 */	lha r0, 0x14(r3)
/* 8068B394  B0 1E 06 8C */	sth r0, 0x68c(r30)
/* 8068B398  48 00 00 2C */	b lbl_8068B3C4
lbl_8068B39C:
/* 8068B39C  7F C3 F3 78 */	mr r3, r30
/* 8068B3A0  3C 80 80 69 */	lis r4, l_HIO@ha /* 0x8068DB2C@ha */
/* 8068B3A4  38 84 DB 2C */	addi r4, r4, l_HIO@l /* 0x8068DB2C@l */
/* 8068B3A8  C0 24 00 0C */	lfs f1, 0xc(r4)
/* 8068B3AC  4B FF F5 61 */	bl pl_check__FP10e_bi_classf
/* 8068B3B0  2C 03 00 00 */	cmpwi r3, 0
/* 8068B3B4  41 82 00 10 */	beq lbl_8068B3C4
/* 8068B3B8  38 00 00 00 */	li r0, 0
/* 8068B3BC  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 8068B3C0  B0 1E 06 8C */	sth r0, 0x68c(r30)
lbl_8068B3C4:
/* 8068B3C4  38 7E 04 DE */	addi r3, r30, 0x4de
/* 8068B3C8  A8 9E 06 80 */	lha r4, 0x680(r30)
/* 8068B3CC  38 A0 00 02 */	li r5, 2
/* 8068B3D0  38 C0 08 00 */	li r6, 0x800
/* 8068B3D4  4B BE 52 35 */	bl cLib_addCalcAngleS2__FPssss
/* 8068B3D8  38 7E 05 2C */	addi r3, r30, 0x52c
/* 8068B3DC  FC 20 F8 90 */	fmr f1, f31
/* 8068B3E0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8068B3E4  3C 80 80 69 */	lis r4, l_HIO@ha /* 0x8068DB2C@ha */
/* 8068B3E8  38 84 DB 2C */	addi r4, r4, l_HIO@l /* 0x8068DB2C@l */
/* 8068B3EC  C0 64 00 18 */	lfs f3, 0x18(r4)
/* 8068B3F0  4B BE 46 4D */	bl cLib_addCalc2__FPffff
/* 8068B3F4  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 8068B3F8  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 8068B3FC  38 A0 00 04 */	li r5, 4
/* 8068B400  38 C0 20 00 */	li r6, 0x2000
/* 8068B404  4B BE 52 05 */	bl cLib_addCalcAngleS2__FPssss
/* 8068B408  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8068B40C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8068B410  39 61 00 40 */	addi r11, r1, 0x40
/* 8068B414  4B CD 6E 15 */	bl _restgpr_29
/* 8068B418  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8068B41C  7C 08 03 A6 */	mtlr r0
/* 8068B420  38 21 00 50 */	addi r1, r1, 0x50
/* 8068B424  4E 80 00 20 */	blr 
