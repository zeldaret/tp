lbl_80BA3700:
/* 80BA3700  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80BA3704  7C 08 02 A6 */	mflr r0
/* 80BA3708  90 01 00 44 */	stw r0, 0x44(r1)
/* 80BA370C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80BA3710  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80BA3714  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80BA3718  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80BA371C  7C 7F 1B 78 */	mr r31, r3
/* 80BA3720  C0 43 06 28 */	lfs f2, 0x628(r3)
/* 80BA3724  80 03 06 2C */	lwz r0, 0x62c(r3)
/* 80BA3728  3C 60 80 BA */	lis r3, lit_4257@ha
/* 80BA372C  C8 23 54 C0 */	lfd f1, lit_4257@l(r3)
/* 80BA3730  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BA3734  3C 00 43 30 */	lis r0, 0x4330
/* 80BA3738  90 01 00 20 */	stw r0, 0x20(r1)
/* 80BA373C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80BA3740  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BA3744  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80BA3748  40 81 00 24 */	ble lbl_80BA376C
/* 80BA374C  38 7F 06 34 */	addi r3, r31, 0x634
/* 80BA3750  3C 80 80 BA */	lis r4, lit_3969@ha
/* 80BA3754  C0 24 54 74 */	lfs f1, lit_3969@l(r4)
/* 80BA3758  3C 80 80 BA */	lis r4, lit_3934@ha
/* 80BA375C  C0 44 54 6C */	lfs f2, lit_3934@l(r4)
/* 80BA3760  FC 60 10 90 */	fmr f3, f2
/* 80BA3764  4B 6C C2 D8 */	b cLib_addCalc2__FPffff
/* 80BA3768  48 00 00 1C */	b lbl_80BA3784
lbl_80BA376C:
/* 80BA376C  38 7F 06 34 */	addi r3, r31, 0x634
/* 80BA3770  C0 3F 06 38 */	lfs f1, 0x638(r31)
/* 80BA3774  3C 80 80 BA */	lis r4, lit_3934@ha
/* 80BA3778  C0 44 54 6C */	lfs f2, lit_3934@l(r4)
/* 80BA377C  FC 60 10 90 */	fmr f3, f2
/* 80BA3780  4B 6C C2 BC */	b cLib_addCalc2__FPffff
lbl_80BA3784:
/* 80BA3784  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BA3788  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80BA378C  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80BA3790  38 00 00 FF */	li r0, 0xff
/* 80BA3794  90 01 00 08 */	stw r0, 8(r1)
/* 80BA3798  38 80 00 00 */	li r4, 0
/* 80BA379C  90 81 00 0C */	stw r4, 0xc(r1)
/* 80BA37A0  38 00 FF FF */	li r0, -1
/* 80BA37A4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BA37A8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80BA37AC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80BA37B0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80BA37B4  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80BA37B8  38 A0 00 00 */	li r5, 0
/* 80BA37BC  38 C0 0A 1B */	li r6, 0xa1b
/* 80BA37C0  38 FF 04 D0 */	addi r7, r31, 0x4d0
/* 80BA37C4  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80BA37C8  39 3F 04 E4 */	addi r9, r31, 0x4e4
/* 80BA37CC  39 40 00 00 */	li r10, 0
/* 80BA37D0  3D 60 80 BA */	lis r11, lit_3934@ha
/* 80BA37D4  C0 2B 54 6C */	lfs f1, lit_3934@l(r11)
/* 80BA37D8  4B 4A 9C F4 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80BA37DC  90 7F 05 70 */	stw r3, 0x570(r31)
/* 80BA37E0  C3 FF 06 34 */	lfs f31, 0x634(r31)
/* 80BA37E4  80 7E 5D 3C */	lwz r3, 0x5d3c(r30)
/* 80BA37E8  38 63 02 10 */	addi r3, r3, 0x210
/* 80BA37EC  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80BA37F0  4B 4A 81 28 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 80BA37F4  28 03 00 00 */	cmplwi r3, 0
/* 80BA37F8  41 82 00 0C */	beq lbl_80BA3804
/* 80BA37FC  D3 E3 00 B0 */	stfs f31, 0xb0(r3)
/* 80BA3800  D3 E3 00 B4 */	stfs f31, 0xb4(r3)
lbl_80BA3804:
/* 80BA3804  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 80BA3808  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 80BA380C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80BA3810  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80BA3814  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80BA3818  7C 08 03 A6 */	mtlr r0
/* 80BA381C  38 21 00 40 */	addi r1, r1, 0x40
/* 80BA3820  4E 80 00 20 */	blr 
