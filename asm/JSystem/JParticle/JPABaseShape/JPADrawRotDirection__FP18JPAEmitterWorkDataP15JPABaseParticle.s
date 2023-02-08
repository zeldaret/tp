lbl_80278994:
/* 80278994  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 80278998  7C 08 02 A6 */	mflr r0
/* 8027899C  90 01 01 14 */	stw r0, 0x114(r1)
/* 802789A0  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 802789A4  F3 E1 01 08 */	psq_st f31, 264(r1), 0, 0 /* qr0 */
/* 802789A8  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 802789AC  F3 C1 00 F8 */	psq_st f30, 248(r1), 0, 0 /* qr0 */
/* 802789B0  DB A1 00 E0 */	stfd f29, 0xe0(r1)
/* 802789B4  F3 A1 00 E8 */	psq_st f29, 232(r1), 0, 0 /* qr0 */
/* 802789B8  DB 81 00 D0 */	stfd f28, 0xd0(r1)
/* 802789BC  F3 81 00 D8 */	psq_st f28, 216(r1), 0, 0 /* qr0 */
/* 802789C0  DB 61 00 C0 */	stfd f27, 0xc0(r1)
/* 802789C4  F3 61 00 C8 */	psq_st f27, 200(r1), 0, 0 /* qr0 */
/* 802789C8  DB 41 00 B0 */	stfd f26, 0xb0(r1)
/* 802789CC  F3 41 00 B8 */	psq_st f26, 184(r1), 0, 0 /* qr0 */
/* 802789D0  DB 21 00 A0 */	stfd f25, 0xa0(r1)
/* 802789D4  F3 21 00 A8 */	psq_st f25, 168(r1), 0, 0 /* qr0 */
/* 802789D8  DB 01 00 90 */	stfd f24, 0x90(r1)
/* 802789DC  F3 01 00 98 */	psq_st f24, 152(r1), 0, 0 /* qr0 */
/* 802789E0  39 61 00 90 */	addi r11, r1, 0x90
/* 802789E4  48 0E 97 F9 */	bl _savegpr_29
/* 802789E8  7C 7D 1B 78 */	mr r29, r3
/* 802789EC  7C 9E 23 78 */	mr r30, r4
/* 802789F0  3C A0 80 3C */	lis r5, jpa_dl@ha /* 0x803C42E0@ha */
/* 802789F4  3B E5 42 E0 */	addi r31, r5, jpa_dl@l /* 0x803C42E0@l */
/* 802789F8  80 04 00 7C */	lwz r0, 0x7c(r4)
/* 802789FC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80278A00  40 82 03 50 */	bne lbl_80278D50
/* 80278A04  A0 1E 00 88 */	lhz r0, 0x88(r30)
/* 80278A08  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80278A0C  3C A0 80 44 */	lis r5, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80278A10  38 A5 9A 20 */	addi r5, r5, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80278A14  7F 65 04 2E */	lfsx f27, r5, r0
/* 80278A18  7C A5 02 14 */	add r5, r5, r0
/* 80278A1C  C3 45 00 04 */	lfs f26, 4(r5)
/* 80278A20  38 A1 00 14 */	addi r5, r1, 0x14
/* 80278A24  80 1D 02 00 */	lwz r0, 0x200(r29)
/* 80278A28  54 00 10 3A */	slwi r0, r0, 2
/* 80278A2C  38 DF 00 4C */	addi r6, r31, 0x4c
/* 80278A30  7D 86 00 2E */	lwzx r12, r6, r0
/* 80278A34  7D 89 03 A6 */	mtctr r12
/* 80278A38  4E 80 04 21 */	bctrl 
/* 80278A3C  E0 01 00 14 */	psq_l f0, 20(r1), 0, 0 /* qr0 */
/* 80278A40  10 00 00 32 */	ps_mul f0, f0, f0
/* 80278A44  C3 01 00 1C */	lfs f24, 0x1c(r1)
/* 80278A48  10 58 06 3A */	ps_madd f2, f24, f24, f0
/* 80278A4C  10 42 00 14 */	ps_sum0 f2, f2, f0, f0
/* 80278A50  C0 22 B8 D8 */	lfs f1, lit_3281(r2)
/* 80278A54  3C 60 80 45 */	lis r3, __float_epsilon@ha /* 0x80450AEC@ha */
/* 80278A58  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)  /* 0x80450AEC@l */
/* 80278A5C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80278A60  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80278A64  4C 40 13 82 */	cror 2, 0, 2
/* 80278A68  41 82 02 E8 */	beq lbl_80278D50
/* 80278A6C  E0 21 00 14 */	psq_l f1, 20(r1), 0, 0 /* qr0 */
/* 80278A70  10 21 00 72 */	ps_mul f1, f1, f1
/* 80278A74  10 98 0E 3A */	ps_madd f4, f24, f24, f1
/* 80278A78  10 84 08 54 */	ps_sum0 f4, f4, f1, f1
/* 80278A7C  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80278A80  4C 40 13 82 */	cror 2, 0, 2
/* 80278A84  41 82 00 5C */	beq lbl_80278AE0
/* 80278A88  C0 02 B8 C0 */	lfs f0, lit_2742(r2)
/* 80278A8C  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80278A90  4C 40 13 82 */	cror 2, 0, 2
/* 80278A94  40 82 00 0C */	bne lbl_80278AA0
/* 80278A98  FF 20 20 90 */	fmr f25, f4
/* 80278A9C  48 00 00 2C */	b lbl_80278AC8
lbl_80278AA0:
/* 80278AA0  FC 60 20 34 */	frsqrte f3, f4
/* 80278AA4  FC 60 18 18 */	frsp f3, f3
/* 80278AA8  C0 02 B8 B8 */	lfs f0, lit_2740(r2)
/* 80278AAC  EC 40 00 F2 */	fmuls f2, f0, f3
/* 80278AB0  C0 22 B8 DC */	lfs f1, lit_3282(r2)
/* 80278AB4  EC 03 00 F2 */	fmuls f0, f3, f3
/* 80278AB8  EC 04 00 32 */	fmuls f0, f4, f0
/* 80278ABC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80278AC0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80278AC4  FF 20 00 90 */	fmr f25, f0
lbl_80278AC8:
/* 80278AC8  E0 01 00 14 */	psq_l f0, 20(r1), 0, 0 /* qr0 */
/* 80278ACC  E0 21 80 1C */	psq_l f1, 28(r1), 1, 0 /* qr0 */
/* 80278AD0  10 00 06 58 */	ps_muls0 f0, f0, f25
/* 80278AD4  F0 01 00 14 */	psq_st f0, 20(r1), 0, 0 /* qr0 */
/* 80278AD8  10 01 06 58 */	ps_muls0 f0, f1, f25
/* 80278ADC  F0 01 80 1C */	psq_st f0, 28(r1), 1, 0 /* qr0 */
lbl_80278AE0:
/* 80278AE0  38 7E 00 54 */	addi r3, r30, 0x54
/* 80278AE4  38 81 00 14 */	addi r4, r1, 0x14
/* 80278AE8  38 A1 00 08 */	addi r5, r1, 8
/* 80278AEC  48 0C E6 C9 */	bl PSVECCrossProduct
/* 80278AF0  E0 01 00 08 */	psq_l f0, 8(r1), 0, 0 /* qr0 */
/* 80278AF4  10 00 00 32 */	ps_mul f0, f0, f0
/* 80278AF8  C3 A1 00 10 */	lfs f29, 0x10(r1)
/* 80278AFC  10 5D 07 7A */	ps_madd f2, f29, f29, f0
/* 80278B00  10 42 00 14 */	ps_sum0 f2, f2, f0, f0
/* 80278B04  C0 22 B8 D8 */	lfs f1, lit_3281(r2)
/* 80278B08  3C 60 80 45 */	lis r3, __float_epsilon@ha /* 0x80450AEC@ha */
/* 80278B0C  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)  /* 0x80450AEC@l */
/* 80278B10  EC 01 00 32 */	fmuls f0, f1, f0
/* 80278B14  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80278B18  4C 40 13 82 */	cror 2, 0, 2
/* 80278B1C  41 82 02 34 */	beq lbl_80278D50
/* 80278B20  E0 21 00 08 */	psq_l f1, 8(r1), 0, 0 /* qr0 */
/* 80278B24  10 21 00 72 */	ps_mul f1, f1, f1
/* 80278B28  10 9D 0F 7A */	ps_madd f4, f29, f29, f1
/* 80278B2C  10 84 08 54 */	ps_sum0 f4, f4, f1, f1
/* 80278B30  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80278B34  4C 40 13 82 */	cror 2, 0, 2
/* 80278B38  41 82 00 5C */	beq lbl_80278B94
/* 80278B3C  C0 02 B8 C0 */	lfs f0, lit_2742(r2)
/* 80278B40  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80278B44  4C 40 13 82 */	cror 2, 0, 2
/* 80278B48  40 82 00 0C */	bne lbl_80278B54
/* 80278B4C  FF E0 20 90 */	fmr f31, f4
/* 80278B50  48 00 00 2C */	b lbl_80278B7C
lbl_80278B54:
/* 80278B54  FC 60 20 34 */	frsqrte f3, f4
/* 80278B58  FC 60 18 18 */	frsp f3, f3
/* 80278B5C  C0 02 B8 B8 */	lfs f0, lit_2740(r2)
/* 80278B60  EC 40 00 F2 */	fmuls f2, f0, f3
/* 80278B64  C0 22 B8 DC */	lfs f1, lit_3282(r2)
/* 80278B68  EC 03 00 F2 */	fmuls f0, f3, f3
/* 80278B6C  EC 04 00 32 */	fmuls f0, f4, f0
/* 80278B70  EC 01 00 28 */	fsubs f0, f1, f0
/* 80278B74  EC 02 00 32 */	fmuls f0, f2, f0
/* 80278B78  FF E0 00 90 */	fmr f31, f0
lbl_80278B7C:
/* 80278B7C  E0 01 00 08 */	psq_l f0, 8(r1), 0, 0 /* qr0 */
/* 80278B80  E0 21 80 10 */	psq_l f1, 16(r1), 1, 0 /* qr0 */
/* 80278B84  10 00 07 D8 */	ps_muls0 f0, f0, f31
/* 80278B88  F0 01 00 08 */	psq_st f0, 8(r1), 0, 0 /* qr0 */
/* 80278B8C  10 01 07 D8 */	ps_muls0 f0, f1, f31
/* 80278B90  F0 01 80 10 */	psq_st f0, 16(r1), 1, 0 /* qr0 */
lbl_80278B94:
/* 80278B94  38 61 00 14 */	addi r3, r1, 0x14
/* 80278B98  38 81 00 08 */	addi r4, r1, 8
/* 80278B9C  38 BE 00 54 */	addi r5, r30, 0x54
/* 80278BA0  48 0C E6 15 */	bl PSVECCrossProduct
/* 80278BA4  E0 1E 00 54 */	psq_l f0, 84(r30), 0, 0 /* qr0 */
/* 80278BA8  10 00 00 32 */	ps_mul f0, f0, f0
/* 80278BAC  C3 9E 00 5C */	lfs f28, 0x5c(r30)
/* 80278BB0  10 9C 07 3A */	ps_madd f4, f28, f28, f0
/* 80278BB4  10 84 00 14 */	ps_sum0 f4, f4, f0, f0
/* 80278BB8  C0 22 B8 D8 */	lfs f1, lit_3281(r2)
/* 80278BBC  3C 60 80 45 */	lis r3, __float_epsilon@ha /* 0x80450AEC@ha */
/* 80278BC0  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)  /* 0x80450AEC@l */
/* 80278BC4  EC 01 00 32 */	fmuls f0, f1, f0
/* 80278BC8  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80278BCC  4C 40 13 82 */	cror 2, 0, 2
/* 80278BD0  41 82 00 5C */	beq lbl_80278C2C
/* 80278BD4  C0 02 B8 C0 */	lfs f0, lit_2742(r2)
/* 80278BD8  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80278BDC  4C 40 13 82 */	cror 2, 0, 2
/* 80278BE0  40 82 00 0C */	bne lbl_80278BEC
/* 80278BE4  FF C0 20 90 */	fmr f30, f4
/* 80278BE8  48 00 00 2C */	b lbl_80278C14
lbl_80278BEC:
/* 80278BEC  FC 60 20 34 */	frsqrte f3, f4
/* 80278BF0  FC 60 18 18 */	frsp f3, f3
/* 80278BF4  C0 02 B8 B8 */	lfs f0, lit_2740(r2)
/* 80278BF8  EC 40 00 F2 */	fmuls f2, f0, f3
/* 80278BFC  C0 22 B8 DC */	lfs f1, lit_3282(r2)
/* 80278C00  EC 03 00 F2 */	fmuls f0, f3, f3
/* 80278C04  EC 04 00 32 */	fmuls f0, f4, f0
/* 80278C08  EC 01 00 28 */	fsubs f0, f1, f0
/* 80278C0C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80278C10  FF C0 00 90 */	fmr f30, f0
lbl_80278C14:
/* 80278C14  E0 1E 00 54 */	psq_l f0, 84(r30), 0, 0 /* qr0 */
/* 80278C18  E0 3E 80 5C */	psq_l f1, 92(r30), 1, 0 /* qr0 */
/* 80278C1C  10 00 07 98 */	ps_muls0 f0, f0, f30
/* 80278C20  F0 1E 00 54 */	psq_st f0, 84(r30), 0, 0 /* qr0 */
/* 80278C24  10 01 07 98 */	ps_muls0 f0, f1, f30
/* 80278C28  F0 1E 80 5C */	psq_st f0, 92(r30), 1, 0 /* qr0 */
lbl_80278C2C:
/* 80278C2C  C0 3D 01 44 */	lfs f1, 0x144(r29)
/* 80278C30  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80278C34  EF 01 00 32 */	fmuls f24, f1, f0
/* 80278C38  C0 3D 01 48 */	lfs f1, 0x148(r29)
/* 80278C3C  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80278C40  EF 21 00 32 */	fmuls f25, f1, f0
/* 80278C44  FC 20 D8 90 */	fmr f1, f27
/* 80278C48  FC 40 D0 90 */	fmr f2, f26
/* 80278C4C  38 61 00 50 */	addi r3, r1, 0x50
/* 80278C50  80 1D 02 04 */	lwz r0, 0x204(r29)
/* 80278C54  54 00 10 3A */	slwi r0, r0, 2
/* 80278C58  38 9F 00 60 */	addi r4, r31, 0x60
/* 80278C5C  7D 84 00 2E */	lwzx r12, r4, r0
/* 80278C60  7D 89 03 A6 */	mtctr r12
/* 80278C64  4E 80 04 21 */	bctrl 
/* 80278C68  38 61 00 50 */	addi r3, r1, 0x50
/* 80278C6C  FC 20 C0 90 */	fmr f1, f24
/* 80278C70  FC 40 C8 90 */	fmr f2, f25
/* 80278C74  80 1D 02 08 */	lwz r0, 0x208(r29)
/* 80278C78  54 00 10 3A */	slwi r0, r0, 2
/* 80278C7C  38 9F 00 74 */	addi r4, r31, 0x74
/* 80278C80  7D 84 00 2E */	lwzx r12, r4, r0
/* 80278C84  7D 89 03 A6 */	mtctr r12
/* 80278C88  4E 80 04 21 */	bctrl 
/* 80278C8C  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 80278C90  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80278C94  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80278C98  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80278C9C  C0 01 00 08 */	lfs f0, 8(r1)
/* 80278CA0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80278CA4  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80278CA8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80278CAC  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 80278CB0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80278CB4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80278CB8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80278CBC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80278CC0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80278CC4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80278CC8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80278CCC  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 80278CD0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80278CD4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80278CD8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80278CDC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80278CE0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80278CE4  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80278CE8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80278CEC  38 61 00 20 */	addi r3, r1, 0x20
/* 80278CF0  38 81 00 50 */	addi r4, r1, 0x50
/* 80278CF4  7C 85 23 78 */	mr r5, r4
/* 80278CF8  48 0C D7 ED */	bl PSMTXConcat
/* 80278CFC  38 7D 01 84 */	addi r3, r29, 0x184
/* 80278D00  38 81 00 50 */	addi r4, r1, 0x50
/* 80278D04  38 A1 00 20 */	addi r5, r1, 0x20
/* 80278D08  48 0C D7 DD */	bl PSMTXConcat
/* 80278D0C  38 61 00 20 */	addi r3, r1, 0x20
/* 80278D10  38 80 00 00 */	li r4, 0
/* 80278D14  48 0E 75 39 */	bl GXLoadPosMtxImm
/* 80278D18  7F A3 EB 78 */	mr r3, r29
/* 80278D1C  38 81 00 20 */	addi r4, r1, 0x20
/* 80278D20  80 1D 02 10 */	lwz r0, 0x210(r29)
/* 80278D24  54 00 10 3A */	slwi r0, r0, 2
/* 80278D28  38 BF 00 40 */	addi r5, r31, 0x40
/* 80278D2C  7D 85 00 2E */	lwzx r12, r5, r0
/* 80278D30  7D 89 03 A6 */	mtctr r12
/* 80278D34  4E 80 04 21 */	bctrl 
/* 80278D38  80 1D 02 0C */	lwz r0, 0x20c(r29)
/* 80278D3C  54 00 10 3A */	slwi r0, r0, 2
/* 80278D40  38 6D 82 20 */	la r3, p_dl(r13) /* 804507A0-_SDA_BASE_ */
/* 80278D44  7C 63 00 2E */	lwzx r3, r3, r0
/* 80278D48  38 80 00 20 */	li r4, 0x20
/* 80278D4C  48 0E 71 A5 */	bl GXCallDisplayList
lbl_80278D50:
/* 80278D50  E3 E1 01 08 */	psq_l f31, 264(r1), 0, 0 /* qr0 */
/* 80278D54  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 80278D58  E3 C1 00 F8 */	psq_l f30, 248(r1), 0, 0 /* qr0 */
/* 80278D5C  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 80278D60  E3 A1 00 E8 */	psq_l f29, 232(r1), 0, 0 /* qr0 */
/* 80278D64  CB A1 00 E0 */	lfd f29, 0xe0(r1)
/* 80278D68  E3 81 00 D8 */	psq_l f28, 216(r1), 0, 0 /* qr0 */
/* 80278D6C  CB 81 00 D0 */	lfd f28, 0xd0(r1)
/* 80278D70  E3 61 00 C8 */	psq_l f27, 200(r1), 0, 0 /* qr0 */
/* 80278D74  CB 61 00 C0 */	lfd f27, 0xc0(r1)
/* 80278D78  E3 41 00 B8 */	psq_l f26, 184(r1), 0, 0 /* qr0 */
/* 80278D7C  CB 41 00 B0 */	lfd f26, 0xb0(r1)
/* 80278D80  E3 21 00 A8 */	psq_l f25, 168(r1), 0, 0 /* qr0 */
/* 80278D84  CB 21 00 A0 */	lfd f25, 0xa0(r1)
/* 80278D88  E3 01 00 98 */	psq_l f24, 152(r1), 0, 0 /* qr0 */
/* 80278D8C  CB 01 00 90 */	lfd f24, 0x90(r1)
/* 80278D90  39 61 00 90 */	addi r11, r1, 0x90
/* 80278D94  48 0E 94 95 */	bl _restgpr_29
/* 80278D98  80 01 01 14 */	lwz r0, 0x114(r1)
/* 80278D9C  7C 08 03 A6 */	mtlr r0
/* 80278DA0  38 21 01 10 */	addi r1, r1, 0x110
/* 80278DA4  4E 80 00 20 */	blr 
