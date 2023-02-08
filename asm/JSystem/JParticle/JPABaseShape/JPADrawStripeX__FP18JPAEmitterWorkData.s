lbl_8027996C:
/* 8027996C  94 21 FE 30 */	stwu r1, -0x1d0(r1)
/* 80279970  7C 08 02 A6 */	mflr r0
/* 80279974  90 01 01 D4 */	stw r0, 0x1d4(r1)
/* 80279978  DB E1 01 C0 */	stfd f31, 0x1c0(r1)
/* 8027997C  F3 E1 01 C8 */	psq_st f31, 456(r1), 0, 0 /* qr0 */
/* 80279980  DB C1 01 B0 */	stfd f30, 0x1b0(r1)
/* 80279984  F3 C1 01 B8 */	psq_st f30, 440(r1), 0, 0 /* qr0 */
/* 80279988  DB A1 01 A0 */	stfd f29, 0x1a0(r1)
/* 8027998C  F3 A1 01 A8 */	psq_st f29, 424(r1), 0, 0 /* qr0 */
/* 80279990  DB 81 01 90 */	stfd f28, 0x190(r1)
/* 80279994  F3 81 01 98 */	psq_st f28, 408(r1), 0, 0 /* qr0 */
/* 80279998  DB 61 01 80 */	stfd f27, 0x180(r1)
/* 8027999C  F3 61 01 88 */	psq_st f27, 392(r1), 0, 0 /* qr0 */
/* 802799A0  DB 41 01 70 */	stfd f26, 0x170(r1)
/* 802799A4  F3 41 01 78 */	psq_st f26, 376(r1), 0, 0 /* qr0 */
/* 802799A8  DB 21 01 60 */	stfd f25, 0x160(r1)
/* 802799AC  F3 21 01 68 */	psq_st f25, 360(r1), 0, 0 /* qr0 */
/* 802799B0  DB 01 01 50 */	stfd f24, 0x150(r1)
/* 802799B4  F3 01 01 58 */	psq_st f24, 344(r1), 0, 0 /* qr0 */
/* 802799B8  DA E1 01 40 */	stfd f23, 0x140(r1)
/* 802799BC  F2 E1 01 48 */	psq_st f23, 328(r1), 0, 0 /* qr0 */
/* 802799C0  DA C1 01 30 */	stfd f22, 0x130(r1)
/* 802799C4  F2 C1 01 38 */	psq_st f22, 312(r1), 0, 0 /* qr0 */
/* 802799C8  DA A1 01 20 */	stfd f21, 0x120(r1)
/* 802799CC  F2 A1 01 28 */	psq_st f21, 296(r1), 0, 0 /* qr0 */
/* 802799D0  DA 81 01 10 */	stfd f20, 0x110(r1)
/* 802799D4  F2 81 01 18 */	psq_st f20, 280(r1), 0, 0 /* qr0 */
/* 802799D8  DA 61 01 00 */	stfd f19, 0x100(r1)
/* 802799DC  F2 61 01 08 */	psq_st f19, 264(r1), 0, 0 /* qr0 */
/* 802799E0  DA 41 00 F0 */	stfd f18, 0xf0(r1)
/* 802799E4  F2 41 00 F8 */	psq_st f18, 248(r1), 0, 0 /* qr0 */
/* 802799E8  DA 21 00 E0 */	stfd f17, 0xe0(r1)
/* 802799EC  F2 21 00 E8 */	psq_st f17, 232(r1), 0, 0 /* qr0 */
/* 802799F0  DA 01 00 D0 */	stfd f16, 0xd0(r1)
/* 802799F4  F2 01 00 D8 */	psq_st f16, 216(r1), 0, 0 /* qr0 */
/* 802799F8  D9 E1 00 C0 */	stfd f15, 0xc0(r1)
/* 802799FC  F1 E1 00 C8 */	psq_st f15, 200(r1), 0, 0 /* qr0 */
/* 80279A00  D9 C1 00 B0 */	stfd f14, 0xb0(r1)
/* 80279A04  F1 C1 00 B8 */	psq_st f14, 184(r1), 0, 0 /* qr0 */
/* 80279A08  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80279A0C  48 0E 87 B5 */	bl _savegpr_22
/* 80279A10  7C 79 1B 78 */	mr r25, r3
/* 80279A14  80 63 00 04 */	lwz r3, 4(r3)
/* 80279A18  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 80279A1C  80 99 01 E4 */	lwz r4, 0x1e4(r25)
/* 80279A20  83 E4 00 08 */	lwz r31, 8(r4)
/* 80279A24  28 1F 00 02 */	cmplwi r31, 2
/* 80279A28  41 80 09 08 */	blt lbl_8027A330
/* 80279A2C  C1 E2 B8 C0 */	lfs f15, lit_2742(r2)
/* 80279A30  FD C0 78 90 */	fmr f14, f15
/* 80279A34  C0 62 B8 BC */	lfs f3, lit_2741(r2)
/* 80279A38  C8 22 B8 C8 */	lfd f1, lit_2744(r2)
/* 80279A3C  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80279A40  3C 00 43 30 */	lis r0, 0x4330
/* 80279A44  90 01 00 68 */	stw r0, 0x68(r1)
/* 80279A48  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 80279A4C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80279A50  EC 00 18 28 */	fsubs f0, f0, f3
/* 80279A54  EF E3 00 24 */	fdivs f31, f3, f0
/* 80279A58  C0 B9 01 4C */	lfs f5, 0x14c(r25)
/* 80279A5C  EC 23 28 2A */	fadds f1, f3, f5
/* 80279A60  C0 42 B8 A8 */	lfs f2, lit_2262(r2)
/* 80279A64  C0 19 01 44 */	lfs f0, 0x144(r25)
/* 80279A68  EC 82 00 32 */	fmuls f4, f2, f0
/* 80279A6C  EC 01 01 32 */	fmuls f0, f1, f4
/* 80279A70  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 80279A74  EC 03 28 28 */	fsubs f0, f3, f5
/* 80279A78  EC 00 01 32 */	fmuls f0, f0, f4
/* 80279A7C  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80279A80  C0 99 01 50 */	lfs f4, 0x150(r25)
/* 80279A84  EC 23 20 2A */	fadds f1, f3, f4
/* 80279A88  C0 19 01 48 */	lfs f0, 0x148(r25)
/* 80279A8C  EC 42 00 32 */	fmuls f2, f2, f0
/* 80279A90  EC 01 00 B2 */	fmuls f0, f1, f2
/* 80279A94  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80279A98  EC 03 20 28 */	fsubs f0, f3, f4
/* 80279A9C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80279AA0  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80279AA4  80 63 00 00 */	lwz r3, 0(r3)
/* 80279AA8  80 03 00 08 */	lwz r0, 8(r3)
/* 80279AAC  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 80279AB0  41 82 00 24 */	beq lbl_80279AD4
/* 80279AB4  83 84 00 04 */	lwz r28, 4(r4)
/* 80279AB8  3C 60 80 28 */	lis r3, func_8027936C@ha /* 0x8027936C@ha */
/* 80279ABC  38 03 93 6C */	addi r0, r3, func_8027936C@l /* 0x8027936C@l */
/* 80279AC0  7C 1B 03 78 */	mr r27, r0
/* 80279AC4  FD C0 18 90 */	fmr f14, f3
/* 80279AC8  FD E0 18 90 */	fmr f15, f3
/* 80279ACC  FF E0 F8 50 */	fneg f31, f31
/* 80279AD0  48 00 00 14 */	b lbl_80279AE4
lbl_80279AD4:
/* 80279AD4  83 84 00 00 */	lwz r28, 0(r4)
/* 80279AD8  3C 60 80 28 */	lis r3, func_80279364@ha /* 0x80279364@ha */
/* 80279ADC  38 03 93 64 */	addi r0, r3, func_80279364@l /* 0x80279364@l */
/* 80279AE0  7C 1B 03 78 */	mr r27, r0
lbl_80279AE4:
/* 80279AE4  38 79 01 84 */	addi r3, r25, 0x184
/* 80279AE8  38 80 00 00 */	li r4, 0
/* 80279AEC  48 0E 67 61 */	bl GXLoadPosMtxImm
/* 80279AF0  7F 23 CB 78 */	mr r3, r25
/* 80279AF4  38 99 01 84 */	addi r4, r25, 0x184
/* 80279AF8  80 19 02 10 */	lwz r0, 0x210(r25)
/* 80279AFC  54 00 10 3A */	slwi r0, r0, 2
/* 80279B00  3C A0 80 3C */	lis r5, p_prj@ha /* 0x803C4320@ha */
/* 80279B04  38 A5 43 20 */	addi r5, r5, p_prj@l /* 0x803C4320@l */
/* 80279B08  7D 85 00 2E */	lwzx r12, r5, r0
/* 80279B0C  7D 89 03 A6 */	mtctr r12
/* 80279B10  4E 80 04 21 */	bctrl 
/* 80279B14  38 60 00 09 */	li r3, 9
/* 80279B18  38 80 00 01 */	li r4, 1
/* 80279B1C  48 0E 13 9D */	bl GXSetVtxDesc
/* 80279B20  38 60 00 0D */	li r3, 0xd
/* 80279B24  38 80 00 01 */	li r4, 1
/* 80279B28  48 0E 13 91 */	bl GXSetVtxDesc
/* 80279B2C  38 60 00 98 */	li r3, 0x98
/* 80279B30  38 80 00 01 */	li r4, 1
/* 80279B34  57 FD 08 3C */	slwi r29, r31, 1
/* 80279B38  57 E5 0C 3C */	rlwinm r5, r31, 1, 0x10, 0x1e
/* 80279B3C  48 0E 2C 29 */	bl GXBegin
/* 80279B40  7F 9A E3 78 */	mr r26, r28
/* 80279B44  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80279B48  3B E3 9A 20 */	addi r31, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80279B4C  C3 C2 B8 C0 */	lfs f30, lit_2742(r2)
/* 80279B50  3C 60 80 3C */	lis r3, p_direction@ha /* 0x803C432C@ha */
/* 80279B54  3A C3 43 2C */	addi r22, r3, p_direction@l /* 0x803C432C@l */
/* 80279B58  C3 A2 B8 D8 */	lfs f29, lit_3281(r2)
/* 80279B5C  3C 60 80 45 */	lis r3, __float_epsilon@ha /* 0x80450AEC@ha */
/* 80279B60  3A E3 0A EC */	addi r23, r3, __float_epsilon@l /* 0x80450AEC@l */
/* 80279B64  3F 00 CC 01 */	lis r24, 0xcc01
/* 80279B68  48 00 03 BC */	b lbl_80279F24
lbl_80279B6C:
/* 80279B6C  93 59 01 E8 */	stw r26, 0x1e8(r25)
/* 80279B70  3B DA 00 08 */	addi r30, r26, 8
/* 80279B74  C0 1A 00 08 */	lfs f0, 8(r26)
/* 80279B78  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 80279B7C  C0 1A 00 0C */	lfs f0, 0xc(r26)
/* 80279B80  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 80279B84  C2 1A 00 10 */	lfs f16, 0x10(r26)
/* 80279B88  A0 1A 00 90 */	lhz r0, 0x90(r26)
/* 80279B8C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80279B90  7C 7F 02 14 */	add r3, r31, r0
/* 80279B94  C0 63 00 00 */	lfs f3, 0(r3)
/* 80279B98  C0 83 00 04 */	lfs f4, 4(r3)
/* 80279B9C  C0 5A 00 68 */	lfs f2, 0x68(r26)
/* 80279BA0  FC 20 10 50 */	fneg f1, f2
/* 80279BA4  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 80279BA8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80279BAC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80279BB0  D3 C1 00 24 */	stfs f30, 0x24(r1)
/* 80279BB4  D3 C1 00 28 */	stfs f30, 0x28(r1)
/* 80279BB8  EC 20 00 F2 */	fmuls f1, f0, f3
/* 80279BBC  EC 00 01 32 */	fmuls f0, f0, f4
/* 80279BC0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80279BC4  D3 C1 00 24 */	stfs f30, 0x24(r1)
/* 80279BC8  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80279BCC  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80279BD0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80279BD4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80279BD8  D3 C1 00 30 */	stfs f30, 0x30(r1)
/* 80279BDC  D3 C1 00 34 */	stfs f30, 0x34(r1)
/* 80279BE0  EC 20 00 F2 */	fmuls f1, f0, f3
/* 80279BE4  EC 00 01 32 */	fmuls f0, f0, f4
/* 80279BE8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80279BEC  D3 C1 00 30 */	stfs f30, 0x30(r1)
/* 80279BF0  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80279BF4  7F 23 CB 78 */	mr r3, r25
/* 80279BF8  7F C4 F3 78 */	mr r4, r30
/* 80279BFC  38 A1 00 14 */	addi r5, r1, 0x14
/* 80279C00  80 19 02 00 */	lwz r0, 0x200(r25)
/* 80279C04  54 00 10 3A */	slwi r0, r0, 2
/* 80279C08  7D 96 00 2E */	lwzx r12, r22, r0
/* 80279C0C  7D 89 03 A6 */	mtctr r12
/* 80279C10  4E 80 04 21 */	bctrl 
/* 80279C14  E0 01 00 14 */	psq_l f0, 20(r1), 0, 0 /* qr0 */
/* 80279C18  10 00 00 32 */	ps_mul f0, f0, f0
/* 80279C1C  C2 C1 00 1C */	lfs f22, 0x1c(r1)
/* 80279C20  10 36 05 BA */	ps_madd f1, f22, f22, f0
/* 80279C24  10 21 00 14 */	ps_sum0 f1, f1, f0, f0
/* 80279C28  C0 17 00 00 */	lfs f0, 0(r23)
/* 80279C2C  EC 1D 00 32 */	fmuls f0, f29, f0
/* 80279C30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80279C34  4C 40 13 82 */	cror 2, 0, 2
/* 80279C38  40 82 00 1C */	bne lbl_80279C54
/* 80279C3C  C0 22 B8 C0 */	lfs f1, lit_2742(r2)
/* 80279C40  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80279C44  C0 02 B8 BC */	lfs f0, lit_2741(r2)
/* 80279C48  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80279C4C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80279C50  48 00 00 84 */	b lbl_80279CD4
lbl_80279C54:
/* 80279C54  E0 01 00 14 */	psq_l f0, 20(r1), 0, 0 /* qr0 */
/* 80279C58  10 00 00 32 */	ps_mul f0, f0, f0
/* 80279C5C  10 96 05 BA */	ps_madd f4, f22, f22, f0
/* 80279C60  10 84 00 14 */	ps_sum0 f4, f4, f0, f0
/* 80279C64  3C 60 80 45 */	lis r3, __float_epsilon@ha /* 0x80450AEC@ha */
/* 80279C68  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)  /* 0x80450AEC@l */
/* 80279C6C  EC 1D 00 32 */	fmuls f0, f29, f0
/* 80279C70  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80279C74  4C 40 13 82 */	cror 2, 0, 2
/* 80279C78  41 82 00 5C */	beq lbl_80279CD4
/* 80279C7C  C0 02 B8 C0 */	lfs f0, lit_2742(r2)
/* 80279C80  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80279C84  4C 40 13 82 */	cror 2, 0, 2
/* 80279C88  40 82 00 0C */	bne lbl_80279C94
/* 80279C8C  FF 80 20 90 */	fmr f28, f4
/* 80279C90  48 00 00 2C */	b lbl_80279CBC
lbl_80279C94:
/* 80279C94  FC 60 20 34 */	frsqrte f3, f4
/* 80279C98  FC 60 18 18 */	frsp f3, f3
/* 80279C9C  C0 02 B8 B8 */	lfs f0, lit_2740(r2)
/* 80279CA0  EC 40 00 F2 */	fmuls f2, f0, f3
/* 80279CA4  C0 22 B8 DC */	lfs f1, lit_3282(r2)
/* 80279CA8  EC 03 00 F2 */	fmuls f0, f3, f3
/* 80279CAC  EC 04 00 32 */	fmuls f0, f4, f0
/* 80279CB0  EC 01 00 28 */	fsubs f0, f1, f0
/* 80279CB4  EC 02 00 32 */	fmuls f0, f2, f0
/* 80279CB8  FF 80 00 90 */	fmr f28, f0
lbl_80279CBC:
/* 80279CBC  E0 01 00 14 */	psq_l f0, 20(r1), 0, 0 /* qr0 */
/* 80279CC0  E0 21 80 1C */	psq_l f1, 28(r1), 1, 0 /* qr0 */
/* 80279CC4  10 00 07 18 */	ps_muls0 f0, f0, f28
/* 80279CC8  F0 01 00 14 */	psq_st f0, 20(r1), 0, 0 /* qr0 */
/* 80279CCC  10 01 07 18 */	ps_muls0 f0, f1, f28
/* 80279CD0  F0 01 80 1C */	psq_st f0, 28(r1), 1, 0 /* qr0 */
lbl_80279CD4:
/* 80279CD4  38 7E 00 54 */	addi r3, r30, 0x54
/* 80279CD8  38 81 00 14 */	addi r4, r1, 0x14
/* 80279CDC  38 A1 00 08 */	addi r5, r1, 8
/* 80279CE0  48 0C D4 D5 */	bl PSVECCrossProduct
/* 80279CE4  E0 01 00 08 */	psq_l f0, 8(r1), 0, 0 /* qr0 */
/* 80279CE8  10 00 00 32 */	ps_mul f0, f0, f0
/* 80279CEC  C2 A1 00 10 */	lfs f21, 0x10(r1)
/* 80279CF0  10 35 05 7A */	ps_madd f1, f21, f21, f0
/* 80279CF4  10 21 00 14 */	ps_sum0 f1, f1, f0, f0
/* 80279CF8  C0 17 00 00 */	lfs f0, 0(r23)
/* 80279CFC  EC 1D 00 32 */	fmuls f0, f29, f0
/* 80279D00  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80279D04  4C 40 13 82 */	cror 2, 0, 2
/* 80279D08  40 82 00 1C */	bne lbl_80279D24
/* 80279D0C  C0 02 B8 BC */	lfs f0, lit_2741(r2)
/* 80279D10  D0 01 00 08 */	stfs f0, 8(r1)
/* 80279D14  C0 02 B8 C0 */	lfs f0, lit_2742(r2)
/* 80279D18  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80279D1C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80279D20  48 00 00 84 */	b lbl_80279DA4
lbl_80279D24:
/* 80279D24  E0 01 00 08 */	psq_l f0, 8(r1), 0, 0 /* qr0 */
/* 80279D28  10 00 00 32 */	ps_mul f0, f0, f0
/* 80279D2C  10 95 05 7A */	ps_madd f4, f21, f21, f0
/* 80279D30  10 84 00 14 */	ps_sum0 f4, f4, f0, f0
/* 80279D34  3C 60 80 45 */	lis r3, __float_epsilon@ha /* 0x80450AEC@ha */
/* 80279D38  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)  /* 0x80450AEC@l */
/* 80279D3C  EC 1D 00 32 */	fmuls f0, f29, f0
/* 80279D40  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80279D44  4C 40 13 82 */	cror 2, 0, 2
/* 80279D48  41 82 00 5C */	beq lbl_80279DA4
/* 80279D4C  C0 02 B8 C0 */	lfs f0, lit_2742(r2)
/* 80279D50  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80279D54  4C 40 13 82 */	cror 2, 0, 2
/* 80279D58  40 82 00 0C */	bne lbl_80279D64
/* 80279D5C  FF 60 20 90 */	fmr f27, f4
/* 80279D60  48 00 00 2C */	b lbl_80279D8C
lbl_80279D64:
/* 80279D64  FC 60 20 34 */	frsqrte f3, f4
/* 80279D68  FC 60 18 18 */	frsp f3, f3
/* 80279D6C  C0 02 B8 B8 */	lfs f0, lit_2740(r2)
/* 80279D70  EC 40 00 F2 */	fmuls f2, f0, f3
/* 80279D74  C0 22 B8 DC */	lfs f1, lit_3282(r2)
/* 80279D78  EC 03 00 F2 */	fmuls f0, f3, f3
/* 80279D7C  EC 04 00 32 */	fmuls f0, f4, f0
/* 80279D80  EC 01 00 28 */	fsubs f0, f1, f0
/* 80279D84  EC 02 00 32 */	fmuls f0, f2, f0
/* 80279D88  FF 60 00 90 */	fmr f27, f0
lbl_80279D8C:
/* 80279D8C  E0 01 00 08 */	psq_l f0, 8(r1), 0, 0 /* qr0 */
/* 80279D90  E0 21 80 10 */	psq_l f1, 16(r1), 1, 0 /* qr0 */
/* 80279D94  10 00 06 D8 */	ps_muls0 f0, f0, f27
/* 80279D98  F0 01 00 08 */	psq_st f0, 8(r1), 0, 0 /* qr0 */
/* 80279D9C  10 01 06 D8 */	ps_muls0 f0, f1, f27
/* 80279DA0  F0 01 80 10 */	psq_st f0, 16(r1), 1, 0 /* qr0 */
lbl_80279DA4:
/* 80279DA4  38 61 00 14 */	addi r3, r1, 0x14
/* 80279DA8  38 81 00 08 */	addi r4, r1, 8
/* 80279DAC  38 BE 00 54 */	addi r5, r30, 0x54
/* 80279DB0  48 0C D4 05 */	bl PSVECCrossProduct
/* 80279DB4  E0 1E 00 54 */	psq_l f0, 84(r30), 0, 0 /* qr0 */
/* 80279DB8  10 00 00 32 */	ps_mul f0, f0, f0
/* 80279DBC  C2 9E 00 5C */	lfs f20, 0x5c(r30)
/* 80279DC0  10 94 05 3A */	ps_madd f4, f20, f20, f0
/* 80279DC4  10 84 00 14 */	ps_sum0 f4, f4, f0, f0
/* 80279DC8  C0 17 00 00 */	lfs f0, 0(r23)
/* 80279DCC  EC 1D 00 32 */	fmuls f0, f29, f0
/* 80279DD0  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80279DD4  4C 40 13 82 */	cror 2, 0, 2
/* 80279DD8  41 82 00 5C */	beq lbl_80279E34
/* 80279DDC  C0 02 B8 C0 */	lfs f0, lit_2742(r2)
/* 80279DE0  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80279DE4  4C 40 13 82 */	cror 2, 0, 2
/* 80279DE8  40 82 00 0C */	bne lbl_80279DF4
/* 80279DEC  FF 40 20 90 */	fmr f26, f4
/* 80279DF0  48 00 00 2C */	b lbl_80279E1C
lbl_80279DF4:
/* 80279DF4  FC 60 20 34 */	frsqrte f3, f4
/* 80279DF8  FC 60 18 18 */	frsp f3, f3
/* 80279DFC  C0 02 B8 B8 */	lfs f0, lit_2740(r2)
/* 80279E00  EC 40 00 F2 */	fmuls f2, f0, f3
/* 80279E04  C0 22 B8 DC */	lfs f1, lit_3282(r2)
/* 80279E08  EC 03 00 F2 */	fmuls f0, f3, f3
/* 80279E0C  EC 04 00 32 */	fmuls f0, f4, f0
/* 80279E10  EC 01 00 28 */	fsubs f0, f1, f0
/* 80279E14  EC 02 00 32 */	fmuls f0, f2, f0
/* 80279E18  FF 40 00 90 */	fmr f26, f0
lbl_80279E1C:
/* 80279E1C  E0 1E 00 54 */	psq_l f0, 84(r30), 0, 0 /* qr0 */
/* 80279E20  E0 3E 80 5C */	psq_l f1, 92(r30), 1, 0 /* qr0 */
/* 80279E24  10 00 06 98 */	ps_muls0 f0, f0, f26
/* 80279E28  F0 1E 00 54 */	psq_st f0, 84(r30), 0, 0 /* qr0 */
/* 80279E2C  10 01 06 98 */	ps_muls0 f0, f1, f26
/* 80279E30  F0 1E 80 5C */	psq_st f0, 92(r30), 1, 0 /* qr0 */
lbl_80279E34:
/* 80279E34  C0 01 00 08 */	lfs f0, 8(r1)
/* 80279E38  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80279E3C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80279E40  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80279E44  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 80279E48  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80279E4C  D3 C1 00 44 */	stfs f30, 0x44(r1)
/* 80279E50  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80279E54  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80279E58  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80279E5C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80279E60  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 80279E64  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80279E68  D3 C1 00 54 */	stfs f30, 0x54(r1)
/* 80279E6C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80279E70  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80279E74  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80279E78  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80279E7C  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 80279E80  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80279E84  D3 C1 00 64 */	stfs f30, 0x64(r1)
/* 80279E88  38 61 00 38 */	addi r3, r1, 0x38
/* 80279E8C  38 81 00 20 */	addi r4, r1, 0x20
/* 80279E90  7C 85 23 78 */	mr r5, r4
/* 80279E94  38 C0 00 02 */	li r6, 2
/* 80279E98  48 0C D0 09 */	bl PSMTXMultVecArraySR
/* 80279E9C  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 80279EA0  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80279EA4  EC 01 00 2A */	fadds f0, f1, f0
/* 80279EA8  D0 18 80 00 */	stfs f0, -0x8000(r24)
/* 80279EAC  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80279EB0  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80279EB4  EC 01 00 2A */	fadds f0, f1, f0
/* 80279EB8  D0 18 80 00 */	stfs f0, -0x8000(r24)
/* 80279EBC  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80279EC0  EC 00 80 2A */	fadds f0, f0, f16
/* 80279EC4  D0 18 80 00 */	stfs f0, -0x8000(r24)
/* 80279EC8  C0 02 B8 C0 */	lfs f0, lit_2742(r2)
/* 80279ECC  D0 18 80 00 */	stfs f0, -0x8000(r24)
/* 80279ED0  D1 D8 80 00 */	stfs f14, -0x8000(r24)
/* 80279ED4  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 80279ED8  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 80279EDC  EC 01 00 2A */	fadds f0, f1, f0
/* 80279EE0  D0 18 80 00 */	stfs f0, -0x8000(r24)
/* 80279EE4  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80279EE8  C0 01 00 80 */	lfs f0, 0x80(r1)
/* 80279EEC  EC 01 00 2A */	fadds f0, f1, f0
/* 80279EF0  D0 18 80 00 */	stfs f0, -0x8000(r24)
/* 80279EF4  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80279EF8  EC 00 80 2A */	fadds f0, f0, f16
/* 80279EFC  D0 18 80 00 */	stfs f0, -0x8000(r24)
/* 80279F00  C0 02 B8 BC */	lfs f0, lit_2741(r2)
/* 80279F04  D0 18 80 00 */	stfs f0, -0x8000(r24)
/* 80279F08  D1 D8 80 00 */	stfs f14, -0x8000(r24)
/* 80279F0C  7F 43 D3 78 */	mr r3, r26
/* 80279F10  7F 6C DB 78 */	mr r12, r27
/* 80279F14  7D 89 03 A6 */	mtctr r12
/* 80279F18  4E 80 04 21 */	bctrl 
/* 80279F1C  7C 7A 1B 78 */	mr r26, r3
/* 80279F20  ED CE F8 2A */	fadds f14, f14, f31
lbl_80279F24:
/* 80279F24  28 1A 00 00 */	cmplwi r26, 0
/* 80279F28  40 82 FC 44 */	bne lbl_80279B6C
/* 80279F2C  FE 00 78 90 */	fmr f16, f15
/* 80279F30  38 60 00 98 */	li r3, 0x98
/* 80279F34  38 80 00 01 */	li r4, 1
/* 80279F38  57 A5 04 3E */	clrlwi r5, r29, 0x10
/* 80279F3C  48 0E 28 29 */	bl GXBegin
/* 80279F40  7F 9A E3 78 */	mr r26, r28
/* 80279F44  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80279F48  3B E3 9A 20 */	addi r31, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80279F4C  C3 A2 B8 C0 */	lfs f29, lit_2742(r2)
/* 80279F50  3C 60 80 3C */	lis r3, p_direction@ha /* 0x803C432C@ha */
/* 80279F54  3B C3 43 2C */	addi r30, r3, p_direction@l /* 0x803C432C@l */
/* 80279F58  C3 C2 B8 D8 */	lfs f30, lit_3281(r2)
/* 80279F5C  3C 60 80 45 */	lis r3, __float_epsilon@ha /* 0x80450AEC@ha */
/* 80279F60  3B A3 0A EC */	addi r29, r3, __float_epsilon@l /* 0x80450AEC@l */
/* 80279F64  3F 80 CC 01 */	lis r28, 0xcc01
/* 80279F68  48 00 03 A8 */	b lbl_8027A310
lbl_80279F6C:
/* 80279F6C  93 59 01 E8 */	stw r26, 0x1e8(r25)
/* 80279F70  3A DA 00 08 */	addi r22, r26, 8
/* 80279F74  C2 9A 00 08 */	lfs f20, 8(r26)
/* 80279F78  C2 BA 00 0C */	lfs f21, 0xc(r26)
/* 80279F7C  C2 DA 00 10 */	lfs f22, 0x10(r26)
/* 80279F80  A0 1A 00 90 */	lhz r0, 0x90(r26)
/* 80279F84  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80279F88  7C 7F 02 14 */	add r3, r31, r0
/* 80279F8C  C0 63 00 04 */	lfs f3, 4(r3)
/* 80279F90  C0 03 00 00 */	lfs f0, 0(r3)
/* 80279F94  FC 80 00 50 */	fneg f4, f0
/* 80279F98  C0 5A 00 6C */	lfs f2, 0x6c(r26)
/* 80279F9C  FC 20 10 50 */	fneg f1, f2
/* 80279FA0  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80279FA4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80279FA8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80279FAC  D3 A1 00 24 */	stfs f29, 0x24(r1)
/* 80279FB0  D3 A1 00 28 */	stfs f29, 0x28(r1)
/* 80279FB4  EC 20 00 F2 */	fmuls f1, f0, f3
/* 80279FB8  EC 00 01 32 */	fmuls f0, f0, f4
/* 80279FBC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80279FC0  D3 A1 00 24 */	stfs f29, 0x24(r1)
/* 80279FC4  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80279FC8  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80279FCC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80279FD0  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80279FD4  D3 A1 00 30 */	stfs f29, 0x30(r1)
/* 80279FD8  D3 A1 00 34 */	stfs f29, 0x34(r1)
/* 80279FDC  EC 20 00 F2 */	fmuls f1, f0, f3
/* 80279FE0  EC 00 01 32 */	fmuls f0, f0, f4
/* 80279FE4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80279FE8  D3 A1 00 30 */	stfs f29, 0x30(r1)
/* 80279FEC  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80279FF0  7F 23 CB 78 */	mr r3, r25
/* 80279FF4  7E C4 B3 78 */	mr r4, r22
/* 80279FF8  38 A1 00 14 */	addi r5, r1, 0x14
/* 80279FFC  80 19 02 00 */	lwz r0, 0x200(r25)
/* 8027A000  54 00 10 3A */	slwi r0, r0, 2
/* 8027A004  7D 9E 00 2E */	lwzx r12, r30, r0
/* 8027A008  7D 89 03 A6 */	mtctr r12
/* 8027A00C  4E 80 04 21 */	bctrl 
/* 8027A010  E0 01 00 14 */	psq_l f0, 20(r1), 0, 0 /* qr0 */
/* 8027A014  10 00 00 32 */	ps_mul f0, f0, f0
/* 8027A018  C2 61 00 1C */	lfs f19, 0x1c(r1)
/* 8027A01C  10 33 04 FA */	ps_madd f1, f19, f19, f0
/* 8027A020  10 21 00 14 */	ps_sum0 f1, f1, f0, f0
/* 8027A024  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8027A028  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8027A02C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8027A030  4C 40 13 82 */	cror 2, 0, 2
/* 8027A034  40 82 00 1C */	bne lbl_8027A050
/* 8027A038  C0 22 B8 C0 */	lfs f1, lit_2742(r2)
/* 8027A03C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8027A040  C0 02 B8 BC */	lfs f0, lit_2741(r2)
/* 8027A044  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8027A048  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8027A04C  48 00 00 84 */	b lbl_8027A0D0
lbl_8027A050:
/* 8027A050  E0 01 00 14 */	psq_l f0, 20(r1), 0, 0 /* qr0 */
/* 8027A054  10 00 00 32 */	ps_mul f0, f0, f0
/* 8027A058  10 93 04 FA */	ps_madd f4, f19, f19, f0
/* 8027A05C  10 84 00 14 */	ps_sum0 f4, f4, f0, f0
/* 8027A060  3C 60 80 45 */	lis r3, __float_epsilon@ha /* 0x80450AEC@ha */
/* 8027A064  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)  /* 0x80450AEC@l */
/* 8027A068  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8027A06C  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8027A070  4C 40 13 82 */	cror 2, 0, 2
/* 8027A074  41 82 00 5C */	beq lbl_8027A0D0
/* 8027A078  C0 02 B8 C0 */	lfs f0, lit_2742(r2)
/* 8027A07C  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8027A080  4C 40 13 82 */	cror 2, 0, 2
/* 8027A084  40 82 00 0C */	bne lbl_8027A090
/* 8027A088  FF 20 20 90 */	fmr f25, f4
/* 8027A08C  48 00 00 2C */	b lbl_8027A0B8
lbl_8027A090:
/* 8027A090  FC 60 20 34 */	frsqrte f3, f4
/* 8027A094  FC 60 18 18 */	frsp f3, f3
/* 8027A098  C0 02 B8 B8 */	lfs f0, lit_2740(r2)
/* 8027A09C  EC 40 00 F2 */	fmuls f2, f0, f3
/* 8027A0A0  C0 22 B8 DC */	lfs f1, lit_3282(r2)
/* 8027A0A4  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8027A0A8  EC 04 00 32 */	fmuls f0, f4, f0
/* 8027A0AC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8027A0B0  EC 02 00 32 */	fmuls f0, f2, f0
/* 8027A0B4  FF 20 00 90 */	fmr f25, f0
lbl_8027A0B8:
/* 8027A0B8  E0 01 00 14 */	psq_l f0, 20(r1), 0, 0 /* qr0 */
/* 8027A0BC  E0 21 80 1C */	psq_l f1, 28(r1), 1, 0 /* qr0 */
/* 8027A0C0  10 00 06 58 */	ps_muls0 f0, f0, f25
/* 8027A0C4  F0 01 00 14 */	psq_st f0, 20(r1), 0, 0 /* qr0 */
/* 8027A0C8  10 01 06 58 */	ps_muls0 f0, f1, f25
/* 8027A0CC  F0 01 80 1C */	psq_st f0, 28(r1), 1, 0 /* qr0 */
lbl_8027A0D0:
/* 8027A0D0  38 76 00 54 */	addi r3, r22, 0x54
/* 8027A0D4  38 81 00 14 */	addi r4, r1, 0x14
/* 8027A0D8  38 A1 00 08 */	addi r5, r1, 8
/* 8027A0DC  48 0C D0 D9 */	bl PSVECCrossProduct
/* 8027A0E0  E0 01 00 08 */	psq_l f0, 8(r1), 0, 0 /* qr0 */
/* 8027A0E4  10 00 00 32 */	ps_mul f0, f0, f0
/* 8027A0E8  C2 41 00 10 */	lfs f18, 0x10(r1)
/* 8027A0EC  10 32 04 BA */	ps_madd f1, f18, f18, f0
/* 8027A0F0  10 21 00 14 */	ps_sum0 f1, f1, f0, f0
/* 8027A0F4  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8027A0F8  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8027A0FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8027A100  4C 40 13 82 */	cror 2, 0, 2
/* 8027A104  40 82 00 1C */	bne lbl_8027A120
/* 8027A108  C0 02 B8 BC */	lfs f0, lit_2741(r2)
/* 8027A10C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8027A110  C0 02 B8 C0 */	lfs f0, lit_2742(r2)
/* 8027A114  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8027A118  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8027A11C  48 00 00 84 */	b lbl_8027A1A0
lbl_8027A120:
/* 8027A120  E0 01 00 08 */	psq_l f0, 8(r1), 0, 0 /* qr0 */
/* 8027A124  10 00 00 32 */	ps_mul f0, f0, f0
/* 8027A128  10 92 04 BA */	ps_madd f4, f18, f18, f0
/* 8027A12C  10 84 00 14 */	ps_sum0 f4, f4, f0, f0
/* 8027A130  3C 60 80 45 */	lis r3, __float_epsilon@ha /* 0x80450AEC@ha */
/* 8027A134  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)  /* 0x80450AEC@l */
/* 8027A138  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8027A13C  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8027A140  4C 40 13 82 */	cror 2, 0, 2
/* 8027A144  41 82 00 5C */	beq lbl_8027A1A0
/* 8027A148  C0 02 B8 C0 */	lfs f0, lit_2742(r2)
/* 8027A14C  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8027A150  4C 40 13 82 */	cror 2, 0, 2
/* 8027A154  40 82 00 0C */	bne lbl_8027A160
/* 8027A158  FF 00 20 90 */	fmr f24, f4
/* 8027A15C  48 00 00 2C */	b lbl_8027A188
lbl_8027A160:
/* 8027A160  FC 60 20 34 */	frsqrte f3, f4
/* 8027A164  FC 60 18 18 */	frsp f3, f3
/* 8027A168  C0 02 B8 B8 */	lfs f0, lit_2740(r2)
/* 8027A16C  EC 40 00 F2 */	fmuls f2, f0, f3
/* 8027A170  C0 22 B8 DC */	lfs f1, lit_3282(r2)
/* 8027A174  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8027A178  EC 04 00 32 */	fmuls f0, f4, f0
/* 8027A17C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8027A180  EC 02 00 32 */	fmuls f0, f2, f0
/* 8027A184  FF 00 00 90 */	fmr f24, f0
lbl_8027A188:
/* 8027A188  E0 01 00 08 */	psq_l f0, 8(r1), 0, 0 /* qr0 */
/* 8027A18C  E0 21 80 10 */	psq_l f1, 16(r1), 1, 0 /* qr0 */
/* 8027A190  10 00 06 18 */	ps_muls0 f0, f0, f24
/* 8027A194  F0 01 00 08 */	psq_st f0, 8(r1), 0, 0 /* qr0 */
/* 8027A198  10 01 06 18 */	ps_muls0 f0, f1, f24
/* 8027A19C  F0 01 80 10 */	psq_st f0, 16(r1), 1, 0 /* qr0 */
lbl_8027A1A0:
/* 8027A1A0  38 61 00 14 */	addi r3, r1, 0x14
/* 8027A1A4  38 81 00 08 */	addi r4, r1, 8
/* 8027A1A8  38 B6 00 54 */	addi r5, r22, 0x54
/* 8027A1AC  48 0C D0 09 */	bl PSVECCrossProduct
/* 8027A1B0  E0 16 00 54 */	psq_l f0, 84(r22), 0, 0 /* qr0 */
/* 8027A1B4  10 00 00 32 */	ps_mul f0, f0, f0
/* 8027A1B8  C2 36 00 5C */	lfs f17, 0x5c(r22)
/* 8027A1BC  10 91 04 7A */	ps_madd f4, f17, f17, f0
/* 8027A1C0  10 84 00 14 */	ps_sum0 f4, f4, f0, f0
/* 8027A1C4  C0 1D 00 00 */	lfs f0, 0(r29)
/* 8027A1C8  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8027A1CC  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8027A1D0  4C 40 13 82 */	cror 2, 0, 2
/* 8027A1D4  41 82 00 5C */	beq lbl_8027A230
/* 8027A1D8  C0 02 B8 C0 */	lfs f0, lit_2742(r2)
/* 8027A1DC  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 8027A1E0  4C 40 13 82 */	cror 2, 0, 2
/* 8027A1E4  40 82 00 0C */	bne lbl_8027A1F0
/* 8027A1E8  FE E0 20 90 */	fmr f23, f4
/* 8027A1EC  48 00 00 2C */	b lbl_8027A218
lbl_8027A1F0:
/* 8027A1F0  FC 60 20 34 */	frsqrte f3, f4
/* 8027A1F4  FC 60 18 18 */	frsp f3, f3
/* 8027A1F8  C0 02 B8 B8 */	lfs f0, lit_2740(r2)
/* 8027A1FC  EC 40 00 F2 */	fmuls f2, f0, f3
/* 8027A200  C0 22 B8 DC */	lfs f1, lit_3282(r2)
/* 8027A204  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8027A208  EC 04 00 32 */	fmuls f0, f4, f0
/* 8027A20C  EC 01 00 28 */	fsubs f0, f1, f0
/* 8027A210  EC 02 00 32 */	fmuls f0, f2, f0
/* 8027A214  FE E0 00 90 */	fmr f23, f0
lbl_8027A218:
/* 8027A218  E0 16 00 54 */	psq_l f0, 84(r22), 0, 0 /* qr0 */
/* 8027A21C  E0 36 80 5C */	psq_l f1, 92(r22), 1, 0 /* qr0 */
/* 8027A220  10 00 05 D8 */	ps_muls0 f0, f0, f23
/* 8027A224  F0 16 00 54 */	psq_st f0, 84(r22), 0, 0 /* qr0 */
/* 8027A228  10 01 05 D8 */	ps_muls0 f0, f1, f23
/* 8027A22C  F0 16 80 5C */	psq_st f0, 92(r22), 1, 0 /* qr0 */
lbl_8027A230:
/* 8027A230  C0 01 00 08 */	lfs f0, 8(r1)
/* 8027A234  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8027A238  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8027A23C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8027A240  C0 16 00 54 */	lfs f0, 0x54(r22)
/* 8027A244  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8027A248  D3 A1 00 44 */	stfs f29, 0x44(r1)
/* 8027A24C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8027A250  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8027A254  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8027A258  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8027A25C  C0 16 00 58 */	lfs f0, 0x58(r22)
/* 8027A260  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8027A264  D3 A1 00 54 */	stfs f29, 0x54(r1)
/* 8027A268  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8027A26C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8027A270  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8027A274  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8027A278  C0 16 00 5C */	lfs f0, 0x5c(r22)
/* 8027A27C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8027A280  D3 A1 00 64 */	stfs f29, 0x64(r1)
/* 8027A284  38 61 00 38 */	addi r3, r1, 0x38
/* 8027A288  38 81 00 20 */	addi r4, r1, 0x20
/* 8027A28C  7C 85 23 78 */	mr r5, r4
/* 8027A290  38 C0 00 02 */	li r6, 2
/* 8027A294  48 0C CC 0D */	bl PSMTXMultVecArraySR
/* 8027A298  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8027A29C  EC 00 A0 2A */	fadds f0, f0, f20
/* 8027A2A0  D0 1C 80 00 */	stfs f0, -0x8000(r28)
/* 8027A2A4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8027A2A8  EC 00 A8 2A */	fadds f0, f0, f21
/* 8027A2AC  D0 1C 80 00 */	stfs f0, -0x8000(r28)
/* 8027A2B0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8027A2B4  EC 00 B0 2A */	fadds f0, f0, f22
/* 8027A2B8  D0 1C 80 00 */	stfs f0, -0x8000(r28)
/* 8027A2BC  C0 02 B8 C0 */	lfs f0, lit_2742(r2)
/* 8027A2C0  D0 1C 80 00 */	stfs f0, -0x8000(r28)
/* 8027A2C4  D2 1C 80 00 */	stfs f16, -0x8000(r28)
/* 8027A2C8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8027A2CC  EC 00 A0 2A */	fadds f0, f0, f20
/* 8027A2D0  D0 1C 80 00 */	stfs f0, -0x8000(r28)
/* 8027A2D4  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8027A2D8  EC 00 A8 2A */	fadds f0, f0, f21
/* 8027A2DC  D0 1C 80 00 */	stfs f0, -0x8000(r28)
/* 8027A2E0  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8027A2E4  EC 00 B0 2A */	fadds f0, f0, f22
/* 8027A2E8  D0 1C 80 00 */	stfs f0, -0x8000(r28)
/* 8027A2EC  C0 02 B8 BC */	lfs f0, lit_2741(r2)
/* 8027A2F0  D0 1C 80 00 */	stfs f0, -0x8000(r28)
/* 8027A2F4  D2 1C 80 00 */	stfs f16, -0x8000(r28)
/* 8027A2F8  7F 43 D3 78 */	mr r3, r26
/* 8027A2FC  7F 6C DB 78 */	mr r12, r27
/* 8027A300  7D 89 03 A6 */	mtctr r12
/* 8027A304  4E 80 04 21 */	bctrl 
/* 8027A308  7C 7A 1B 78 */	mr r26, r3
/* 8027A30C  EE 10 F8 2A */	fadds f16, f16, f31
lbl_8027A310:
/* 8027A310  28 1A 00 00 */	cmplwi r26, 0
/* 8027A314  40 82 FC 58 */	bne lbl_80279F6C
/* 8027A318  38 60 00 09 */	li r3, 9
/* 8027A31C  38 80 00 02 */	li r4, 2
/* 8027A320  48 0E 0B 99 */	bl GXSetVtxDesc
/* 8027A324  38 60 00 0D */	li r3, 0xd
/* 8027A328  38 80 00 02 */	li r4, 2
/* 8027A32C  48 0E 0B 8D */	bl GXSetVtxDesc
lbl_8027A330:
/* 8027A330  E3 E1 01 C8 */	psq_l f31, 456(r1), 0, 0 /* qr0 */
/* 8027A334  CB E1 01 C0 */	lfd f31, 0x1c0(r1)
/* 8027A338  E3 C1 01 B8 */	psq_l f30, 440(r1), 0, 0 /* qr0 */
/* 8027A33C  CB C1 01 B0 */	lfd f30, 0x1b0(r1)
/* 8027A340  E3 A1 01 A8 */	psq_l f29, 424(r1), 0, 0 /* qr0 */
/* 8027A344  CB A1 01 A0 */	lfd f29, 0x1a0(r1)
/* 8027A348  E3 81 01 98 */	psq_l f28, 408(r1), 0, 0 /* qr0 */
/* 8027A34C  CB 81 01 90 */	lfd f28, 0x190(r1)
/* 8027A350  E3 61 01 88 */	psq_l f27, 392(r1), 0, 0 /* qr0 */
/* 8027A354  CB 61 01 80 */	lfd f27, 0x180(r1)
/* 8027A358  E3 41 01 78 */	psq_l f26, 376(r1), 0, 0 /* qr0 */
/* 8027A35C  CB 41 01 70 */	lfd f26, 0x170(r1)
/* 8027A360  E3 21 01 68 */	psq_l f25, 360(r1), 0, 0 /* qr0 */
/* 8027A364  CB 21 01 60 */	lfd f25, 0x160(r1)
/* 8027A368  E3 01 01 58 */	psq_l f24, 344(r1), 0, 0 /* qr0 */
/* 8027A36C  CB 01 01 50 */	lfd f24, 0x150(r1)
/* 8027A370  E2 E1 01 48 */	psq_l f23, 328(r1), 0, 0 /* qr0 */
/* 8027A374  CA E1 01 40 */	lfd f23, 0x140(r1)
/* 8027A378  E2 C1 01 38 */	psq_l f22, 312(r1), 0, 0 /* qr0 */
/* 8027A37C  CA C1 01 30 */	lfd f22, 0x130(r1)
/* 8027A380  E2 A1 01 28 */	psq_l f21, 296(r1), 0, 0 /* qr0 */
/* 8027A384  CA A1 01 20 */	lfd f21, 0x120(r1)
/* 8027A388  E2 81 01 18 */	psq_l f20, 280(r1), 0, 0 /* qr0 */
/* 8027A38C  CA 81 01 10 */	lfd f20, 0x110(r1)
/* 8027A390  E2 61 01 08 */	psq_l f19, 264(r1), 0, 0 /* qr0 */
/* 8027A394  CA 61 01 00 */	lfd f19, 0x100(r1)
/* 8027A398  E2 41 00 F8 */	psq_l f18, 248(r1), 0, 0 /* qr0 */
/* 8027A39C  CA 41 00 F0 */	lfd f18, 0xf0(r1)
/* 8027A3A0  E2 21 00 E8 */	psq_l f17, 232(r1), 0, 0 /* qr0 */
/* 8027A3A4  CA 21 00 E0 */	lfd f17, 0xe0(r1)
/* 8027A3A8  E2 01 00 D8 */	psq_l f16, 216(r1), 0, 0 /* qr0 */
/* 8027A3AC  CA 01 00 D0 */	lfd f16, 0xd0(r1)
/* 8027A3B0  E1 E1 00 C8 */	psq_l f15, 200(r1), 0, 0 /* qr0 */
/* 8027A3B4  C9 E1 00 C0 */	lfd f15, 0xc0(r1)
/* 8027A3B8  E1 C1 00 B8 */	psq_l f14, 184(r1), 0, 0 /* qr0 */
/* 8027A3BC  C9 C1 00 B0 */	lfd f14, 0xb0(r1)
/* 8027A3C0  39 61 00 B0 */	addi r11, r1, 0xb0
/* 8027A3C4  48 0E 7E 49 */	bl _restgpr_22
/* 8027A3C8  80 01 01 D4 */	lwz r0, 0x1d4(r1)
/* 8027A3CC  7C 08 03 A6 */	mtlr r0
/* 8027A3D0  38 21 01 D0 */	addi r1, r1, 0x1d0
/* 8027A3D4  4E 80 00 20 */	blr 
