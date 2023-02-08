lbl_805B0B04:
/* 805B0B04  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 805B0B08  7C 08 02 A6 */	mflr r0
/* 805B0B0C  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 805B0B10  DB E1 00 D0 */	stfd f31, 0xd0(r1)
/* 805B0B14  F3 E1 00 D8 */	psq_st f31, 216(r1), 0, 0 /* qr0 */
/* 805B0B18  DB C1 00 C0 */	stfd f30, 0xc0(r1)
/* 805B0B1C  F3 C1 00 C8 */	psq_st f30, 200(r1), 0, 0 /* qr0 */
/* 805B0B20  DB A1 00 B0 */	stfd f29, 0xb0(r1)
/* 805B0B24  F3 A1 00 B8 */	psq_st f29, 184(r1), 0, 0 /* qr0 */
/* 805B0B28  DB 81 00 A0 */	stfd f28, 0xa0(r1)
/* 805B0B2C  F3 81 00 A8 */	psq_st f28, 168(r1), 0, 0 /* qr0 */
/* 805B0B30  DB 61 00 90 */	stfd f27, 0x90(r1)
/* 805B0B34  F3 61 00 98 */	psq_st f27, 152(r1), 0, 0 /* qr0 */
/* 805B0B38  DB 41 00 80 */	stfd f26, 0x80(r1)
/* 805B0B3C  F3 41 00 88 */	psq_st f26, 136(r1), 0, 0 /* qr0 */
/* 805B0B40  39 61 00 80 */	addi r11, r1, 0x80
/* 805B0B44  4B DB 16 79 */	bl _savegpr_21
/* 805B0B48  7C 7C 1B 78 */	mr r28, r3
/* 805B0B4C  3C 60 80 5B */	lis r3, lit_3764@ha /* 0x805B3140@ha */
/* 805B0B50  38 83 31 40 */	addi r4, r3, lit_3764@l /* 0x805B3140@l */
/* 805B0B54  C0 1C 06 A4 */	lfs f0, 0x6a4(r28)
/* 805B0B58  D0 1C 06 BC */	stfs f0, 0x6bc(r28)
/* 805B0B5C  C0 1C 06 A8 */	lfs f0, 0x6a8(r28)
/* 805B0B60  D0 1C 06 C0 */	stfs f0, 0x6c0(r28)
/* 805B0B64  C0 1C 06 AC */	lfs f0, 0x6ac(r28)
/* 805B0B68  D0 1C 06 C4 */	stfs f0, 0x6c4(r28)
/* 805B0B6C  C3 C4 00 04 */	lfs f30, 4(r4)
/* 805B0B70  D3 C1 00 38 */	stfs f30, 0x38(r1)
/* 805B0B74  D3 C1 00 3C */	stfs f30, 0x3c(r1)
/* 805B0B78  C0 1C 09 10 */	lfs f0, 0x910(r28)
/* 805B0B7C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 805B0B80  D3 C1 00 20 */	stfs f30, 0x20(r1)
/* 805B0B84  D3 C1 00 28 */	stfs f30, 0x28(r1)
/* 805B0B88  C0 04 00 C0 */	lfs f0, 0xc0(r4)
/* 805B0B8C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805B0B90  C3 BC 09 18 */	lfs f29, 0x918(r28)
/* 805B0B94  3B C0 00 01 */	li r30, 1
/* 805B0B98  3B 60 00 02 */	li r27, 2
/* 805B0B9C  3B 40 13 88 */	li r26, 0x1388
/* 805B0BA0  3B 20 1B 58 */	li r25, 0x1b58
/* 805B0BA4  3B BC 06 C8 */	addi r29, r28, 0x6c8
/* 805B0BA8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 805B0BAC  3B E3 9A 20 */	addi r31, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 805B0BB0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805B0BB4  3A E3 07 68 */	addi r23, r3, calc_mtx@l /* 0x80450768@l */
/* 805B0BB8  3C 60 80 5B */	lis r3, pow_xa@ha /* 0x805B3234@ha */
/* 805B0BBC  3B 03 32 34 */	addi r24, r3, pow_xa@l /* 0x805B3234@l */
/* 805B0BC0  C3 E4 00 94 */	lfs f31, 0x94(r4)
lbl_805B0BC4:
/* 805B0BC4  A8 7C 06 68 */	lha r3, 0x668(r28)
/* 805B0BC8  1C 03 07 D0 */	mulli r0, r3, 0x7d0
/* 805B0BCC  7C 00 CA 14 */	add r0, r0, r25
/* 805B0BD0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805B0BD4  7F 9F 04 2E */	lfsx f28, r31, r0
/* 805B0BD8  1C 03 08 FC */	mulli r0, r3, 0x8fc
/* 805B0BDC  7C 00 D2 14 */	add r0, r0, r26
/* 805B0BE0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805B0BE4  7C 7F 02 14 */	add r3, r31, r0
/* 805B0BE8  C3 63 00 04 */	lfs f27, 4(r3)
/* 805B0BEC  80 77 00 00 */	lwz r3, 0(r23)
/* 805B0BF0  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 805B0BF4  4B A5 B7 E9 */	bl mDoMtx_YrotS__FPA4_fs
/* 805B0BF8  80 77 00 00 */	lwz r3, 0(r23)
/* 805B0BFC  A8 9C 0A 2A */	lha r4, 0xa2a(r28)
/* 805B0C00  4B A5 B8 CD */	bl mDoMtx_ZrotM__FPA4_fs
/* 805B0C04  80 77 00 00 */	lwz r3, 0(r23)
/* 805B0C08  7C 98 DA 14 */	add r4, r24, r27
/* 805B0C0C  A8 84 FF FE */	lha r4, -2(r4)
/* 805B0C10  4B A5 B7 8D */	bl mDoMtx_XrotM__FPA4_fs
/* 805B0C14  FC 20 E8 90 */	fmr f1, f29
/* 805B0C18  FC 40 E8 90 */	fmr f2, f29
/* 805B0C1C  FC 60 E8 90 */	fmr f3, f29
/* 805B0C20  38 60 00 01 */	li r3, 1
/* 805B0C24  4B CC 02 81 */	bl MtxScale__FfffUc
/* 805B0C28  38 61 00 20 */	addi r3, r1, 0x20
/* 805B0C2C  38 81 00 14 */	addi r4, r1, 0x14
/* 805B0C30  4B CC 02 BD */	bl MtxPosition__FP4cXyzP4cXyz
/* 805B0C34  EC 7F 07 32 */	fmuls f3, f31, f28
/* 805B0C38  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 805B0C3C  C0 3D 00 00 */	lfs f1, 0(r29)
/* 805B0C40  C0 1D FF F4 */	lfs f0, -0xc(r29)
/* 805B0C44  EC 01 00 28 */	fsubs f0, f1, f0
/* 805B0C48  EC 02 00 2A */	fadds f0, f2, f0
/* 805B0C4C  EF 83 00 2A */	fadds f28, f3, f0
/* 805B0C50  C0 3D 00 04 */	lfs f1, 4(r29)
/* 805B0C54  C0 1D FF F8 */	lfs f0, -8(r29)
/* 805B0C58  EC 21 00 28 */	fsubs f1, f1, f0
/* 805B0C5C  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805B0C60  EF 41 00 28 */	fsubs f26, f1, f0
/* 805B0C64  EC 7F 06 F2 */	fmuls f3, f31, f27
/* 805B0C68  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 805B0C6C  C0 3D 00 08 */	lfs f1, 8(r29)
/* 805B0C70  C0 1D FF FC */	lfs f0, -4(r29)
/* 805B0C74  EC 01 00 28 */	fsubs f0, f1, f0
/* 805B0C78  EC 02 00 2A */	fadds f0, f2, f0
/* 805B0C7C  EF 63 00 2A */	fadds f27, f3, f0
/* 805B0C80  FC 20 E0 90 */	fmr f1, f28
/* 805B0C84  FC 40 D8 90 */	fmr f2, f27
/* 805B0C88  4B CB 69 ED */	bl cM_atan2s__Fff
/* 805B0C8C  7C 75 07 34 */	extsh r21, r3
/* 805B0C90  EC 3C 07 32 */	fmuls f1, f28, f28
/* 805B0C94  EC 1B 06 F2 */	fmuls f0, f27, f27
/* 805B0C98  EC 41 00 2A */	fadds f2, f1, f0
/* 805B0C9C  FC 02 F0 40 */	fcmpo cr0, f2, f30
/* 805B0CA0  40 81 00 0C */	ble lbl_805B0CAC
/* 805B0CA4  FC 00 10 34 */	frsqrte f0, f2
/* 805B0CA8  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_805B0CAC:
/* 805B0CAC  FC 20 D0 90 */	fmr f1, f26
/* 805B0CB0  4B CB 69 C5 */	bl cM_atan2s__Fff
/* 805B0CB4  7C 03 00 D0 */	neg r0, r3
/* 805B0CB8  7C 16 07 34 */	extsh r22, r0
/* 805B0CBC  80 77 00 00 */	lwz r3, 0(r23)
/* 805B0CC0  7E A4 AB 78 */	mr r4, r21
/* 805B0CC4  4B A5 B7 19 */	bl mDoMtx_YrotS__FPA4_fs
/* 805B0CC8  80 77 00 00 */	lwz r3, 0(r23)
/* 805B0CCC  7E C4 B3 78 */	mr r4, r22
/* 805B0CD0  4B A5 B6 CD */	bl mDoMtx_XrotM__FPA4_fs
/* 805B0CD4  38 61 00 38 */	addi r3, r1, 0x38
/* 805B0CD8  38 81 00 2C */	addi r4, r1, 0x2c
/* 805B0CDC  4B CC 02 11 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805B0CE0  38 61 00 08 */	addi r3, r1, 8
/* 805B0CE4  38 9D FF F4 */	addi r4, r29, -12
/* 805B0CE8  38 A1 00 2C */	addi r5, r1, 0x2c
/* 805B0CEC  4B CB 5D F9 */	bl __pl__4cXyzCFRC3Vec
/* 805B0CF0  C0 01 00 08 */	lfs f0, 8(r1)
/* 805B0CF4  D0 1D 00 00 */	stfs f0, 0(r29)
/* 805B0CF8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805B0CFC  D0 1D 00 04 */	stfs f0, 4(r29)
/* 805B0D00  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805B0D04  D0 1D 00 08 */	stfs f0, 8(r29)
/* 805B0D08  3B DE 00 01 */	addi r30, r30, 1
/* 805B0D0C  2C 1E 00 12 */	cmpwi r30, 0x12
/* 805B0D10  3B 7B 00 02 */	addi r27, r27, 2
/* 805B0D14  3B 5A 13 88 */	addi r26, r26, 0x1388
/* 805B0D18  3B 39 1B 58 */	addi r25, r25, 0x1b58
/* 805B0D1C  3B BD 00 0C */	addi r29, r29, 0xc
/* 805B0D20  41 80 FE A4 */	blt lbl_805B0BC4
/* 805B0D24  E3 E1 00 D8 */	psq_l f31, 216(r1), 0, 0 /* qr0 */
/* 805B0D28  CB E1 00 D0 */	lfd f31, 0xd0(r1)
/* 805B0D2C  E3 C1 00 C8 */	psq_l f30, 200(r1), 0, 0 /* qr0 */
/* 805B0D30  CB C1 00 C0 */	lfd f30, 0xc0(r1)
/* 805B0D34  E3 A1 00 B8 */	psq_l f29, 184(r1), 0, 0 /* qr0 */
/* 805B0D38  CB A1 00 B0 */	lfd f29, 0xb0(r1)
/* 805B0D3C  E3 81 00 A8 */	psq_l f28, 168(r1), 0, 0 /* qr0 */
/* 805B0D40  CB 81 00 A0 */	lfd f28, 0xa0(r1)
/* 805B0D44  E3 61 00 98 */	psq_l f27, 152(r1), 0, 0 /* qr0 */
/* 805B0D48  CB 61 00 90 */	lfd f27, 0x90(r1)
/* 805B0D4C  E3 41 00 88 */	psq_l f26, 136(r1), 0, 0 /* qr0 */
/* 805B0D50  CB 41 00 80 */	lfd f26, 0x80(r1)
/* 805B0D54  39 61 00 80 */	addi r11, r1, 0x80
/* 805B0D58  4B DB 14 B1 */	bl _restgpr_21
/* 805B0D5C  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 805B0D60  7C 08 03 A6 */	mtlr r0
/* 805B0D64  38 21 00 E0 */	addi r1, r1, 0xe0
/* 805B0D68  4E 80 00 20 */	blr 
