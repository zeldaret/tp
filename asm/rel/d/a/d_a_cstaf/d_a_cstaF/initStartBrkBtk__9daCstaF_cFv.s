lbl_804DF1A4:
/* 804DF1A4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804DF1A8  7C 08 02 A6 */	mflr r0
/* 804DF1AC  90 01 00 74 */	stw r0, 0x74(r1)
/* 804DF1B0  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 804DF1B4  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 804DF1B8  39 61 00 60 */	addi r11, r1, 0x60
/* 804DF1BC  4B E8 30 19 */	bl _savegpr_27
/* 804DF1C0  7C 7E 1B 78 */	mr r30, r3
/* 804DF1C4  3C 80 80 4E */	lis r4, lit_3765@ha /* 0x804DF8B8@ha */
/* 804DF1C8  3B E4 F8 B8 */	addi r31, r4, lit_3765@l /* 0x804DF8B8@l */
/* 804DF1CC  38 00 00 01 */	li r0, 1
/* 804DF1D0  98 03 0B 0C */	stb r0, 0xb0c(r3)
/* 804DF1D4  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 804DF1D8  D0 03 05 D0 */	stfs f0, 0x5d0(r3)
/* 804DF1DC  A8 03 05 C6 */	lha r0, 0x5c6(r3)
/* 804DF1E0  C8 3F 00 78 */	lfd f1, 0x78(r31)
/* 804DF1E4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804DF1E8  90 01 00 3C */	stw r0, 0x3c(r1)
/* 804DF1EC  3C 00 43 30 */	lis r0, 0x4330
/* 804DF1F0  90 01 00 38 */	stw r0, 0x38(r1)
/* 804DF1F4  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 804DF1F8  EC 00 08 28 */	fsubs f0, f0, f1
/* 804DF1FC  D0 03 05 D0 */	stfs f0, 0x5d0(r3)
/* 804DF200  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 804DF204  D0 03 05 CC */	stfs f0, 0x5cc(r3)
/* 804DF208  38 00 00 00 */	li r0, 0
/* 804DF20C  98 03 05 C5 */	stb r0, 0x5c5(r3)
/* 804DF210  88 03 0B 09 */	lbz r0, 0xb09(r3)
/* 804DF214  54 00 08 3C */	slwi r0, r0, 1
/* 804DF218  38 9F 00 D4 */	addi r4, r31, 0xd4
/* 804DF21C  7C 84 02 2E */	lhzx r4, r4, r0
/* 804DF220  4B FF FE B9 */	bl initBrk__9daCstaF_cFUs
/* 804DF224  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804DF228  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804DF22C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 804DF230  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804DF234  7C 64 02 14 */	add r3, r4, r0
/* 804DF238  C0 03 00 04 */	lfs f0, 4(r3)
/* 804DF23C  C0 3E 0B 34 */	lfs f1, 0xb34(r30)
/* 804DF240  C0 5F 00 D8 */	lfs f2, 0xd8(r31)
/* 804DF244  EC 02 00 32 */	fmuls f0, f2, f0
/* 804DF248  EC 81 00 2A */	fadds f4, f1, f0
/* 804DF24C  C0 7E 0B 30 */	lfs f3, 0xb30(r30)
/* 804DF250  7C 04 04 2E */	lfsx f0, r4, r0
/* 804DF254  C0 3E 0B 2C */	lfs f1, 0xb2c(r30)
/* 804DF258  EC 02 00 32 */	fmuls f0, f2, f0
/* 804DF25C  EC 01 00 2A */	fadds f0, f1, f0
/* 804DF260  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804DF264  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 804DF268  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 804DF26C  80 1E 04 E4 */	lwz r0, 0x4e4(r30)
/* 804DF270  90 01 00 20 */	stw r0, 0x20(r1)
/* 804DF274  A0 1E 04 E8 */	lhz r0, 0x4e8(r30)
/* 804DF278  B0 01 00 24 */	sth r0, 0x24(r1)
/* 804DF27C  3B 60 00 00 */	li r27, 0
/* 804DF280  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804DF284  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804DF288  3F A0 00 01 */	lis r29, 0x0001 /* 0x000088BB@ha */
/* 804DF28C  C3 FF 00 DC */	lfs f31, 0xdc(r31)
lbl_804DF290:
/* 804DF290  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 804DF294  38 80 00 00 */	li r4, 0
/* 804DF298  90 81 00 08 */	stw r4, 8(r1)
/* 804DF29C  38 00 FF FF */	li r0, -1
/* 804DF2A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 804DF2A4  90 81 00 10 */	stw r4, 0x10(r1)
/* 804DF2A8  90 81 00 14 */	stw r4, 0x14(r1)
/* 804DF2AC  90 81 00 18 */	stw r4, 0x18(r1)
/* 804DF2B0  38 80 00 00 */	li r4, 0
/* 804DF2B4  38 BD 88 BB */	addi r5, r29, 0x88BB /* 0x000088BB@l */
/* 804DF2B8  38 C1 00 28 */	addi r6, r1, 0x28
/* 804DF2BC  38 E0 00 00 */	li r7, 0
/* 804DF2C0  39 01 00 20 */	addi r8, r1, 0x20
/* 804DF2C4  39 20 00 00 */	li r9, 0
/* 804DF2C8  39 40 00 FF */	li r10, 0xff
/* 804DF2CC  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 804DF2D0  4B B6 D7 C1 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804DF2D4  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 804DF2D8  38 80 00 00 */	li r4, 0
/* 804DF2DC  90 81 00 08 */	stw r4, 8(r1)
/* 804DF2E0  38 00 FF FF */	li r0, -1
/* 804DF2E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 804DF2E8  90 81 00 10 */	stw r4, 0x10(r1)
/* 804DF2EC  90 81 00 14 */	stw r4, 0x14(r1)
/* 804DF2F0  90 81 00 18 */	stw r4, 0x18(r1)
/* 804DF2F4  38 80 00 00 */	li r4, 0
/* 804DF2F8  38 BD 88 BC */	addi r5, r29, -30532
/* 804DF2FC  38 C1 00 28 */	addi r6, r1, 0x28
/* 804DF300  38 E0 00 00 */	li r7, 0
/* 804DF304  39 01 00 20 */	addi r8, r1, 0x20
/* 804DF308  39 20 00 00 */	li r9, 0
/* 804DF30C  39 40 00 FF */	li r10, 0xff
/* 804DF310  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 804DF314  4B B6 D7 7D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804DF318  C0 1E 0B 2C */	lfs f0, 0xb2c(r30)
/* 804DF31C  EC 3F 00 32 */	fmuls f1, f31, f0
/* 804DF320  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 804DF324  EC 01 00 28 */	fsubs f0, f1, f0
/* 804DF328  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804DF32C  C0 1E 0B 34 */	lfs f0, 0xb34(r30)
/* 804DF330  EC 3F 00 32 */	fmuls f1, f31, f0
/* 804DF334  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 804DF338  EC 01 00 28 */	fsubs f0, f1, f0
/* 804DF33C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804DF340  A8 61 00 22 */	lha r3, 0x22(r1)
/* 804DF344  3C 63 00 01 */	addis r3, r3, 1
/* 804DF348  38 03 80 00 */	addi r0, r3, -32768
/* 804DF34C  B0 01 00 22 */	sth r0, 0x22(r1)
/* 804DF350  3B 7B 00 01 */	addi r27, r27, 1
/* 804DF354  2C 1B 00 02 */	cmpwi r27, 2
/* 804DF358  41 80 FF 38 */	blt lbl_804DF290
/* 804DF35C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 804DF360  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 804DF364  39 61 00 60 */	addi r11, r1, 0x60
/* 804DF368  4B E8 2E B9 */	bl _restgpr_27
/* 804DF36C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804DF370  7C 08 03 A6 */	mtlr r0
/* 804DF374  38 21 00 70 */	addi r1, r1, 0x70
/* 804DF378  4E 80 00 20 */	blr 
