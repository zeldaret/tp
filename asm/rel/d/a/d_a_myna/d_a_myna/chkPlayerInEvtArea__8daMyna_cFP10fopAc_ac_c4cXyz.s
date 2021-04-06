lbl_80949D54:
/* 80949D54  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80949D58  7C 08 02 A6 */	mflr r0
/* 80949D5C  90 01 00 84 */	stw r0, 0x84(r1)
/* 80949D60  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80949D64  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80949D68  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80949D6C  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80949D70  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 80949D74  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 80949D78  DB 81 00 40 */	stfd f28, 0x40(r1)
/* 80949D7C  F3 81 00 48 */	psq_st f28, 72(r1), 0, 0 /* qr0 */
/* 80949D80  39 61 00 40 */	addi r11, r1, 0x40
/* 80949D84  4B A1 84 55 */	bl _savegpr_28
/* 80949D88  7C 9C 23 79 */	or. r28, r4, r4
/* 80949D8C  7C BD 2B 78 */	mr r29, r5
/* 80949D90  3B C0 00 00 */	li r30, 0
/* 80949D94  41 82 01 18 */	beq lbl_80949EAC
/* 80949D98  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80949D9C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80949DA0  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80949DA4  7C 00 00 D0 */	neg r0, r0
/* 80949DA8  7C 04 07 34 */	extsh r4, r0
/* 80949DAC  4B 6C 26 31 */	bl mDoMtx_YrotS__FPA4_fs
/* 80949DB0  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80949DB4  FC 20 00 50 */	fneg f1, f0
/* 80949DB8  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80949DBC  FC 40 00 50 */	fneg f2, f0
/* 80949DC0  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80949DC4  FC 60 00 50 */	fneg f3, f0
/* 80949DC8  4B 6C 2F D5 */	bl transM__14mDoMtx_stack_cFfff
/* 80949DCC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80949DD0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80949DD4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80949DD8  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80949DDC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80949DE0  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80949DE4  38 A1 00 14 */	addi r5, r1, 0x14
/* 80949DE8  4B 9F CF 85 */	bl PSMTXMultVec
/* 80949DEC  C0 3C 04 EC */	lfs f1, 0x4ec(r28)
/* 80949DF0  C0 1D 00 00 */	lfs f0, 0(r29)
/* 80949DF4  EC 01 00 2A */	fadds f0, f1, f0
/* 80949DF8  FC 00 02 10 */	fabs f0, f0
/* 80949DFC  FF E0 00 18 */	frsp f31, f0
/* 80949E00  C0 3C 04 F4 */	lfs f1, 0x4f4(r28)
/* 80949E04  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80949E08  EC 01 00 2A */	fadds f0, f1, f0
/* 80949E0C  FC 00 02 10 */	fabs f0, f0
/* 80949E10  FF C0 00 18 */	frsp f30, f0
/* 80949E14  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80949E18  FC 00 02 10 */	fabs f0, f0
/* 80949E1C  FF A0 00 18 */	frsp f29, f0
/* 80949E20  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80949E24  FC 00 02 10 */	fabs f0, f0
/* 80949E28  FF 80 00 18 */	frsp f28, f0
/* 80949E2C  38 61 00 08 */	addi r3, r1, 8
/* 80949E30  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80949E34  80 BF 5D AC */	lwz r5, 0x5dac(r31)
/* 80949E38  38 A5 04 D0 */	addi r5, r5, 0x4d0
/* 80949E3C  4B 91 CC F9 */	bl __mi__4cXyzCFRC3Vec
/* 80949E40  C0 01 00 08 */	lfs f0, 8(r1)
/* 80949E44  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80949E48  C0 61 00 0C */	lfs f3, 0xc(r1)
/* 80949E4C  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 80949E50  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80949E54  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80949E58  EC 3D 07 72 */	fmuls f1, f29, f29
/* 80949E5C  EC 1F 07 F2 */	fmuls f0, f31, f31
/* 80949E60  EC 41 00 24 */	fdivs f2, f1, f0
/* 80949E64  EC 3C 07 32 */	fmuls f1, f28, f28
/* 80949E68  EC 1E 07 B2 */	fmuls f0, f30, f30
/* 80949E6C  EC 01 00 24 */	fdivs f0, f1, f0
/* 80949E70  EC 22 00 2A */	fadds f1, f2, f0
/* 80949E74  3C 60 80 95 */	lis r3, lit_4270@ha /* 0x8094B1FC@ha */
/* 80949E78  C0 03 B1 FC */	lfs f0, lit_4270@l(r3)  /* 0x8094B1FC@l */
/* 80949E7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80949E80  4C 40 13 82 */	cror 2, 0, 2
/* 80949E84  40 82 00 28 */	bne lbl_80949EAC
/* 80949E88  C0 3C 04 F0 */	lfs f1, 0x4f0(r28)
/* 80949E8C  C0 1D 00 04 */	lfs f0, 4(r29)
/* 80949E90  EC 21 00 2A */	fadds f1, f1, f0
/* 80949E94  FC 00 08 50 */	fneg f0, f1
/* 80949E98  FC 00 18 40 */	fcmpo cr0, f0, f3
/* 80949E9C  40 80 00 10 */	bge lbl_80949EAC
/* 80949EA0  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 80949EA4  40 80 00 08 */	bge lbl_80949EAC
/* 80949EA8  3B C0 00 01 */	li r30, 1
lbl_80949EAC:
/* 80949EAC  7F C3 F3 78 */	mr r3, r30
/* 80949EB0  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80949EB4  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80949EB8  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80949EBC  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80949EC0  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 80949EC4  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 80949EC8  E3 81 00 48 */	psq_l f28, 72(r1), 0, 0 /* qr0 */
/* 80949ECC  CB 81 00 40 */	lfd f28, 0x40(r1)
/* 80949ED0  39 61 00 40 */	addi r11, r1, 0x40
/* 80949ED4  4B A1 83 51 */	bl _restgpr_28
/* 80949ED8  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80949EDC  7C 08 03 A6 */	mtlr r0
/* 80949EE0  38 21 00 80 */	addi r1, r1, 0x80
/* 80949EE4  4E 80 00 20 */	blr 
