lbl_80C419C4:
/* 80C419C4  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80C419C8  7C 08 02 A6 */	mflr r0
/* 80C419CC  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80C419D0  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 80C419D4  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 80C419D8  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 80C419DC  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 80C419E0  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 80C419E4  F3 A1 00 98 */	psq_st f29, 152(r1), 0, 0 /* qr0 */
/* 80C419E8  DB 81 00 80 */	stfd f28, 0x80(r1)
/* 80C419EC  F3 81 00 88 */	psq_st f28, 136(r1), 0, 0 /* qr0 */
/* 80C419F0  DB 61 00 70 */	stfd f27, 0x70(r1)
/* 80C419F4  F3 61 00 78 */	psq_st f27, 120(r1), 0, 0 /* qr0 */
/* 80C419F8  DB 41 00 60 */	stfd f26, 0x60(r1)
/* 80C419FC  F3 41 00 68 */	psq_st f26, 104(r1), 0, 0 /* qr0 */
/* 80C41A00  39 61 00 60 */	addi r11, r1, 0x60
/* 80C41A04  4B 72 07 B5 */	bl _savegpr_20
/* 80C41A08  7C 79 1B 78 */	mr r25, r3
/* 80C41A0C  7C 9A 23 78 */	mr r26, r4
/* 80C41A10  3C 60 80 C4 */	lis r3, lit_3655@ha /* 0x80C439E4@ha */
/* 80C41A14  38 83 39 E4 */	addi r4, r3, lit_3655@l /* 0x80C439E4@l */
/* 80C41A18  80 79 05 7C */	lwz r3, 0x57c(r25)
/* 80C41A1C  38 03 FF FF */	addi r0, r3, -1
/* 80C41A20  1C 60 00 0C */	mulli r3, r0, 0xc
/* 80C41A24  38 63 00 58 */	addi r3, r3, 0x58
/* 80C41A28  7C 7A 1A 14 */	add r3, r26, r3
/* 80C41A2C  C0 1A 00 4C */	lfs f0, 0x4c(r26)
/* 80C41A30  D0 03 00 00 */	stfs f0, 0(r3)
/* 80C41A34  C0 1A 00 50 */	lfs f0, 0x50(r26)
/* 80C41A38  D0 03 00 04 */	stfs f0, 4(r3)
/* 80C41A3C  C0 1A 00 54 */	lfs f0, 0x54(r26)
/* 80C41A40  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C41A44  80 79 05 7C */	lwz r3, 0x57c(r25)
/* 80C41A48  38 03 FF FE */	addi r0, r3, -2
/* 80C41A4C  1C 60 00 0C */	mulli r3, r0, 0xc
/* 80C41A50  3B 83 00 58 */	addi r28, r3, 0x58
/* 80C41A54  7F 9A E2 14 */	add r28, r26, r28
/* 80C41A58  1C 60 00 06 */	mulli r3, r0, 6
/* 80C41A5C  3B 63 01 D8 */	addi r27, r3, 0x1d8
/* 80C41A60  7F 7A DA 14 */	add r27, r26, r27
/* 80C41A64  C0 04 00 04 */	lfs f0, 4(r4)
/* 80C41A68  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C41A6C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C41A70  88 19 05 84 */	lbz r0, 0x584(r25)
/* 80C41A74  28 00 00 00 */	cmplwi r0, 0
/* 80C41A78  40 82 00 10 */	bne lbl_80C41A88
/* 80C41A7C  C0 04 00 08 */	lfs f0, 8(r4)
/* 80C41A80  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C41A84  48 00 00 0C */	b lbl_80C41A90
lbl_80C41A88:
/* 80C41A88  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80C41A8C  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_80C41A90:
/* 80C41A90  80 79 05 7C */	lwz r3, 0x57c(r25)
/* 80C41A94  3B A3 FF FE */	addi r29, r3, -2
/* 80C41A98  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80C41A9C  3B C3 9A 20 */	addi r30, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80C41AA0  C3 C4 00 20 */	lfs f30, 0x20(r4)
/* 80C41AA4  C3 E4 00 24 */	lfs f31, 0x24(r4)
/* 80C41AA8  C3 A4 00 04 */	lfs f29, 4(r4)
/* 80C41AAC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80C41AB0  3B E3 07 68 */	addi r31, r3, calc_mtx@l /* 0x80450768@l */
/* 80C41AB4  1E DD 0C E4 */	mulli r22, r29, 0xce4
/* 80C41AB8  1E FD 0E D8 */	mulli r23, r29, 0xed8
/* 80C41ABC  1F 1D 0D AC */	mulli r24, r29, 0xdac
/* 80C41AC0  48 00 01 74 */	b lbl_80C41C34
lbl_80C41AC4:
/* 80C41AC4  A8 79 06 1A */	lha r3, 0x61a(r25)
/* 80C41AC8  1C 03 15 7C */	mulli r0, r3, 0x157c
/* 80C41ACC  7C 00 B2 14 */	add r0, r0, r22
/* 80C41AD0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C41AD4  7C 1E 04 2E */	lfsx f0, r30, r0
/* 80C41AD8  C0 3A 02 38 */	lfs f1, 0x238(r26)
/* 80C41ADC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C41AE0  EC 9E 00 32 */	fmuls f4, f30, f0
/* 80C41AE4  D0 81 00 08 */	stfs f4, 8(r1)
/* 80C41AE8  1C 03 17 70 */	mulli r0, r3, 0x1770
/* 80C41AEC  7C 00 BA 14 */	add r0, r0, r23
/* 80C41AF0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C41AF4  7C 1E 04 2E */	lfsx f0, r30, r0
/* 80C41AF8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C41AFC  EC 7F 00 32 */	fmuls f3, f31, f0
/* 80C41B00  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 80C41B04  1C 03 16 A8 */	mulli r0, r3, 0x16a8
/* 80C41B08  7C 00 C2 14 */	add r0, r0, r24
/* 80C41B0C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C41B10  7C 1E 04 2E */	lfsx f0, r30, r0
/* 80C41B14  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C41B18  EC 5E 00 32 */	fmuls f2, f30, f0
/* 80C41B1C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 80C41B20  C0 3C 00 00 */	lfs f1, 0(r28)
/* 80C41B24  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80C41B28  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C41B2C  EF 84 00 2A */	fadds f28, f4, f0
/* 80C41B30  C0 3C 00 04 */	lfs f1, 4(r28)
/* 80C41B34  C0 1C 00 10 */	lfs f0, 0x10(r28)
/* 80C41B38  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C41B3C  EF 63 00 2A */	fadds f27, f3, f0
/* 80C41B40  C0 3C 00 08 */	lfs f1, 8(r28)
/* 80C41B44  C0 1C 00 14 */	lfs f0, 0x14(r28)
/* 80C41B48  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C41B4C  EF 42 00 2A */	fadds f26, f2, f0
/* 80C41B50  FC 20 E0 90 */	fmr f1, f28
/* 80C41B54  FC 40 D0 90 */	fmr f2, f26
/* 80C41B58  4B 62 5B 1D */	bl cM_atan2s__Fff
/* 80C41B5C  7C 74 07 34 */	extsh r20, r3
/* 80C41B60  EC 3C 07 32 */	fmuls f1, f28, f28
/* 80C41B64  EC 1A 06 B2 */	fmuls f0, f26, f26
/* 80C41B68  EC 41 00 2A */	fadds f2, f1, f0
/* 80C41B6C  FC 02 E8 40 */	fcmpo cr0, f2, f29
/* 80C41B70  40 81 00 0C */	ble lbl_80C41B7C
/* 80C41B74  FC 00 10 34 */	frsqrte f0, f2
/* 80C41B78  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80C41B7C:
/* 80C41B7C  FC 20 D8 90 */	fmr f1, f27
/* 80C41B80  4B 62 5A F5 */	bl cM_atan2s__Fff
/* 80C41B84  7C 03 00 D0 */	neg r0, r3
/* 80C41B88  7C 15 07 34 */	extsh r21, r0
/* 80C41B8C  80 7F 00 00 */	lwz r3, 0(r31)
/* 80C41B90  7E 84 A3 78 */	mr r4, r20
/* 80C41B94  4B 3C A8 49 */	bl mDoMtx_YrotS__FPA4_fs
/* 80C41B98  80 7F 00 00 */	lwz r3, 0(r31)
/* 80C41B9C  7E A4 AB 78 */	mr r4, r21
/* 80C41BA0  4B 3C A7 FD */	bl mDoMtx_XrotM__FPA4_fs
/* 80C41BA4  38 61 00 20 */	addi r3, r1, 0x20
/* 80C41BA8  38 81 00 14 */	addi r4, r1, 0x14
/* 80C41BAC  4B 62 F3 41 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80C41BB0  C0 3C 00 0C */	lfs f1, 0xc(r28)
/* 80C41BB4  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80C41BB8  EC 01 00 2A */	fadds f0, f1, f0
/* 80C41BBC  D0 1C 00 00 */	stfs f0, 0(r28)
/* 80C41BC0  C0 3C 00 10 */	lfs f1, 0x10(r28)
/* 80C41BC4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80C41BC8  EC 01 00 2A */	fadds f0, f1, f0
/* 80C41BCC  D0 1C 00 04 */	stfs f0, 4(r28)
/* 80C41BD0  C0 3C 00 14 */	lfs f1, 0x14(r28)
/* 80C41BD4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80C41BD8  EC 01 00 2A */	fadds f0, f1, f0
/* 80C41BDC  D0 1C 00 08 */	stfs f0, 8(r28)
/* 80C41BE0  7C 15 00 D0 */	neg r0, r21
/* 80C41BE4  B0 1B 00 00 */	sth r0, 0(r27)
/* 80C41BE8  3C 74 00 01 */	addis r3, r20, 1
/* 80C41BEC  38 03 80 00 */	addi r0, r3, -32768
/* 80C41BF0  B0 1B 00 02 */	sth r0, 2(r27)
/* 80C41BF4  80 79 05 7C */	lwz r3, 0x57c(r25)
/* 80C41BF8  38 03 FF FE */	addi r0, r3, -2
/* 80C41BFC  7C 1D 00 00 */	cmpw r29, r0
/* 80C41C00  40 82 00 1C */	bne lbl_80C41C1C
/* 80C41C04  A8 1B 00 00 */	lha r0, 0(r27)
/* 80C41C08  B0 1B 00 06 */	sth r0, 6(r27)
/* 80C41C0C  A8 1B 00 02 */	lha r0, 2(r27)
/* 80C41C10  B0 1B 00 08 */	sth r0, 8(r27)
/* 80C41C14  A8 1B 00 04 */	lha r0, 4(r27)
/* 80C41C18  B0 1B 00 0A */	sth r0, 0xa(r27)
lbl_80C41C1C:
/* 80C41C1C  3B BD FF FF */	addi r29, r29, -1
/* 80C41C20  3B 18 F2 54 */	addi r24, r24, -3500
/* 80C41C24  3A F7 F1 28 */	addi r23, r23, -3800
/* 80C41C28  3A D6 F3 1C */	addi r22, r22, -3300
/* 80C41C2C  3B 9C FF F4 */	addi r28, r28, -12
/* 80C41C30  3B 7B FF FA */	addi r27, r27, -6
lbl_80C41C34:
/* 80C41C34  2C 1D 00 00 */	cmpwi r29, 0
/* 80C41C38  40 80 FE 8C */	bge lbl_80C41AC4
/* 80C41C3C  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 80C41C40  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 80C41C44  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 80C41C48  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 80C41C4C  E3 A1 00 98 */	psq_l f29, 152(r1), 0, 0 /* qr0 */
/* 80C41C50  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 80C41C54  E3 81 00 88 */	psq_l f28, 136(r1), 0, 0 /* qr0 */
/* 80C41C58  CB 81 00 80 */	lfd f28, 0x80(r1)
/* 80C41C5C  E3 61 00 78 */	psq_l f27, 120(r1), 0, 0 /* qr0 */
/* 80C41C60  CB 61 00 70 */	lfd f27, 0x70(r1)
/* 80C41C64  E3 41 00 68 */	psq_l f26, 104(r1), 0, 0 /* qr0 */
/* 80C41C68  CB 41 00 60 */	lfd f26, 0x60(r1)
/* 80C41C6C  39 61 00 60 */	addi r11, r1, 0x60
/* 80C41C70  4B 72 05 95 */	bl _restgpr_20
/* 80C41C74  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80C41C78  7C 08 03 A6 */	mtlr r0
/* 80C41C7C  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80C41C80  4E 80 00 20 */	blr 
