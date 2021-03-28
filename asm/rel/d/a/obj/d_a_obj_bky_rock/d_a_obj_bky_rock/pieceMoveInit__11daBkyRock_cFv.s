lbl_80BB7988:
/* 80BB7988  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80BB798C  7C 08 02 A6 */	mflr r0
/* 80BB7990  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80BB7994  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 80BB7998  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 80BB799C  DB C1 00 B0 */	stfd f30, 0xb0(r1)
/* 80BB79A0  F3 C1 00 B8 */	psq_st f30, 184(r1), 0, 0 /* qr0 */
/* 80BB79A4  DB A1 00 A0 */	stfd f29, 0xa0(r1)
/* 80BB79A8  F3 A1 00 A8 */	psq_st f29, 168(r1), 0, 0 /* qr0 */
/* 80BB79AC  DB 81 00 90 */	stfd f28, 0x90(r1)
/* 80BB79B0  F3 81 00 98 */	psq_st f28, 152(r1), 0, 0 /* qr0 */
/* 80BB79B4  39 61 00 90 */	addi r11, r1, 0x90
/* 80BB79B8  4B 7A A8 00 */	b _savegpr_20
/* 80BB79BC  7C 75 1B 78 */	mr r21, r3
/* 80BB79C0  3C 60 80 BB */	lis r3, VIBMODE_POWER@ha
/* 80BB79C4  3B 83 7E B0 */	addi r28, r3, VIBMODE_POWER@l
/* 80BB79C8  80 75 00 B0 */	lwz r3, 0xb0(r21)
/* 80BB79CC  38 00 00 01 */	li r0, 1
/* 80BB79D0  98 15 05 7A */	stb r0, 0x57a(r21)
/* 80BB79D4  54 78 16 BA */	rlwinm r24, r3, 2, 0x1a, 0x1d
/* 80BB79D8  38 7C 01 30 */	addi r3, r28, 0x130
/* 80BB79DC  7C 03 C0 2E */	lwzx r0, r3, r24
/* 80BB79E0  CB FC 00 F0 */	lfd f31, 0xf0(r28)
/* 80BB79E4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BB79E8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BB79EC  3F A0 43 30 */	lis r29, 0x4330
/* 80BB79F0  93 A1 00 08 */	stw r29, 8(r1)
/* 80BB79F4  C8 01 00 08 */	lfd f0, 8(r1)
/* 80BB79F8  EF C0 F8 28 */	fsubs f30, f0, f31
/* 80BB79FC  38 7C 01 38 */	addi r3, r28, 0x138
/* 80BB7A00  7C 03 C0 2E */	lwzx r0, r3, r24
/* 80BB7A04  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BB7A08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB7A0C  93 A1 00 10 */	stw r29, 0x10(r1)
/* 80BB7A10  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80BB7A14  EF A0 F8 28 */	fsubs f29, f0, f31
/* 80BB7A18  88 15 05 78 */	lbz r0, 0x578(r21)
/* 80BB7A1C  3A F5 08 70 */	addi r23, r21, 0x870
/* 80BB7A20  3A C0 00 00 */	li r22, 0
/* 80BB7A24  3B 7C 01 28 */	addi r27, r28, 0x128
/* 80BB7A28  54 1E 10 3A */	slwi r30, r0, 2
/* 80BB7A2C  3B 5C 01 40 */	addi r26, r28, 0x140
/* 80BB7A30  3B 3C 01 48 */	addi r25, r28, 0x148
/* 80BB7A34  C3 9C 01 54 */	lfs f28, 0x154(r28)
lbl_80BB7A38:
/* 80BB7A38  56 C0 07 FF */	clrlwi. r0, r22, 0x1f
/* 80BB7A3C  3B E0 FF FF */	li r31, -1
/* 80BB7A40  41 82 00 08 */	beq lbl_80BB7A48
/* 80BB7A44  3B E0 00 01 */	li r31, 1
lbl_80BB7A48:
/* 80BB7A48  56 C0 07 BD */	rlwinm. r0, r22, 0, 0x1e, 0x1e
/* 80BB7A4C  3A 80 FF FF */	li r20, -1
/* 80BB7A50  41 82 00 08 */	beq lbl_80BB7A58
/* 80BB7A54  3A 80 00 01 */	li r20, 1
lbl_80BB7A58:
/* 80BB7A58  C0 3C 01 50 */	lfs f1, 0x150(r28)
/* 80BB7A5C  4B 6A FE F8 */	b cM_rndF__Ff
/* 80BB7A60  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 80BB7A64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB7A68  93 A1 00 10 */	stw r29, 0x10(r1)
/* 80BB7A6C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80BB7A70  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80BB7A74  EC 20 00 72 */	fmuls f1, f0, f1
/* 80BB7A78  C0 15 04 D0 */	lfs f0, 0x4d0(r21)
/* 80BB7A7C  EC 00 08 2A */	fadds f0, f0, f1
/* 80BB7A80  D0 17 00 34 */	stfs f0, 0x34(r23)
/* 80BB7A84  C0 3C 01 50 */	lfs f1, 0x150(r28)
/* 80BB7A88  4B 6A FE CC */	b cM_rndF__Ff
/* 80BB7A8C  C0 15 04 D4 */	lfs f0, 0x4d4(r21)
/* 80BB7A90  EC 00 08 2A */	fadds f0, f0, f1
/* 80BB7A94  D0 17 00 38 */	stfs f0, 0x38(r23)
/* 80BB7A98  C0 3C 01 50 */	lfs f1, 0x150(r28)
/* 80BB7A9C  4B 6A FE B8 */	b cM_rndF__Ff
/* 80BB7AA0  6E 80 80 00 */	xoris r0, r20, 0x8000
/* 80BB7AA4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80BB7AA8  93 A1 00 08 */	stw r29, 8(r1)
/* 80BB7AAC  C8 01 00 08 */	lfd f0, 8(r1)
/* 80BB7AB0  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80BB7AB4  EC 20 00 72 */	fmuls f1, f0, f1
/* 80BB7AB8  C0 15 04 D8 */	lfs f0, 0x4d8(r21)
/* 80BB7ABC  EC 00 08 2A */	fadds f0, f0, f1
/* 80BB7AC0  D0 17 00 3C */	stfs f0, 0x3c(r23)
/* 80BB7AC4  C0 3C 00 E8 */	lfs f1, 0xe8(r28)
/* 80BB7AC8  4B 6A FE 8C */	b cM_rndF__Ff
/* 80BB7ACC  7C 1B C0 2E */	lwzx r0, r27, r24
/* 80BB7AD0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BB7AD4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80BB7AD8  93 A1 00 18 */	stw r29, 0x18(r1)
/* 80BB7ADC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80BB7AE0  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80BB7AE4  EC 40 08 2A */	fadds f2, f0, f1
/* 80BB7AE8  C0 35 04 D0 */	lfs f1, 0x4d0(r21)
/* 80BB7AEC  6F E0 80 00 */	xoris r0, r31, 0x8000
/* 80BB7AF0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BB7AF4  93 A1 00 20 */	stw r29, 0x20(r1)
/* 80BB7AF8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80BB7AFC  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80BB7B00  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80BB7B04  EC 01 00 2A */	fadds f0, f1, f0
/* 80BB7B08  D0 17 00 40 */	stfs f0, 0x40(r23)
/* 80BB7B0C  C0 35 04 D8 */	lfs f1, 0x4d8(r21)
/* 80BB7B10  6E 80 80 00 */	xoris r0, r20, 0x8000
/* 80BB7B14  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80BB7B18  93 A1 00 28 */	stw r29, 0x28(r1)
/* 80BB7B1C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80BB7B20  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80BB7B24  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80BB7B28  EC 01 00 2A */	fadds f0, f1, f0
/* 80BB7B2C  D0 17 00 44 */	stfs f0, 0x44(r23)
/* 80BB7B30  7C 1A F0 2E */	lwzx r0, r26, r30
/* 80BB7B34  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BB7B38  90 01 00 34 */	stw r0, 0x34(r1)
/* 80BB7B3C  93 A1 00 30 */	stw r29, 0x30(r1)
/* 80BB7B40  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80BB7B44  EC 20 F8 28 */	fsubs f1, f0, f31
/* 80BB7B48  4B 6A FE 0C */	b cM_rndF__Ff
/* 80BB7B4C  7C 19 C0 2E */	lwzx r0, r25, r24
/* 80BB7B50  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BB7B54  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80BB7B58  93 A1 00 38 */	stw r29, 0x38(r1)
/* 80BB7B5C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80BB7B60  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80BB7B64  EC 00 08 2A */	fadds f0, f0, f1
/* 80BB7B68  EC 1C 00 32 */	fmuls f0, f28, f0
/* 80BB7B6C  D0 17 00 48 */	stfs f0, 0x48(r23)
/* 80BB7B70  FC 20 E8 90 */	fmr f1, f29
/* 80BB7B74  4B 6A FD E0 */	b cM_rndF__Ff
/* 80BB7B78  EC 1E 08 2A */	fadds f0, f30, f1
/* 80BB7B7C  D0 17 00 4C */	stfs f0, 0x4c(r23)
/* 80BB7B80  C0 3C 01 58 */	lfs f1, 0x158(r28)
/* 80BB7B84  4B 6A FD D0 */	b cM_rndF__Ff
/* 80BB7B88  FC 00 08 1E */	fctiwz f0, f1
/* 80BB7B8C  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 80BB7B90  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BB7B94  B0 17 00 50 */	sth r0, 0x50(r23)
/* 80BB7B98  C0 3C 01 58 */	lfs f1, 0x158(r28)
/* 80BB7B9C  4B 6A FD B8 */	b cM_rndF__Ff
/* 80BB7BA0  FC 00 08 1E */	fctiwz f0, f1
/* 80BB7BA4  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80BB7BA8  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80BB7BAC  B0 17 00 52 */	sth r0, 0x52(r23)
/* 80BB7BB0  C0 3C 01 5C */	lfs f1, 0x15c(r28)
/* 80BB7BB4  4B 6A FD A0 */	b cM_rndF__Ff
/* 80BB7BB8  FC 00 08 1E */	fctiwz f0, f1
/* 80BB7BBC  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 80BB7BC0  80 61 00 54 */	lwz r3, 0x54(r1)
/* 80BB7BC4  38 03 20 00 */	addi r0, r3, 0x2000
/* 80BB7BC8  7C 1F 01 D6 */	mullw r0, r31, r0
/* 80BB7BCC  B0 17 00 54 */	sth r0, 0x54(r23)
/* 80BB7BD0  3A D6 00 01 */	addi r22, r22, 1
/* 80BB7BD4  2C 16 00 14 */	cmpwi r22, 0x14
/* 80BB7BD8  3A F7 00 58 */	addi r23, r23, 0x58
/* 80BB7BDC  41 80 FE 5C */	blt lbl_80BB7A38
/* 80BB7BE0  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 80BB7BE4  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 80BB7BE8  E3 C1 00 B8 */	psq_l f30, 184(r1), 0, 0 /* qr0 */
/* 80BB7BEC  CB C1 00 B0 */	lfd f30, 0xb0(r1)
/* 80BB7BF0  E3 A1 00 A8 */	psq_l f29, 168(r1), 0, 0 /* qr0 */
/* 80BB7BF4  CB A1 00 A0 */	lfd f29, 0xa0(r1)
/* 80BB7BF8  E3 81 00 98 */	psq_l f28, 152(r1), 0, 0 /* qr0 */
/* 80BB7BFC  CB 81 00 90 */	lfd f28, 0x90(r1)
/* 80BB7C00  39 61 00 90 */	addi r11, r1, 0x90
/* 80BB7C04  4B 7A A6 00 */	b _restgpr_20
/* 80BB7C08  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80BB7C0C  7C 08 03 A6 */	mtlr r0
/* 80BB7C10  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80BB7C14  4E 80 00 20 */	blr 
