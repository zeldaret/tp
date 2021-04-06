lbl_8013D0D4:
/* 8013D0D4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8013D0D8  7C 08 02 A6 */	mflr r0
/* 8013D0DC  90 01 00 54 */	stw r0, 0x54(r1)
/* 8013D0E0  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8013D0E4  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8013D0E8  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8013D0EC  7C 7F 1B 78 */	mr r31, r3
/* 8013D0F0  80 83 27 F4 */	lwz r4, 0x27f4(r3)
/* 8013D0F4  80 04 04 9C */	lwz r0, 0x49c(r4)
/* 8013D0F8  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 8013D0FC  41 82 00 10 */	beq lbl_8013D10C
/* 8013D100  38 80 00 00 */	li r4, 0
/* 8013D104  4B FE CA 41 */	bl checkNextActionWolf__9daAlink_cFi
/* 8013D108  48 00 02 D8 */	b lbl_8013D3E0
lbl_8013D10C:
/* 8013D10C  A8 04 00 08 */	lha r0, 8(r4)
/* 8013D110  2C 00 01 84 */	cmpwi r0, 0x184
/* 8013D114  40 82 00 10 */	bne lbl_8013D124
/* 8013D118  4B FA 8A 9D */	bl setGrabItemActor__9daAlink_cFP10fopAc_ac_c
/* 8013D11C  38 60 00 01 */	li r3, 1
/* 8013D120  48 00 02 C0 */	b lbl_8013D3E0
lbl_8013D124:
/* 8013D124  38 80 01 2B */	li r4, 0x12b
/* 8013D128  4B F8 4E 45 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 8013D12C  80 7F 27 F4 */	lwz r3, 0x27f4(r31)
/* 8013D130  88 03 04 9A */	lbz r0, 0x49a(r3)
/* 8013D134  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8013D138  40 82 00 38 */	bne lbl_8013D170
/* 8013D13C  7F E3 FB 78 */	mr r3, r31
/* 8013D140  38 80 00 47 */	li r4, 0x47
/* 8013D144  3C A0 80 39 */	lis r5, m__20daAlinkHIO_wlGrab_c0@ha /* 0x8038F95C@ha */
/* 8013D148  38 A5 F9 5C */	addi r5, r5, m__20daAlinkHIO_wlGrab_c0@l /* 0x8038F95C@l */
/* 8013D14C  4B FE C6 FD */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8013D150  C3 E2 95 50 */	lfs f31, lit_23595(r2)
/* 8013D154  C0 02 93 30 */	lfs f0, lit_7625(r2)
/* 8013D158  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 8013D15C  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlGrab_c0@ha /* 0x8038F95C@ha */
/* 8013D160  38 63 F9 5C */	addi r3, r3, m__20daAlinkHIO_wlGrab_c0@l /* 0x8038F95C@l */
/* 8013D164  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8013D168  D0 1F 34 7C */	stfs f0, 0x347c(r31)
/* 8013D16C  48 00 00 38 */	b lbl_8013D1A4
lbl_8013D170:
/* 8013D170  7F E3 FB 78 */	mr r3, r31
/* 8013D174  38 80 00 4E */	li r4, 0x4e
/* 8013D178  3C A0 80 39 */	lis r5, m__20daAlinkHIO_wlGrab_c0@ha /* 0x8038F95C@ha */
/* 8013D17C  38 A5 F9 5C */	addi r5, r5, m__20daAlinkHIO_wlGrab_c0@l /* 0x8038F95C@l */
/* 8013D180  38 A5 00 28 */	addi r5, r5, 0x28
/* 8013D184  4B FE C6 C5 */	bl setSingleAnimeWolfParam__9daAlink_cFQ29daAlink_c12daAlink_WANMPC16daAlinkHIO_anm_c
/* 8013D188  C3 E2 93 B0 */	lfs f31, lit_10039(r2)
/* 8013D18C  C0 02 93 74 */	lfs f0, lit_8502(r2)
/* 8013D190  D0 1F 34 78 */	stfs f0, 0x3478(r31)
/* 8013D194  3C 60 80 39 */	lis r3, m__20daAlinkHIO_wlGrab_c0@ha /* 0x8038F95C@ha */
/* 8013D198  38 63 F9 5C */	addi r3, r3, m__20daAlinkHIO_wlGrab_c0@l /* 0x8038F95C@l */
/* 8013D19C  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 8013D1A0  D0 1F 34 7C */	stfs f0, 0x347c(r31)
lbl_8013D1A4:
/* 8013D1A4  7F E3 FB 78 */	mr r3, r31
/* 8013D1A8  80 9F 27 F4 */	lwz r4, 0x27f4(r31)
/* 8013D1AC  4B FA 8A 09 */	bl setGrabItemActor__9daAlink_cFP10fopAc_ac_c
/* 8013D1B0  7F E3 FB 78 */	mr r3, r31
/* 8013D1B4  80 9F 27 F4 */	lwz r4, 0x27f4(r31)
/* 8013D1B8  4B ED D5 59 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8013D1BC  B0 7F 04 E6 */	sth r3, 0x4e6(r31)
/* 8013D1C0  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8013D1C4  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 8013D1C8  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8013D1CC  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 8013D1D0  38 61 00 24 */	addi r3, r1, 0x24
/* 8013D1D4  80 9F 27 F4 */	lwz r4, 0x27f4(r31)
/* 8013D1D8  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 8013D1DC  38 BF 35 10 */	addi r5, r31, 0x3510
/* 8013D1E0  48 12 99 55 */	bl __mi__4cXyzCFRC3Vec
/* 8013D1E4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8013D1E8  D0 1F 37 C8 */	stfs f0, 0x37c8(r31)
/* 8013D1EC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8013D1F0  D0 1F 37 CC */	stfs f0, 0x37cc(r31)
/* 8013D1F4  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8013D1F8  D0 1F 37 D0 */	stfs f0, 0x37d0(r31)
/* 8013D1FC  38 00 00 00 */	li r0, 0
/* 8013D200  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 8013D204  80 9F 27 F4 */	lwz r4, 0x27f4(r31)
/* 8013D208  A8 04 00 08 */	lha r0, 8(r4)
/* 8013D20C  2C 00 02 1F */	cmpwi r0, 0x21f
/* 8013D210  41 82 00 84 */	beq lbl_8013D294
/* 8013D214  2C 00 01 AC */	cmpwi r0, 0x1ac
/* 8013D218  41 82 00 7C */	beq lbl_8013D294
/* 8013D21C  C0 5F 04 D0 */	lfs f2, 0x4d0(r31)
/* 8013D220  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 8013D224  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8013D228  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8013D22C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8013D230  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8013D234  7C 03 04 2E */	lfsx f0, r3, r0
/* 8013D238  C0 24 04 D0 */	lfs f1, 0x4d0(r4)
/* 8013D23C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8013D240  EC 01 00 28 */	fsubs f0, f1, f0
/* 8013D244  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 8013D248  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8013D24C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8013D250  7C 63 02 14 */	add r3, r3, r0
/* 8013D254  C0 03 00 04 */	lfs f0, 4(r3)
/* 8013D258  80 7F 27 F4 */	lwz r3, 0x27f4(r31)
/* 8013D25C  C0 23 04 D8 */	lfs f1, 0x4d8(r3)
/* 8013D260  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8013D264  EC 01 00 28 */	fsubs f0, f1, f0
/* 8013D268  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 8013D26C  C0 3F 37 C8 */	lfs f1, 0x37c8(r31)
/* 8013D270  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8013D274  EC 00 10 28 */	fsubs f0, f0, f2
/* 8013D278  EC 01 00 28 */	fsubs f0, f1, f0
/* 8013D27C  D0 1F 37 C8 */	stfs f0, 0x37c8(r31)
/* 8013D280  C0 3F 37 D0 */	lfs f1, 0x37d0(r31)
/* 8013D284  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8013D288  EC 00 18 28 */	fsubs f0, f0, f3
/* 8013D28C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8013D290  D0 1F 37 D0 */	stfs f0, 0x37d0(r31)
lbl_8013D294:
/* 8013D294  80 7F 27 F4 */	lwz r3, 0x27f4(r31)
/* 8013D298  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 8013D29C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8013D2A0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8013D2A4  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 8013D2A8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8013D2AC  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8013D2B0  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 8013D2B4  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8013D2B8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8013D2BC  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8013D2C0  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8013D2C4  38 61 00 0C */	addi r3, r1, 0xc
/* 8013D2C8  38 81 00 18 */	addi r4, r1, 0x18
/* 8013D2CC  48 20 A0 D1 */	bl PSVECSquareDistance
/* 8013D2D0  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8013D2D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013D2D8  40 81 00 58 */	ble lbl_8013D330
/* 8013D2DC  FC 00 08 34 */	frsqrte f0, f1
/* 8013D2E0  C8 82 92 E8 */	lfd f4, lit_6846(r2)
/* 8013D2E4  FC 44 00 32 */	fmul f2, f4, f0
/* 8013D2E8  C8 62 92 F0 */	lfd f3, lit_6847(r2)
/* 8013D2EC  FC 00 00 32 */	fmul f0, f0, f0
/* 8013D2F0  FC 01 00 32 */	fmul f0, f1, f0
/* 8013D2F4  FC 03 00 28 */	fsub f0, f3, f0
/* 8013D2F8  FC 02 00 32 */	fmul f0, f2, f0
/* 8013D2FC  FC 44 00 32 */	fmul f2, f4, f0
/* 8013D300  FC 00 00 32 */	fmul f0, f0, f0
/* 8013D304  FC 01 00 32 */	fmul f0, f1, f0
/* 8013D308  FC 03 00 28 */	fsub f0, f3, f0
/* 8013D30C  FC 02 00 32 */	fmul f0, f2, f0
/* 8013D310  FC 44 00 32 */	fmul f2, f4, f0
/* 8013D314  FC 00 00 32 */	fmul f0, f0, f0
/* 8013D318  FC 01 00 32 */	fmul f0, f1, f0
/* 8013D31C  FC 03 00 28 */	fsub f0, f3, f0
/* 8013D320  FC 02 00 32 */	fmul f0, f2, f0
/* 8013D324  FC 21 00 32 */	fmul f1, f1, f0
/* 8013D328  FC 20 08 18 */	frsp f1, f1
/* 8013D32C  48 00 00 88 */	b lbl_8013D3B4
lbl_8013D330:
/* 8013D330  C8 02 92 F8 */	lfd f0, lit_6848(r2)
/* 8013D334  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013D338  40 80 00 10 */	bge lbl_8013D348
/* 8013D33C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8013D340  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8013D344  48 00 00 70 */	b lbl_8013D3B4
lbl_8013D348:
/* 8013D348  D0 21 00 08 */	stfs f1, 8(r1)
/* 8013D34C  80 81 00 08 */	lwz r4, 8(r1)
/* 8013D350  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8013D354  3C 00 7F 80 */	lis r0, 0x7f80
/* 8013D358  7C 03 00 00 */	cmpw r3, r0
/* 8013D35C  41 82 00 14 */	beq lbl_8013D370
/* 8013D360  40 80 00 40 */	bge lbl_8013D3A0
/* 8013D364  2C 03 00 00 */	cmpwi r3, 0
/* 8013D368  41 82 00 20 */	beq lbl_8013D388
/* 8013D36C  48 00 00 34 */	b lbl_8013D3A0
lbl_8013D370:
/* 8013D370  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8013D374  41 82 00 0C */	beq lbl_8013D380
/* 8013D378  38 00 00 01 */	li r0, 1
/* 8013D37C  48 00 00 28 */	b lbl_8013D3A4
lbl_8013D380:
/* 8013D380  38 00 00 02 */	li r0, 2
/* 8013D384  48 00 00 20 */	b lbl_8013D3A4
lbl_8013D388:
/* 8013D388  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8013D38C  41 82 00 0C */	beq lbl_8013D398
/* 8013D390  38 00 00 05 */	li r0, 5
/* 8013D394  48 00 00 10 */	b lbl_8013D3A4
lbl_8013D398:
/* 8013D398  38 00 00 03 */	li r0, 3
/* 8013D39C  48 00 00 08 */	b lbl_8013D3A4
lbl_8013D3A0:
/* 8013D3A0  38 00 00 04 */	li r0, 4
lbl_8013D3A4:
/* 8013D3A4  2C 00 00 01 */	cmpwi r0, 1
/* 8013D3A8  40 82 00 0C */	bne lbl_8013D3B4
/* 8013D3AC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8013D3B0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8013D3B4:
/* 8013D3B4  C0 02 93 50 */	lfs f0, lit_8247(r2)
/* 8013D3B8  EC 01 00 28 */	fsubs f0, f1, f0
/* 8013D3BC  D0 1F 33 E4 */	stfs f0, 0x33e4(r31)
/* 8013D3C0  C0 3F 33 E4 */	lfs f1, 0x33e4(r31)
/* 8013D3C4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8013D3C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8013D3CC  40 80 00 08 */	bge lbl_8013D3D4
/* 8013D3D0  D0 1F 33 E4 */	stfs f0, 0x33e4(r31)
lbl_8013D3D4:
/* 8013D3D4  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 8013D3D8  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 8013D3DC  38 60 00 01 */	li r3, 1
lbl_8013D3E0:
/* 8013D3E0  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 8013D3E4  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8013D3E8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8013D3EC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8013D3F0  7C 08 03 A6 */	mtlr r0
/* 8013D3F4  38 21 00 50 */	addi r1, r1, 0x50
/* 8013D3F8  4E 80 00 20 */	blr 
