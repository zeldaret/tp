lbl_80278DA8:
/* 80278DA8  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80278DAC  7C 08 02 A6 */	mflr r0
/* 80278DB0  90 01 00 94 */	stw r0, 0x94(r1)
/* 80278DB4  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80278DB8  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80278DBC  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 80278DC0  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 80278DC4  39 61 00 70 */	addi r11, r1, 0x70
/* 80278DC8  48 0E 94 15 */	bl _savegpr_29
/* 80278DCC  7C 7D 1B 78 */	mr r29, r3
/* 80278DD0  7C 9E 23 78 */	mr r30, r4
/* 80278DD4  3C A0 80 3C */	lis r5, jpa_dl@ha /* 0x803C42E0@ha */
/* 80278DD8  3B E5 42 E0 */	addi r31, r5, jpa_dl@l /* 0x803C42E0@l */
/* 80278DDC  80 04 00 7C */	lwz r0, 0x7c(r4)
/* 80278DE0  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80278DE4  40 82 01 BC */	bne lbl_80278FA0
/* 80278DE8  38 A1 00 20 */	addi r5, r1, 0x20
/* 80278DEC  80 1D 02 00 */	lwz r0, 0x200(r29)
/* 80278DF0  54 00 10 3A */	slwi r0, r0, 2
/* 80278DF4  38 DF 00 4C */	addi r6, r31, 0x4c
/* 80278DF8  7D 86 00 2E */	lwzx r12, r6, r0
/* 80278DFC  7D 89 03 A6 */	mtctr r12
/* 80278E00  4E 80 04 21 */	bctrl 
/* 80278E04  C0 5D 01 AC */	lfs f2, 0x1ac(r29)
/* 80278E08  C0 3D 01 A8 */	lfs f1, 0x1a8(r29)
/* 80278E0C  C0 1D 01 A4 */	lfs f0, 0x1a4(r29)
/* 80278E10  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80278E14  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80278E18  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80278E1C  38 61 00 20 */	addi r3, r1, 0x20
/* 80278E20  38 81 00 14 */	addi r4, r1, 0x14
/* 80278E24  7C 65 1B 78 */	mr r5, r3
/* 80278E28  48 0C E3 8D */	bl PSVECCrossProduct
/* 80278E2C  E0 01 00 20 */	psq_l f0, 32(r1), 0, 0 /* qr0 */
/* 80278E30  10 00 00 32 */	ps_mul f0, f0, f0
/* 80278E34  C3 C1 00 28 */	lfs f30, 0x28(r1)
/* 80278E38  10 5E 07 BA */	ps_madd f2, f30, f30, f0
/* 80278E3C  10 42 00 14 */	ps_sum0 f2, f2, f0, f0
/* 80278E40  C0 22 B8 D8 */	lfs f1, lit_3281(r2)
/* 80278E44  3C 60 80 45 */	lis r3, __float_epsilon@ha /* 0x80450AEC@ha */
/* 80278E48  C0 03 0A EC */	lfs f0, __float_epsilon@l(r3)  /* 0x80450AEC@l */
/* 80278E4C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80278E50  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80278E54  4C 40 13 82 */	cror 2, 0, 2
/* 80278E58  41 82 01 48 */	beq lbl_80278FA0
/* 80278E5C  E0 21 00 20 */	psq_l f1, 32(r1), 0, 0 /* qr0 */
/* 80278E60  10 21 00 72 */	ps_mul f1, f1, f1
/* 80278E64  10 9E 0F BA */	ps_madd f4, f30, f30, f1
/* 80278E68  10 84 08 54 */	ps_sum0 f4, f4, f1, f1
/* 80278E6C  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80278E70  4C 40 13 82 */	cror 2, 0, 2
/* 80278E74  41 82 00 5C */	beq lbl_80278ED0
/* 80278E78  C0 02 B8 C0 */	lfs f0, lit_2742(r2)
/* 80278E7C  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80278E80  4C 40 13 82 */	cror 2, 0, 2
/* 80278E84  40 82 00 0C */	bne lbl_80278E90
/* 80278E88  FF E0 20 90 */	fmr f31, f4
/* 80278E8C  48 00 00 2C */	b lbl_80278EB8
lbl_80278E90:
/* 80278E90  FC 60 20 34 */	frsqrte f3, f4
/* 80278E94  FC 60 18 18 */	frsp f3, f3
/* 80278E98  C0 02 B8 B8 */	lfs f0, lit_2740(r2)
/* 80278E9C  EC 40 00 F2 */	fmuls f2, f0, f3
/* 80278EA0  C0 22 B8 DC */	lfs f1, lit_3282(r2)
/* 80278EA4  EC 03 00 F2 */	fmuls f0, f3, f3
/* 80278EA8  EC 04 00 32 */	fmuls f0, f4, f0
/* 80278EAC  EC 01 00 28 */	fsubs f0, f1, f0
/* 80278EB0  EC 02 00 32 */	fmuls f0, f2, f0
/* 80278EB4  FF E0 00 90 */	fmr f31, f0
lbl_80278EB8:
/* 80278EB8  E0 01 00 20 */	psq_l f0, 32(r1), 0, 0 /* qr0 */
/* 80278EBC  E0 21 80 28 */	psq_l f1, 40(r1), 1, 0 /* qr0 */
/* 80278EC0  10 00 07 D8 */	ps_muls0 f0, f0, f31
/* 80278EC4  F0 01 00 20 */	psq_st f0, 32(r1), 0, 0 /* qr0 */
/* 80278EC8  10 01 07 D8 */	ps_muls0 f0, f1, f31
/* 80278ECC  F0 01 80 28 */	psq_st f0, 40(r1), 1, 0 /* qr0 */
lbl_80278ED0:
/* 80278ED0  38 7D 01 84 */	addi r3, r29, 0x184
/* 80278ED4  38 81 00 20 */	addi r4, r1, 0x20
/* 80278ED8  7C 85 23 78 */	mr r5, r4
/* 80278EDC  48 0C DF 71 */	bl PSMTXMultVecSR
/* 80278EE0  38 7D 01 84 */	addi r3, r29, 0x184
/* 80278EE4  7F C4 F3 78 */	mr r4, r30
/* 80278EE8  38 A1 00 08 */	addi r5, r1, 8
/* 80278EEC  48 0C DE 81 */	bl PSMTXMultVec
/* 80278EF0  C0 3D 01 44 */	lfs f1, 0x144(r29)
/* 80278EF4  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80278EF8  EC 61 00 32 */	fmuls f3, f1, f0
/* 80278EFC  C0 3D 01 48 */	lfs f1, 0x148(r29)
/* 80278F00  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80278F04  EC 81 00 32 */	fmuls f4, f1, f0
/* 80278F08  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80278F0C  EC 02 00 F2 */	fmuls f0, f2, f3
/* 80278F10  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80278F14  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80278F18  FC 00 08 50 */	fneg f0, f1
/* 80278F1C  EC 00 01 32 */	fmuls f0, f0, f4
/* 80278F20  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80278F24  C0 01 00 08 */	lfs f0, 8(r1)
/* 80278F28  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80278F2C  EC 01 00 F2 */	fmuls f0, f1, f3
/* 80278F30  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80278F34  EC 02 01 32 */	fmuls f0, f2, f4
/* 80278F38  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80278F3C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80278F40  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80278F44  C0 02 B8 BC */	lfs f0, lit_2741(r2)
/* 80278F48  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80278F4C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80278F50  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80278F54  C0 02 B8 C0 */	lfs f0, lit_2742(r2)
/* 80278F58  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80278F5C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80278F60  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80278F64  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80278F68  38 61 00 2C */	addi r3, r1, 0x2c
/* 80278F6C  38 80 00 00 */	li r4, 0
/* 80278F70  48 0E 72 DD */	bl GXLoadPosMtxImm
/* 80278F74  7F A3 EB 78 */	mr r3, r29
/* 80278F78  38 81 00 2C */	addi r4, r1, 0x2c
/* 80278F7C  80 1D 02 10 */	lwz r0, 0x210(r29)
/* 80278F80  54 00 10 3A */	slwi r0, r0, 2
/* 80278F84  38 BF 00 40 */	addi r5, r31, 0x40
/* 80278F88  7D 85 00 2E */	lwzx r12, r5, r0
/* 80278F8C  7D 89 03 A6 */	mtctr r12
/* 80278F90  4E 80 04 21 */	bctrl 
/* 80278F94  38 7F 00 00 */	addi r3, r31, 0
/* 80278F98  38 80 00 20 */	li r4, 0x20
/* 80278F9C  48 0E 6F 55 */	bl GXCallDisplayList
lbl_80278FA0:
/* 80278FA0  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80278FA4  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80278FA8  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 80278FAC  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 80278FB0  39 61 00 70 */	addi r11, r1, 0x70
/* 80278FB4  48 0E 92 75 */	bl _restgpr_29
/* 80278FB8  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80278FBC  7C 08 03 A6 */	mtlr r0
/* 80278FC0  38 21 00 90 */	addi r1, r1, 0x90
/* 80278FC4  4E 80 00 20 */	blr 
