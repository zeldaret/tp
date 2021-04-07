lbl_8076AFF8:
/* 8076AFF8  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 8076AFFC  7C 08 02 A6 */	mflr r0
/* 8076B000  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8076B004  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8076B008  4B BF 71 AD */	bl _savegpr_19
/* 8076B00C  7C 7E 1B 78 */	mr r30, r3
/* 8076B010  7C 9A 23 78 */	mr r26, r4
/* 8076B014  7C BB 2B 78 */	mr r27, r5
/* 8076B018  7C DC 33 78 */	mr r28, r6
/* 8076B01C  3C 60 80 77 */	lis r3, cNullVec__6Z2Calc@ha /* 0x8076B6F8@ha */
/* 8076B020  3A E3 B6 F8 */	addi r23, r3, cNullVec__6Z2Calc@l /* 0x8076B6F8@l */
/* 8076B024  3C 60 80 77 */	lis r3, lit_4007@ha /* 0x8076B45C@ha */
/* 8076B028  3B E3 B4 5C */	addi r31, r3, lit_4007@l /* 0x8076B45C@l */
/* 8076B02C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8076B030  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8076B034  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8076B038  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 8076B03C  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)  /* 0x80451018@l */
/* 8076B040  28 00 00 00 */	cmplwi r0, 0
/* 8076B044  41 82 03 A4 */	beq lbl_8076B3E8
/* 8076B048  7F C4 F3 78 */	mr r4, r30
/* 8076B04C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8076B050  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 8076B054  7D 89 03 A6 */	mtctr r12
/* 8076B058  4E 80 04 21 */	bctrl 
/* 8076B05C  2C 03 00 00 */	cmpwi r3, 0
/* 8076B060  41 82 03 88 */	beq lbl_8076B3E8
/* 8076B064  4B A4 15 19 */	bl dKy_darkworld_check__Fv
/* 8076B068  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 8076B06C  30 03 FF FF */	addic r0, r3, -1
/* 8076B070  7F A0 19 10 */	subfe r29, r0, r3
/* 8076B074  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 8076B078  28 00 00 00 */	cmplwi r0, 0
/* 8076B07C  40 82 02 A0 */	bne lbl_8076B31C
/* 8076B080  38 00 00 01 */	li r0, 1
/* 8076B084  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 8076B088  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 8076B08C  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l /* 0x80451018@l */
/* 8076B090  80 63 00 00 */	lwz r3, 0(r3)
/* 8076B094  80 63 05 74 */	lwz r3, 0x574(r3)
/* 8076B098  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8076B09C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8076B0A0  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 8076B0A4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8076B0A8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8076B0AC  4B BD B4 05 */	bl PSMTXCopy
/* 8076B0B0  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8076B0B4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8076B0B8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8076B0BC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8076B0C0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8076B0C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8076B0C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8076B0CC  38 81 00 4C */	addi r4, r1, 0x4c
/* 8076B0D0  38 A1 00 58 */	addi r5, r1, 0x58
/* 8076B0D4  4B BD BC 99 */	bl PSMTXMultVec
/* 8076B0D8  38 61 00 34 */	addi r3, r1, 0x34
/* 8076B0DC  38 81 00 58 */	addi r4, r1, 0x58
/* 8076B0E0  7F 65 DB 78 */	mr r5, r27
/* 8076B0E4  4B AF BA 51 */	bl __mi__4cXyzCFRC3Vec
/* 8076B0E8  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 8076B0EC  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8076B0F0  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 8076B0F4  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8076B0F8  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 8076B0FC  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 8076B100  4B AF C5 75 */	bl cM_atan2s__Fff
/* 8076B104  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 8076B108  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 8076B10C  EC 20 00 32 */	fmuls f1, f0, f0
/* 8076B110  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 8076B114  EC 00 00 32 */	fmuls f0, f0, f0
/* 8076B118  EC 41 00 2A */	fadds f2, f1, f0
/* 8076B11C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8076B120  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8076B124  40 81 00 0C */	ble lbl_8076B130
/* 8076B128  FC 00 10 34 */	frsqrte f0, f2
/* 8076B12C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8076B130:
/* 8076B130  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 8076B134  4B AF C5 41 */	bl cM_atan2s__Fff
/* 8076B138  7C 03 00 D0 */	neg r0, r3
/* 8076B13C  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 8076B140  38 80 00 00 */	li r4, 0
/* 8076B144  B0 81 00 30 */	sth r4, 0x30(r1)
/* 8076B148  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8076B14C  7C 00 07 74 */	extsb r0, r0
/* 8076B150  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8076B154  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8076B158  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 8076B15C  57 A5 10 3A */	slwi r5, r29, 2
/* 8076B160  90 81 00 08 */	stw r4, 8(r1)
/* 8076B164  90 01 00 0C */	stw r0, 0xc(r1)
/* 8076B168  3A B7 00 20 */	addi r21, r23, 0x20
/* 8076B16C  7E B5 2A 14 */	add r21, r21, r5
/* 8076B170  92 A1 00 10 */	stw r21, 0x10(r1)
/* 8076B174  3A D7 00 28 */	addi r22, r23, 0x28
/* 8076B178  7E D6 2A 14 */	add r22, r22, r5
/* 8076B17C  92 C1 00 14 */	stw r22, 0x14(r1)
/* 8076B180  90 81 00 18 */	stw r4, 0x18(r1)
/* 8076B184  38 80 00 00 */	li r4, 0
/* 8076B188  38 A0 02 9B */	li r5, 0x29b
/* 8076B18C  7F 66 DB 78 */	mr r6, r27
/* 8076B190  38 FE 01 0C */	addi r7, r30, 0x10c
/* 8076B194  39 01 00 2C */	addi r8, r1, 0x2c
/* 8076B198  7F 89 E3 78 */	mr r9, r28
/* 8076B19C  39 40 00 FF */	li r10, 0xff
/* 8076B1A0  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8076B1A4  4B 8E 18 ED */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8076B1A8  7C 79 1B 79 */	or. r25, r3, r3
/* 8076B1AC  41 82 00 FC */	beq lbl_8076B2A8
/* 8076B1B0  38 61 00 40 */	addi r3, r1, 0x40
/* 8076B1B4  4B BD BF 85 */	bl PSVECSquareMag
/* 8076B1B8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8076B1BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8076B1C0  40 81 00 58 */	ble lbl_8076B218
/* 8076B1C4  FC 00 08 34 */	frsqrte f0, f1
/* 8076B1C8  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 8076B1CC  FC 44 00 32 */	fmul f2, f4, f0
/* 8076B1D0  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 8076B1D4  FC 00 00 32 */	fmul f0, f0, f0
/* 8076B1D8  FC 01 00 32 */	fmul f0, f1, f0
/* 8076B1DC  FC 03 00 28 */	fsub f0, f3, f0
/* 8076B1E0  FC 02 00 32 */	fmul f0, f2, f0
/* 8076B1E4  FC 44 00 32 */	fmul f2, f4, f0
/* 8076B1E8  FC 00 00 32 */	fmul f0, f0, f0
/* 8076B1EC  FC 01 00 32 */	fmul f0, f1, f0
/* 8076B1F0  FC 03 00 28 */	fsub f0, f3, f0
/* 8076B1F4  FC 02 00 32 */	fmul f0, f2, f0
/* 8076B1F8  FC 44 00 32 */	fmul f2, f4, f0
/* 8076B1FC  FC 00 00 32 */	fmul f0, f0, f0
/* 8076B200  FC 01 00 32 */	fmul f0, f1, f0
/* 8076B204  FC 03 00 28 */	fsub f0, f3, f0
/* 8076B208  FC 02 00 32 */	fmul f0, f2, f0
/* 8076B20C  FC 21 00 32 */	fmul f1, f1, f0
/* 8076B210  FC 20 08 18 */	frsp f1, f1
/* 8076B214  48 00 00 88 */	b lbl_8076B29C
lbl_8076B218:
/* 8076B218  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 8076B21C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8076B220  40 80 00 10 */	bge lbl_8076B230
/* 8076B224  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8076B228  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8076B22C  48 00 00 70 */	b lbl_8076B29C
lbl_8076B230:
/* 8076B230  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8076B234  80 81 00 20 */	lwz r4, 0x20(r1)
/* 8076B238  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8076B23C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8076B240  7C 03 00 00 */	cmpw r3, r0
/* 8076B244  41 82 00 14 */	beq lbl_8076B258
/* 8076B248  40 80 00 40 */	bge lbl_8076B288
/* 8076B24C  2C 03 00 00 */	cmpwi r3, 0
/* 8076B250  41 82 00 20 */	beq lbl_8076B270
/* 8076B254  48 00 00 34 */	b lbl_8076B288
lbl_8076B258:
/* 8076B258  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8076B25C  41 82 00 0C */	beq lbl_8076B268
/* 8076B260  38 00 00 01 */	li r0, 1
/* 8076B264  48 00 00 28 */	b lbl_8076B28C
lbl_8076B268:
/* 8076B268  38 00 00 02 */	li r0, 2
/* 8076B26C  48 00 00 20 */	b lbl_8076B28C
lbl_8076B270:
/* 8076B270  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8076B274  41 82 00 0C */	beq lbl_8076B280
/* 8076B278  38 00 00 05 */	li r0, 5
/* 8076B27C  48 00 00 10 */	b lbl_8076B28C
lbl_8076B280:
/* 8076B280  38 00 00 03 */	li r0, 3
/* 8076B284  48 00 00 08 */	b lbl_8076B28C
lbl_8076B288:
/* 8076B288  38 00 00 04 */	li r0, 4
lbl_8076B28C:
/* 8076B28C  2C 00 00 01 */	cmpwi r0, 1
/* 8076B290  40 82 00 0C */	bne lbl_8076B29C
/* 8076B294  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8076B298  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8076B29C:
/* 8076B29C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8076B2A0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8076B2A4  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_8076B2A8:
/* 8076B2A8  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8076B2AC  7C 04 07 74 */	extsb r4, r0
/* 8076B2B0  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 8076B2B4  38 00 00 00 */	li r0, 0
/* 8076B2B8  90 01 00 08 */	stw r0, 8(r1)
/* 8076B2BC  90 81 00 0C */	stw r4, 0xc(r1)
/* 8076B2C0  92 A1 00 10 */	stw r21, 0x10(r1)
/* 8076B2C4  92 C1 00 14 */	stw r22, 0x14(r1)
/* 8076B2C8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8076B2CC  38 80 00 00 */	li r4, 0
/* 8076B2D0  38 A0 02 9C */	li r5, 0x29c
/* 8076B2D4  7F 66 DB 78 */	mr r6, r27
/* 8076B2D8  38 FE 01 0C */	addi r7, r30, 0x10c
/* 8076B2DC  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 8076B2E0  7F 89 E3 78 */	mr r9, r28
/* 8076B2E4  39 40 00 FF */	li r10, 0xff
/* 8076B2E8  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8076B2EC  4B 8E 17 A5 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8076B2F0  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 8076B2F4  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 8076B2F8  90 01 00 28 */	stw r0, 0x28(r1)
/* 8076B2FC  7F 43 D3 78 */	mr r3, r26
/* 8076B300  38 81 00 28 */	addi r4, r1, 0x28
/* 8076B304  38 A0 00 00 */	li r5, 0
/* 8076B308  38 C0 FF FF */	li r6, -1
/* 8076B30C  81 9A 00 00 */	lwz r12, 0(r26)
/* 8076B310  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8076B314  7D 89 03 A6 */	mtctr r12
/* 8076B318  4E 80 04 21 */	bctrl 
lbl_8076B31C:
/* 8076B31C  3A A0 00 00 */	li r21, 0
/* 8076B320  3A C0 00 00 */	li r22, 0
/* 8076B324  3A 80 00 00 */	li r20, 0
/* 8076B328  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8076B32C  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8076B330  57 A0 10 3A */	slwi r0, r29, 2
/* 8076B334  3B 17 00 28 */	addi r24, r23, 0x28
/* 8076B338  7F 18 02 14 */	add r24, r24, r0
/* 8076B33C  3B B7 00 20 */	addi r29, r23, 0x20
/* 8076B340  7F BD 02 14 */	add r29, r29, r0
/* 8076B344  3A 77 00 30 */	addi r19, r23, 0x30
lbl_8076B348:
/* 8076B348  3A F4 05 9C */	addi r23, r20, 0x59c
/* 8076B34C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8076B350  7C 05 07 74 */	extsb r5, r0
/* 8076B354  7C 9E B8 2E */	lwzx r4, r30, r23
/* 8076B358  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 8076B35C  38 00 00 FF */	li r0, 0xff
/* 8076B360  90 01 00 08 */	stw r0, 8(r1)
/* 8076B364  38 00 00 00 */	li r0, 0
/* 8076B368  90 01 00 0C */	stw r0, 0xc(r1)
/* 8076B36C  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8076B370  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8076B374  93 01 00 18 */	stw r24, 0x18(r1)
/* 8076B378  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8076B37C  38 A0 00 00 */	li r5, 0
/* 8076B380  7C D3 B2 2E */	lhzx r6, r19, r22
/* 8076B384  7F 67 DB 78 */	mr r7, r27
/* 8076B388  39 1E 01 0C */	addi r8, r30, 0x10c
/* 8076B38C  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 8076B390  7F 8A E3 78 */	mr r10, r28
/* 8076B394  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8076B398  4B 8E 21 35 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8076B39C  7C 7E B9 2E */	stwx r3, r30, r23
/* 8076B3A0  3A B5 00 01 */	addi r21, r21, 1
/* 8076B3A4  2C 15 00 03 */	cmpwi r21, 3
/* 8076B3A8  3A D6 00 02 */	addi r22, r22, 2
/* 8076B3AC  3A 94 00 04 */	addi r20, r20, 4
/* 8076B3B0  41 80 FF 98 */	blt lbl_8076B348
/* 8076B3B4  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 8076B3B8  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 8076B3BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8076B3C0  7F 43 D3 78 */	mr r3, r26
/* 8076B3C4  38 81 00 24 */	addi r4, r1, 0x24
/* 8076B3C8  38 A0 00 00 */	li r5, 0
/* 8076B3CC  38 C0 FF FF */	li r6, -1
/* 8076B3D0  81 9A 00 00 */	lwz r12, 0(r26)
/* 8076B3D4  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8076B3D8  7D 89 03 A6 */	mtctr r12
/* 8076B3DC  4E 80 04 21 */	bctrl 
/* 8076B3E0  38 60 00 01 */	li r3, 1
/* 8076B3E4  48 00 00 10 */	b lbl_8076B3F4
lbl_8076B3E8:
/* 8076B3E8  38 00 00 00 */	li r0, 0
/* 8076B3EC  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 8076B3F0  38 60 00 00 */	li r3, 0
lbl_8076B3F4:
/* 8076B3F4  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8076B3F8  4B BF 6E 09 */	bl _restgpr_19
/* 8076B3FC  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8076B400  7C 08 03 A6 */	mtlr r0
/* 8076B404  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8076B408  4E 80 00 20 */	blr 
