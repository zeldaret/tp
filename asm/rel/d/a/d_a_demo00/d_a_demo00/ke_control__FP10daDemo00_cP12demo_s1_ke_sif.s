lbl_804A692C:
/* 804A692C  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 804A6930  7C 08 02 A6 */	mflr r0
/* 804A6934  90 01 01 14 */	stw r0, 0x114(r1)
/* 804A6938  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 804A693C  F3 E1 01 08 */	psq_st f31, 264(r1), 0, 0 /* qr0 */
/* 804A6940  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 804A6944  F3 C1 00 F8 */	psq_st f30, 248(r1), 0, 0 /* qr0 */
/* 804A6948  DB A1 00 E0 */	stfd f29, 0xe0(r1)
/* 804A694C  F3 A1 00 E8 */	psq_st f29, 232(r1), 0, 0 /* qr0 */
/* 804A6950  DB 81 00 D0 */	stfd f28, 0xd0(r1)
/* 804A6954  F3 81 00 D8 */	psq_st f28, 216(r1), 0, 0 /* qr0 */
/* 804A6958  DB 61 00 C0 */	stfd f27, 0xc0(r1)
/* 804A695C  F3 61 00 C8 */	psq_st f27, 200(r1), 0, 0 /* qr0 */
/* 804A6960  DB 41 00 B0 */	stfd f26, 0xb0(r1)
/* 804A6964  F3 41 00 B8 */	psq_st f26, 184(r1), 0, 0 /* qr0 */
/* 804A6968  DB 21 00 A0 */	stfd f25, 0xa0(r1)
/* 804A696C  F3 21 00 A8 */	psq_st f25, 168(r1), 0, 0 /* qr0 */
/* 804A6970  DB 01 00 90 */	stfd f24, 0x90(r1)
/* 804A6974  F3 01 00 98 */	psq_st f24, 152(r1), 0, 0 /* qr0 */
/* 804A6978  DA E1 00 80 */	stfd f23, 0x80(r1)
/* 804A697C  F2 E1 00 88 */	psq_st f23, 136(r1), 0, 0 /* qr0 */
/* 804A6980  DA C1 00 70 */	stfd f22, 0x70(r1)
/* 804A6984  F2 C1 00 78 */	psq_st f22, 120(r1), 0, 0 /* qr0 */
/* 804A6988  39 61 00 70 */	addi r11, r1, 0x70
/* 804A698C  4B EB B8 29 */	bl _savegpr_19
/* 804A6990  7C 73 1B 78 */	mr r19, r3
/* 804A6994  7C 99 23 78 */	mr r25, r4
/* 804A6998  3C 60 80 4B */	lis r3, lit_3727@ha /* 0x804A8860@ha */
/* 804A699C  3A C3 88 60 */	addi r22, r3, lit_3727@l /* 0x804A8860@l */
/* 804A69A0  3B 79 00 0C */	addi r27, r25, 0xc
/* 804A69A4  3B 59 00 CC */	addi r26, r25, 0xcc
/* 804A69A8  C0 16 00 0C */	lfs f0, 0xc(r22)
/* 804A69AC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804A69B0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804A69B4  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 804A69B8  C0 36 00 D4 */	lfs f1, 0xd4(r22)
/* 804A69BC  4B DC 11 11 */	bl cM_rndF2__Ff
/* 804A69C0  FC 00 08 1E */	fctiwz f0, f1
/* 804A69C4  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 804A69C8  80 61 00 34 */	lwz r3, 0x34(r1)
/* 804A69CC  C3 33 04 D4 */	lfs f25, 0x4d4(r19)
/* 804A69D0  C3 16 00 D8 */	lfs f24, 0xd8(r22)
/* 804A69D4  88 13 06 B3 */	lbz r0, 0x6b3(r19)
/* 804A69D8  7C 00 07 75 */	extsb. r0, r0
/* 804A69DC  41 82 00 08 */	beq lbl_804A69E4
/* 804A69E0  C3 16 00 0C */	lfs f24, 0xc(r22)
lbl_804A69E4:
/* 804A69E4  3B 80 00 01 */	li r28, 1
/* 804A69E8  3B 00 17 70 */	li r24, 0x1770
/* 804A69EC  3A E0 1B 58 */	li r23, 0x1b58
/* 804A69F0  7C 7D 07 34 */	extsh r29, r3
/* 804A69F4  3B DD 27 10 */	addi r30, r29, 0x2710
/* 804A69F8  C3 76 00 DC */	lfs f27, 0xdc(r22)
/* 804A69FC  CB 96 00 58 */	lfd f28, 0x58(r22)
/* 804A6A00  3F E0 43 30 */	lis r31, 0x4330
/* 804A6A04  C3 B6 00 44 */	lfs f29, 0x44(r22)
/* 804A6A08  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804A6A0C  3A A3 9A 20 */	addi r21, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804A6A10  C3 D6 00 D0 */	lfs f30, 0xd0(r22)
/* 804A6A14  C3 F6 00 0C */	lfs f31, 0xc(r22)
/* 804A6A18  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804A6A1C  3A C3 07 68 */	addi r22, r3, calc_mtx@l /* 0x80450768@l */
lbl_804A6A20:
/* 804A6A20  20 1C 00 10 */	subfic r0, r28, 0x10
/* 804A6A24  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804A6A28  90 01 00 34 */	stw r0, 0x34(r1)
/* 804A6A2C  93 E1 00 30 */	stw r31, 0x30(r1)
/* 804A6A30  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804A6A34  EC 00 E0 28 */	fsubs f0, f0, f28
/* 804A6A38  EC BB 00 32 */	fmuls f5, f27, f0
/* 804A6A3C  C0 5A 00 00 */	lfs f2, 0(r26)
/* 804A6A40  7C 1D BA 14 */	add r0, r29, r23
/* 804A6A44  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804A6A48  7C 15 04 2E */	lfsx f0, r21, r0
/* 804A6A4C  EC 3D 00 32 */	fmuls f1, f29, f0
/* 804A6A50  C0 19 01 80 */	lfs f0, 0x180(r25)
/* 804A6A54  EC 00 01 72 */	fmuls f0, f0, f5
/* 804A6A58  EC 01 00 2A */	fadds f0, f1, f0
/* 804A6A5C  EC 82 00 2A */	fadds f4, f2, f0
/* 804A6A60  D0 81 00 08 */	stfs f4, 8(r1)
/* 804A6A64  C0 3A 00 04 */	lfs f1, 4(r26)
/* 804A6A68  C0 19 01 84 */	lfs f0, 0x184(r25)
/* 804A6A6C  EC 00 01 72 */	fmuls f0, f0, f5
/* 804A6A70  EC 61 00 2A */	fadds f3, f1, f0
/* 804A6A74  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 804A6A78  C0 5A 00 08 */	lfs f2, 8(r26)
/* 804A6A7C  7C 1E C2 14 */	add r0, r30, r24
/* 804A6A80  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804A6A84  7C 15 04 2E */	lfsx f0, r21, r0
/* 804A6A88  EC 3D 00 32 */	fmuls f1, f29, f0
/* 804A6A8C  C0 19 01 88 */	lfs f0, 0x188(r25)
/* 804A6A90  EC 00 01 72 */	fmuls f0, f0, f5
/* 804A6A94  EC 01 00 2A */	fadds f0, f1, f0
/* 804A6A98  EC 42 00 2A */	fadds f2, f2, f0
/* 804A6A9C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 804A6AA0  C0 3B 00 00 */	lfs f1, 0(r27)
/* 804A6AA4  C0 1B FF F4 */	lfs f0, -0xc(r27)
/* 804A6AA8  EC 01 00 28 */	fsubs f0, f1, f0
/* 804A6AAC  EF 44 00 2A */	fadds f26, f4, f0
/* 804A6AB0  C0 3B 00 08 */	lfs f1, 8(r27)
/* 804A6AB4  C0 1B FF FC */	lfs f0, -4(r27)
/* 804A6AB8  EC 01 00 28 */	fsubs f0, f1, f0
/* 804A6ABC  EE C2 00 2A */	fadds f22, f2, f0
/* 804A6AC0  C0 1B 00 04 */	lfs f0, 4(r27)
/* 804A6AC4  EC 00 18 2A */	fadds f0, f0, f3
/* 804A6AC8  EC 3E 00 2A */	fadds f1, f30, f0
/* 804A6ACC  FC 01 C8 40 */	fcmpo cr0, f1, f25
/* 804A6AD0  40 80 00 08 */	bge lbl_804A6AD8
/* 804A6AD4  FC 20 C8 90 */	fmr f1, f25
lbl_804A6AD8:
/* 804A6AD8  C0 1B FF F8 */	lfs f0, -8(r27)
/* 804A6ADC  EE E1 00 28 */	fsubs f23, f1, f0
/* 804A6AE0  FC 20 B8 90 */	fmr f1, f23
/* 804A6AE4  FC 40 B0 90 */	fmr f2, f22
/* 804A6AE8  4B DC 0B 8D */	bl cM_atan2s__Fff
/* 804A6AEC  7C 03 00 D0 */	neg r0, r3
/* 804A6AF0  7C 14 07 34 */	extsh r20, r0
/* 804A6AF4  EC 37 05 F2 */	fmuls f1, f23, f23
/* 804A6AF8  EC 16 05 B2 */	fmuls f0, f22, f22
/* 804A6AFC  EC 41 00 2A */	fadds f2, f1, f0
/* 804A6B00  FC 02 F8 40 */	fcmpo cr0, f2, f31
/* 804A6B04  40 81 00 0C */	ble lbl_804A6B10
/* 804A6B08  FC 00 10 34 */	frsqrte f0, f2
/* 804A6B0C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_804A6B10:
/* 804A6B10  FC 20 D0 90 */	fmr f1, f26
/* 804A6B14  4B DC 0B 61 */	bl cM_atan2s__Fff
/* 804A6B18  7C 73 07 34 */	extsh r19, r3
/* 804A6B1C  80 76 00 00 */	lwz r3, 0(r22)
/* 804A6B20  7E 84 A3 78 */	mr r4, r20
/* 804A6B24  4B B6 58 21 */	bl mDoMtx_XrotS__FPA4_fs
/* 804A6B28  80 76 00 00 */	lwz r3, 0(r22)
/* 804A6B2C  7E 64 9B 78 */	mr r4, r19
/* 804A6B30  4B B6 59 05 */	bl mDoMtx_YrotM__FPA4_fs
/* 804A6B34  38 61 00 20 */	addi r3, r1, 0x20
/* 804A6B38  38 81 00 14 */	addi r4, r1, 0x14
/* 804A6B3C  4B DC A3 B1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 804A6B40  C0 1B 00 00 */	lfs f0, 0(r27)
/* 804A6B44  D0 1A 00 00 */	stfs f0, 0(r26)
/* 804A6B48  C0 1B 00 04 */	lfs f0, 4(r27)
/* 804A6B4C  D0 1A 00 04 */	stfs f0, 4(r26)
/* 804A6B50  C0 1B 00 08 */	lfs f0, 8(r27)
/* 804A6B54  D0 1A 00 08 */	stfs f0, 8(r26)
/* 804A6B58  C0 3B FF F4 */	lfs f1, -0xc(r27)
/* 804A6B5C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804A6B60  EC 01 00 2A */	fadds f0, f1, f0
/* 804A6B64  D0 1B 00 00 */	stfs f0, 0(r27)
/* 804A6B68  C0 3B FF F8 */	lfs f1, -8(r27)
/* 804A6B6C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 804A6B70  EC 01 00 2A */	fadds f0, f1, f0
/* 804A6B74  D0 1B 00 04 */	stfs f0, 4(r27)
/* 804A6B78  C0 3B FF FC */	lfs f1, -4(r27)
/* 804A6B7C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804A6B80  EC 01 00 2A */	fadds f0, f1, f0
/* 804A6B84  D0 1B 00 08 */	stfs f0, 8(r27)
/* 804A6B88  C0 3B 00 00 */	lfs f1, 0(r27)
/* 804A6B8C  C0 1A 00 00 */	lfs f0, 0(r26)
/* 804A6B90  EC 01 00 28 */	fsubs f0, f1, f0
/* 804A6B94  EC 18 00 32 */	fmuls f0, f24, f0
/* 804A6B98  D0 1A 00 00 */	stfs f0, 0(r26)
/* 804A6B9C  C0 3B 00 04 */	lfs f1, 4(r27)
/* 804A6BA0  C0 1A 00 04 */	lfs f0, 4(r26)
/* 804A6BA4  EC 01 00 28 */	fsubs f0, f1, f0
/* 804A6BA8  EC 18 00 32 */	fmuls f0, f24, f0
/* 804A6BAC  D0 1A 00 04 */	stfs f0, 4(r26)
/* 804A6BB0  C0 3B 00 08 */	lfs f1, 8(r27)
/* 804A6BB4  C0 1A 00 08 */	lfs f0, 8(r26)
/* 804A6BB8  EC 01 00 28 */	fsubs f0, f1, f0
/* 804A6BBC  EC 18 00 32 */	fmuls f0, f24, f0
/* 804A6BC0  D0 1A 00 08 */	stfs f0, 8(r26)
/* 804A6BC4  3B 9C 00 01 */	addi r28, r28, 1
/* 804A6BC8  2C 1C 00 10 */	cmpwi r28, 0x10
/* 804A6BCC  3B 18 17 70 */	addi r24, r24, 0x1770
/* 804A6BD0  3A F7 1B 58 */	addi r23, r23, 0x1b58
/* 804A6BD4  3B 7B 00 0C */	addi r27, r27, 0xc
/* 804A6BD8  3B 5A 00 0C */	addi r26, r26, 0xc
/* 804A6BDC  41 80 FE 44 */	blt lbl_804A6A20
/* 804A6BE0  E3 E1 01 08 */	psq_l f31, 264(r1), 0, 0 /* qr0 */
/* 804A6BE4  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 804A6BE8  E3 C1 00 F8 */	psq_l f30, 248(r1), 0, 0 /* qr0 */
/* 804A6BEC  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 804A6BF0  E3 A1 00 E8 */	psq_l f29, 232(r1), 0, 0 /* qr0 */
/* 804A6BF4  CB A1 00 E0 */	lfd f29, 0xe0(r1)
/* 804A6BF8  E3 81 00 D8 */	psq_l f28, 216(r1), 0, 0 /* qr0 */
/* 804A6BFC  CB 81 00 D0 */	lfd f28, 0xd0(r1)
/* 804A6C00  E3 61 00 C8 */	psq_l f27, 200(r1), 0, 0 /* qr0 */
/* 804A6C04  CB 61 00 C0 */	lfd f27, 0xc0(r1)
/* 804A6C08  E3 41 00 B8 */	psq_l f26, 184(r1), 0, 0 /* qr0 */
/* 804A6C0C  CB 41 00 B0 */	lfd f26, 0xb0(r1)
/* 804A6C10  E3 21 00 A8 */	psq_l f25, 168(r1), 0, 0 /* qr0 */
/* 804A6C14  CB 21 00 A0 */	lfd f25, 0xa0(r1)
/* 804A6C18  E3 01 00 98 */	psq_l f24, 152(r1), 0, 0 /* qr0 */
/* 804A6C1C  CB 01 00 90 */	lfd f24, 0x90(r1)
/* 804A6C20  E2 E1 00 88 */	psq_l f23, 136(r1), 0, 0 /* qr0 */
/* 804A6C24  CA E1 00 80 */	lfd f23, 0x80(r1)
/* 804A6C28  E2 C1 00 78 */	psq_l f22, 120(r1), 0, 0 /* qr0 */
/* 804A6C2C  CA C1 00 70 */	lfd f22, 0x70(r1)
/* 804A6C30  39 61 00 70 */	addi r11, r1, 0x70
/* 804A6C34  4B EB B5 CD */	bl _restgpr_19
/* 804A6C38  80 01 01 14 */	lwz r0, 0x114(r1)
/* 804A6C3C  7C 08 03 A6 */	mtlr r0
/* 804A6C40  38 21 01 10 */	addi r1, r1, 0x110
/* 804A6C44  4E 80 00 20 */	blr 
