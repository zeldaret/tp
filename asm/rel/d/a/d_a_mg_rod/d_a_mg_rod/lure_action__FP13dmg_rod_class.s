lbl_804AEE18:
/* 804AEE18  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 804AEE1C  7C 08 02 A6 */	mflr r0
/* 804AEE20  90 01 00 94 */	stw r0, 0x94(r1)
/* 804AEE24  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 804AEE28  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 804AEE2C  39 61 00 80 */	addi r11, r1, 0x80
/* 804AEE30  4B EB 33 AD */	bl _savegpr_29
/* 804AEE34  7C 7D 1B 78 */	mr r29, r3
/* 804AEE38  3C 60 80 4C */	lis r3, lit_3879@ha /* 0x804BB534@ha */
/* 804AEE3C  3B C3 B5 34 */	addi r30, r3, lit_3879@l /* 0x804BB534@l */
/* 804AEE40  88 1D 10 A6 */	lbz r0, 0x10a6(r29)
/* 804AEE44  7C 00 07 75 */	extsb. r0, r0
/* 804AEE48  40 82 00 44 */	bne lbl_804AEE8C
/* 804AEE4C  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 804AEE50  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 804AEE54  A0 03 00 AE */	lhz r0, 0xae(r3)
/* 804AEE58  60 00 00 02 */	ori r0, r0, 2
/* 804AEE5C  B0 03 00 AE */	sth r0, 0xae(r3)
/* 804AEE60  38 00 00 56 */	li r0, 0x56
/* 804AEE64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804AEE68  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804AEE6C  98 04 5E 35 */	stb r0, 0x5e35(r4)
/* 804AEE70  38 60 00 00 */	li r3, 0
/* 804AEE74  98 64 5E 50 */	stb r3, 0x5e50(r4)
/* 804AEE78  38 00 00 72 */	li r0, 0x72
/* 804AEE7C  98 04 5E 3E */	stb r0, 0x5e3e(r4)
/* 804AEE80  38 00 00 05 */	li r0, 5
/* 804AEE84  98 04 5E 2E */	stb r0, 0x5e2e(r4)
/* 804AEE88  98 64 5E 58 */	stb r3, 0x5e58(r4)
lbl_804AEE8C:
/* 804AEE8C  A8 1D 05 82 */	lha r0, 0x582(r29)
/* 804AEE90  2C 00 00 01 */	cmpwi r0, 1
/* 804AEE94  40 82 00 1C */	bne lbl_804AEEB0
/* 804AEE98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804AEE9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804AEEA0  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 804AEEA4  80 03 05 74 */	lwz r0, 0x574(r3)
/* 804AEEA8  60 00 80 00 */	ori r0, r0, 0x8000
/* 804AEEAC  90 03 05 74 */	stw r0, 0x574(r3)
lbl_804AEEB0:
/* 804AEEB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804AEEB4  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804AEEB8  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 804AEEBC  C0 63 20 58 */	lfs f3, 0x2058(r3)
/* 804AEEC0  C0 5E 01 88 */	lfs f2, 0x188(r30)
/* 804AEEC4  C0 3E 01 98 */	lfs f1, 0x198(r30)
/* 804AEEC8  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 804AEECC  EC 00 00 F2 */	fmuls f0, f0, f3
/* 804AEED0  EC 01 00 32 */	fmuls f0, f1, f0
/* 804AEED4  EC 02 00 2A */	fadds f0, f2, f0
/* 804AEED8  FC 00 00 1E */	fctiwz f0, f0
/* 804AEEDC  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 804AEEE0  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 804AEEE4  B0 1D 07 5C */	sth r0, 0x75c(r29)
/* 804AEEE8  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 804AEEEC  C0 03 20 58 */	lfs f0, 0x2058(r3)
/* 804AEEF0  EC 01 00 32 */	fmuls f0, f1, f0
/* 804AEEF4  FC 00 00 1E */	fctiwz f0, f0
/* 804AEEF8  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 804AEEFC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 804AEF00  B0 1D 07 5E */	sth r0, 0x75e(r29)
/* 804AEF04  38 7D 0F 64 */	addi r3, r29, 0xf64
/* 804AEF08  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 804AEF0C  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 804AEF10  C0 7E 00 9C */	lfs f3, 0x9c(r30)
/* 804AEF14  4B DC 0B 29 */	bl cLib_addCalc2__FPffff
/* 804AEF18  38 7D 06 F8 */	addi r3, r29, 0x6f8
/* 804AEF1C  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 804AEF20  C0 1D 0F 60 */	lfs f0, 0xf60(r29)
/* 804AEF24  EC 21 00 32 */	fmuls f1, f1, f0
/* 804AEF28  C0 5E 00 78 */	lfs f2, 0x78(r30)
/* 804AEF2C  C0 7E 01 5C */	lfs f3, 0x15c(r30)
/* 804AEF30  4B DC 0B 0D */	bl cLib_addCalc2__FPffff
/* 804AEF34  C0 5D 14 C8 */	lfs f2, 0x14c8(r29)
/* 804AEF38  FC 00 12 10 */	fabs f0, f2
/* 804AEF3C  FC 20 00 18 */	frsp f1, f0
/* 804AEF40  C0 1E 00 78 */	lfs f0, 0x78(r30)
/* 804AEF44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AEF48  40 80 00 08 */	bge lbl_804AEF50
/* 804AEF4C  C0 5E 00 58 */	lfs f2, 0x58(r30)
lbl_804AEF50:
/* 804AEF50  C0 7D 14 CC */	lfs f3, 0x14cc(r29)
/* 804AEF54  C0 1E 01 9C */	lfs f0, 0x19c(r30)
/* 804AEF58  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 804AEF5C  40 81 00 08 */	ble lbl_804AEF64
/* 804AEF60  C0 7E 00 58 */	lfs f3, 0x58(r30)
lbl_804AEF64:
/* 804AEF64  EC 22 00 B2 */	fmuls f1, f2, f2
/* 804AEF68  EC 03 00 F2 */	fmuls f0, f3, f3
/* 804AEF6C  EC 21 00 2A */	fadds f1, f1, f0
/* 804AEF70  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804AEF74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AEF78  40 81 00 0C */	ble lbl_804AEF84
/* 804AEF7C  FC 00 08 34 */	frsqrte f0, f1
/* 804AEF80  EC 20 00 72 */	fmuls f1, f0, f1
lbl_804AEF84:
/* 804AEF84  C0 1D 14 EC */	lfs f0, 0x14ec(r29)
/* 804AEF88  EF E1 00 28 */	fsubs f31, f1, f0
/* 804AEF8C  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804AEF90  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804AEF94  40 80 00 08 */	bge lbl_804AEF9C
/* 804AEF98  FF E0 00 90 */	fmr f31, f0
lbl_804AEF9C:
/* 804AEF9C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 804AEFA0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804AEFA4  40 81 00 08 */	ble lbl_804AEFAC
/* 804AEFA8  FF E0 00 90 */	fmr f31, f0
lbl_804AEFAC:
/* 804AEFAC  D0 3D 14 EC */	stfs f1, 0x14ec(r29)
/* 804AEFB0  80 1D 14 F0 */	lwz r0, 0x14f0(r29)
/* 804AEFB4  2C 00 00 00 */	cmpwi r0, 0
/* 804AEFB8  41 82 00 F8 */	beq lbl_804AF0B0
/* 804AEFBC  C0 3D 14 F4 */	lfs f1, 0x14f4(r29)
/* 804AEFC0  C0 1E 01 A0 */	lfs f0, 0x1a0(r30)
/* 804AEFC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AEFC8  40 81 00 5C */	ble lbl_804AF024
/* 804AEFCC  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 804AEFD0  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002007E@ha */
/* 804AEFD4  38 84 00 7E */	addi r4, r4, 0x007E /* 0x0002007E@l */
/* 804AEFD8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804AEFDC  81 8C 01 1C */	lwz r12, 0x11c(r12)
/* 804AEFE0  7D 89 03 A6 */	mtctr r12
/* 804AEFE4  4E 80 04 21 */	bctrl 
/* 804AEFE8  3C 60 00 02 */	lis r3, 0x0002 /* 0x0002007C@ha */
/* 804AEFEC  38 03 00 7C */	addi r0, r3, 0x007C /* 0x0002007C@l */
/* 804AEFF0  90 01 00 18 */	stw r0, 0x18(r1)
/* 804AEFF4  38 7D 10 B4 */	addi r3, r29, 0x10b4
/* 804AEFF8  38 81 00 18 */	addi r4, r1, 0x18
/* 804AEFFC  38 A0 00 00 */	li r5, 0
/* 804AF000  38 C0 FF FF */	li r6, -1
/* 804AF004  81 9D 10 B4 */	lwz r12, 0x10b4(r29)
/* 804AF008  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 804AF00C  7D 89 03 A6 */	mtctr r12
/* 804AF010  4E 80 04 21 */	bctrl 
/* 804AF014  88 7D 10 0B */	lbz r3, 0x100b(r29)
/* 804AF018  38 03 00 02 */	addi r0, r3, 2
/* 804AF01C  98 1D 10 0B */	stb r0, 0x100b(r29)
/* 804AF020  48 00 00 58 */	b lbl_804AF078
lbl_804AF024:
/* 804AF024  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 804AF028  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002007D@ha */
/* 804AF02C  38 84 00 7D */	addi r4, r4, 0x007D /* 0x0002007D@l */
/* 804AF030  81 83 06 28 */	lwz r12, 0x628(r3)
/* 804AF034  81 8C 01 1C */	lwz r12, 0x11c(r12)
/* 804AF038  7D 89 03 A6 */	mtctr r12
/* 804AF03C  4E 80 04 21 */	bctrl 
/* 804AF040  3C 60 00 02 */	lis r3, 0x0002 /* 0x0002007B@ha */
/* 804AF044  38 03 00 7B */	addi r0, r3, 0x007B /* 0x0002007B@l */
/* 804AF048  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AF04C  38 7D 10 B4 */	addi r3, r29, 0x10b4
/* 804AF050  38 81 00 14 */	addi r4, r1, 0x14
/* 804AF054  38 A0 00 00 */	li r5, 0
/* 804AF058  38 C0 FF FF */	li r6, -1
/* 804AF05C  81 9D 10 B4 */	lwz r12, 0x10b4(r29)
/* 804AF060  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 804AF064  7D 89 03 A6 */	mtctr r12
/* 804AF068  4E 80 04 21 */	bctrl 
/* 804AF06C  88 7D 10 0B */	lbz r3, 0x100b(r29)
/* 804AF070  38 03 00 01 */	addi r0, r3, 1
/* 804AF074  98 1D 10 0B */	stb r0, 0x100b(r29)
lbl_804AF078:
/* 804AF078  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 804AF07C  7C 00 07 74 */	extsb r0, r0
/* 804AF080  2C 00 00 04 */	cmpwi r0, 4
/* 804AF084  41 82 00 4C */	beq lbl_804AF0D0
/* 804AF088  2C 00 00 03 */	cmpwi r0, 3
/* 804AF08C  41 82 00 44 */	beq lbl_804AF0D0
/* 804AF090  88 1D 10 0B */	lbz r0, 0x100b(r29)
/* 804AF094  28 00 00 3C */	cmplwi r0, 0x3c
/* 804AF098  40 81 00 38 */	ble lbl_804AF0D0
/* 804AF09C  38 00 00 3C */	li r0, 0x3c
/* 804AF0A0  98 1D 10 0B */	stb r0, 0x100b(r29)
/* 804AF0A4  38 00 00 01 */	li r0, 1
/* 804AF0A8  98 1D 10 0A */	stb r0, 0x100a(r29)
/* 804AF0AC  48 00 00 24 */	b lbl_804AF0D0
lbl_804AF0B0:
/* 804AF0B0  88 7D 10 0B */	lbz r3, 0x100b(r29)
/* 804AF0B4  28 03 00 00 */	cmplwi r3, 0
/* 804AF0B8  41 82 00 10 */	beq lbl_804AF0C8
/* 804AF0BC  38 03 FF FF */	addi r0, r3, -1
/* 804AF0C0  98 1D 10 0B */	stb r0, 0x100b(r29)
/* 804AF0C4  48 00 00 0C */	b lbl_804AF0D0
lbl_804AF0C8:
/* 804AF0C8  38 00 00 00 */	li r0, 0
/* 804AF0CC  98 1D 10 0A */	stb r0, 0x100a(r29)
lbl_804AF0D0:
/* 804AF0D0  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 804AF0D4  FC 00 02 10 */	fabs f0, f0
/* 804AF0D8  FC 20 00 18 */	frsp f1, f0
/* 804AF0DC  C0 1E 00 D0 */	lfs f0, 0xd0(r30)
/* 804AF0E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AF0E4  40 81 00 0C */	ble lbl_804AF0F0
/* 804AF0E8  38 00 00 01 */	li r0, 1
/* 804AF0EC  98 1D 10 0A */	stb r0, 0x100a(r29)
lbl_804AF0F0:
/* 804AF0F0  88 7D 10 A4 */	lbz r3, 0x10a4(r29)
/* 804AF0F4  7C 60 07 75 */	extsb. r0, r3
/* 804AF0F8  41 82 00 0C */	beq lbl_804AF104
/* 804AF0FC  38 03 FF FF */	addi r0, r3, -1
/* 804AF100  98 1D 10 A4 */	stb r0, 0x10a4(r29)
lbl_804AF104:
/* 804AF104  88 7D 10 0E */	lbz r3, 0x100e(r29)
/* 804AF108  7C 60 07 75 */	extsb. r0, r3
/* 804AF10C  41 82 00 0C */	beq lbl_804AF118
/* 804AF110  38 03 FF FF */	addi r0, r3, -1
/* 804AF114  98 1D 10 0E */	stb r0, 0x100e(r29)
lbl_804AF118:
/* 804AF118  88 1D 10 0D */	lbz r0, 0x100d(r29)
/* 804AF11C  7C 00 07 75 */	extsb. r0, r0
/* 804AF120  41 82 02 38 */	beq lbl_804AF358
/* 804AF124  88 1D 10 A9 */	lbz r0, 0x10a9(r29)
/* 804AF128  7C 00 07 75 */	extsb. r0, r0
/* 804AF12C  41 82 00 44 */	beq lbl_804AF170
/* 804AF130  7F A3 EB 78 */	mr r3, r29
/* 804AF134  FC 20 F8 90 */	fmr f1, f31
/* 804AF138  4B FF F9 49 */	bl heart_action__FP13dmg_rod_classf
/* 804AF13C  38 00 00 00 */	li r0, 0
/* 804AF140  B0 1D 04 E0 */	sth r0, 0x4e0(r29)
/* 804AF144  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 804AF148  B0 1D 11 4C */	sth r0, 0x114c(r29)
/* 804AF14C  B0 1D 11 4A */	sth r0, 0x114a(r29)
/* 804AF150  B0 1D 0F FC */	sth r0, 0xffc(r29)
/* 804AF154  B0 1D 10 00 */	sth r0, 0x1000(r29)
/* 804AF158  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804AF15C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804AF160  80 63 00 00 */	lwz r3, 0(r3)
/* 804AF164  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 804AF168  4B B5 D2 75 */	bl mDoMtx_YrotS__FPA4_fs
/* 804AF16C  48 00 02 08 */	b lbl_804AF374
lbl_804AF170:
/* 804AF170  7F A3 EB 78 */	mr r3, r29
/* 804AF174  4B FF E4 85 */	bl wd_check__FP13dmg_rod_class
/* 804AF178  7C 64 1B 79 */	or. r4, r3, r3
/* 804AF17C  41 82 00 28 */	beq lbl_804AF1A4
/* 804AF180  7F A3 EB 78 */	mr r3, r29
/* 804AF184  FC 20 F8 90 */	fmr f1, f31
/* 804AF188  4B FF F5 F1 */	bl wd_action__FP13dmg_rod_classfP5wd_ss
/* 804AF18C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804AF190  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804AF194  80 63 00 00 */	lwz r3, 0(r3)
/* 804AF198  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 804AF19C  4B B5 D2 41 */	bl mDoMtx_YrotS__FPA4_fs
/* 804AF1A0  48 00 00 BC */	b lbl_804AF25C
lbl_804AF1A4:
/* 804AF1A4  38 7D 05 9C */	addi r3, r29, 0x59c
/* 804AF1A8  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 804AF1AC  FC 40 08 90 */	fmr f2, f1
/* 804AF1B0  4B DC 08 D1 */	bl cLib_addCalc0__FPfff
/* 804AF1B4  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 804AF1B8  7C 00 07 74 */	extsb r0, r0
/* 804AF1BC  2C 00 00 02 */	cmpwi r0, 2
/* 804AF1C0  41 82 00 48 */	beq lbl_804AF208
/* 804AF1C4  40 80 00 14 */	bge lbl_804AF1D8
/* 804AF1C8  2C 00 00 00 */	cmpwi r0, 0
/* 804AF1CC  41 82 00 1C */	beq lbl_804AF1E8
/* 804AF1D0  40 80 00 28 */	bge lbl_804AF1F8
/* 804AF1D4  48 00 00 60 */	b lbl_804AF234
lbl_804AF1D8:
/* 804AF1D8  2C 00 00 04 */	cmpwi r0, 4
/* 804AF1DC  41 82 00 4C */	beq lbl_804AF228
/* 804AF1E0  40 80 00 54 */	bge lbl_804AF234
/* 804AF1E4  48 00 00 34 */	b lbl_804AF218
lbl_804AF1E8:
/* 804AF1E8  7F A3 EB 78 */	mr r3, r29
/* 804AF1EC  FC 20 F8 90 */	fmr f1, f31
/* 804AF1F0  4B FF E5 D1 */	bl fr_action__FP13dmg_rod_classf
/* 804AF1F4  48 00 00 40 */	b lbl_804AF234
lbl_804AF1F8:
/* 804AF1F8  7F A3 EB 78 */	mr r3, r29
/* 804AF1FC  FC 20 F8 90 */	fmr f1, f31
/* 804AF200  4B FF E7 19 */	bl pe_action__FP13dmg_rod_classf
/* 804AF204  48 00 00 30 */	b lbl_804AF234
lbl_804AF208:
/* 804AF208  7F A3 EB 78 */	mr r3, r29
/* 804AF20C  FC 20 F8 90 */	fmr f1, f31
/* 804AF210  4B FF E9 49 */	bl po_action__FP13dmg_rod_classf
/* 804AF214  48 00 00 20 */	b lbl_804AF234
lbl_804AF218:
/* 804AF218  7F A3 EB 78 */	mr r3, r29
/* 804AF21C  FC 20 F8 90 */	fmr f1, f31
/* 804AF220  4B FF EB B5 */	bl ws_action__FP13dmg_rod_classf
/* 804AF224  48 00 00 10 */	b lbl_804AF234
lbl_804AF228:
/* 804AF228  7F A3 EB 78 */	mr r3, r29
/* 804AF22C  FC 20 F8 90 */	fmr f1, f31
/* 804AF230  4B FF EE 3D */	bl sp_action__FP13dmg_rod_classf
lbl_804AF234:
/* 804AF234  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 804AF238  C0 3E 01 5C */	lfs f1, 0x15c(r30)
/* 804AF23C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804AF240  40 81 00 14 */	ble lbl_804AF254
/* 804AF244  38 7D 05 2C */	addi r3, r29, 0x52c
/* 804AF248  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 804AF24C  C0 7E 00 B8 */	lfs f3, 0xb8(r30)
/* 804AF250  4B DC 07 ED */	bl cLib_addCalc2__FPffff
lbl_804AF254:
/* 804AF254  7F A3 EB 78 */	mr r3, r29
/* 804AF258  4B FF F9 99 */	bl action_eff_set__FP13dmg_rod_class
lbl_804AF25C:
/* 804AF25C  A8 1D 05 80 */	lha r0, 0x580(r29)
/* 804AF260  2C 00 00 00 */	cmpwi r0, 0
/* 804AF264  40 82 00 84 */	bne lbl_804AF2E8
/* 804AF268  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 804AF26C  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 804AF270  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804AF274  40 81 00 74 */	ble lbl_804AF2E8
/* 804AF278  7F A3 EB 78 */	mr r3, r29
/* 804AF27C  4B FF E1 F1 */	bl simple_bg_check__FP13dmg_rod_classf
/* 804AF280  2C 03 00 00 */	cmpwi r3, 0
/* 804AF284  41 82 00 64 */	beq lbl_804AF2E8
/* 804AF288  38 00 00 02 */	li r0, 2
/* 804AF28C  B0 1D 05 80 */	sth r0, 0x580(r29)
/* 804AF290  2C 03 00 02 */	cmpwi r3, 2
/* 804AF294  40 82 00 10 */	bne lbl_804AF2A4
/* 804AF298  38 00 F0 00 */	li r0, -4096
/* 804AF29C  B0 1D 0F FE */	sth r0, 0xffe(r29)
/* 804AF2A0  48 00 00 20 */	b lbl_804AF2C0
lbl_804AF2A4:
/* 804AF2A4  2C 03 00 03 */	cmpwi r3, 3
/* 804AF2A8  40 82 00 10 */	bne lbl_804AF2B8
/* 804AF2AC  38 00 10 00 */	li r0, 0x1000
/* 804AF2B0  B0 1D 0F FE */	sth r0, 0xffe(r29)
/* 804AF2B4  48 00 00 0C */	b lbl_804AF2C0
lbl_804AF2B8:
/* 804AF2B8  38 00 00 00 */	li r0, 0
/* 804AF2BC  B0 1D 0F FE */	sth r0, 0xffe(r29)
lbl_804AF2C0:
/* 804AF2C0  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 804AF2C4  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 804AF2C8  EC 01 00 32 */	fmuls f0, f1, f0
/* 804AF2CC  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 804AF2D0  C0 1D 04 BC */	lfs f0, 0x4bc(r29)
/* 804AF2D4  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 804AF2D8  C0 1D 04 C0 */	lfs f0, 0x4c0(r29)
/* 804AF2DC  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 804AF2E0  C0 1D 04 C4 */	lfs f0, 0x4c4(r29)
/* 804AF2E4  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
lbl_804AF2E8:
/* 804AF2E8  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 804AF2EC  38 80 00 00 */	li r4, 0
/* 804AF2F0  38 A0 00 04 */	li r5, 4
/* 804AF2F4  38 C0 20 00 */	li r6, 0x2000
/* 804AF2F8  4B DC 13 11 */	bl cLib_addCalcAngleS2__FPssss
/* 804AF2FC  88 1D 0F 80 */	lbz r0, 0xf80(r29)
/* 804AF300  2C 00 00 04 */	cmpwi r0, 4
/* 804AF304  41 82 00 3C */	beq lbl_804AF340
/* 804AF308  38 7D 04 E0 */	addi r3, r29, 0x4e0
/* 804AF30C  38 80 00 00 */	li r4, 0
/* 804AF310  38 A0 00 02 */	li r5, 2
/* 804AF314  38 C0 10 00 */	li r6, 0x1000
/* 804AF318  4B DC 12 F1 */	bl cLib_addCalcAngleS2__FPssss
/* 804AF31C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804AF320  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804AF324  80 63 00 00 */	lwz r3, 0(r3)
/* 804AF328  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 804AF32C  A8 1D 0F FC */	lha r0, 0xffc(r29)
/* 804AF330  7C 04 02 14 */	add r0, r4, r0
/* 804AF334  7C 04 07 34 */	extsh r4, r0
/* 804AF338  4B B5 D0 A5 */	bl mDoMtx_YrotS__FPA4_fs
/* 804AF33C  48 00 00 38 */	b lbl_804AF374
lbl_804AF340:
/* 804AF340  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804AF344  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804AF348  80 63 00 00 */	lwz r3, 0(r3)
/* 804AF34C  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 804AF350  4B B5 D0 8D */	bl mDoMtx_YrotS__FPA4_fs
/* 804AF354  48 00 00 20 */	b lbl_804AF374
lbl_804AF358:
/* 804AF358  7F A3 EB 78 */	mr r3, r29
/* 804AF35C  4B FF EE F5 */	bl ground_action__FP13dmg_rod_class
/* 804AF360  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 804AF364  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 804AF368  80 63 00 00 */	lwz r3, 0(r3)
/* 804AF36C  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 804AF370  4B B5 D0 6D */	bl mDoMtx_YrotS__FPA4_fs
lbl_804AF374:
/* 804AF374  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804AF378  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 804AF37C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 804AF380  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 804AF384  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 804AF388  38 61 00 4C */	addi r3, r1, 0x4c
/* 804AF38C  38 81 00 40 */	addi r4, r1, 0x40
/* 804AF390  4B DC 1B 5D */	bl MtxPosition__FP4cXyzP4cXyz
/* 804AF394  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 804AF398  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 804AF39C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 804AF3A0  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 804AF3A4  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 804AF3A8  38 9D 04 F8 */	addi r4, r29, 0x4f8
/* 804AF3AC  7C 65 1B 78 */	mr r5, r3
/* 804AF3B0  4B E9 7C E1 */	bl PSVECAdd
/* 804AF3B4  88 1D 10 0D */	lbz r0, 0x100d(r29)
/* 804AF3B8  7C 00 07 75 */	extsb. r0, r0
/* 804AF3BC  41 82 00 34 */	beq lbl_804AF3F0
/* 804AF3C0  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 804AF3C4  C0 3D 05 90 */	lfs f1, 0x590(r29)
/* 804AF3C8  C0 1D 05 94 */	lfs f0, 0x594(r29)
/* 804AF3CC  EC 21 00 2A */	fadds f1, f1, f0
/* 804AF3D0  C0 5E 00 9C */	lfs f2, 0x9c(r30)
/* 804AF3D4  C0 7E 00 B8 */	lfs f3, 0xb8(r30)
/* 804AF3D8  4B DC 06 65 */	bl cLib_addCalc2__FPffff
/* 804AF3DC  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 804AF3E0  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 804AF3E4  C0 5E 00 B8 */	lfs f2, 0xb8(r30)
/* 804AF3E8  4B DC 06 99 */	bl cLib_addCalc0__FPfff
/* 804AF3EC  48 00 00 1C */	b lbl_804AF408
lbl_804AF3F0:
/* 804AF3F0  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 804AF3F4  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 804AF3F8  EC 01 00 28 */	fsubs f0, f1, f0
/* 804AF3FC  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 804AF400  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804AF404  D0 1D 05 94 */	stfs f0, 0x594(r29)
lbl_804AF408:
/* 804AF408  38 61 00 34 */	addi r3, r1, 0x34
/* 804AF40C  38 9D 06 AC */	addi r4, r29, 0x6ac
/* 804AF410  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 804AF414  4B DB 77 21 */	bl __mi__4cXyzCFRC3Vec
/* 804AF418  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 804AF41C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 804AF420  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 804AF424  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 804AF428  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 804AF42C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 804AF430  88 1D 0F 6E */	lbz r0, 0xf6e(r29)
/* 804AF434  7C 00 07 74 */	extsb r0, r0
/* 804AF438  2C 00 00 01 */	cmpwi r0, 1
/* 804AF43C  40 82 00 FC */	bne lbl_804AF538
/* 804AF440  38 61 00 4C */	addi r3, r1, 0x4c
/* 804AF444  4B E9 7C F5 */	bl PSVECSquareMag
/* 804AF448  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804AF44C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AF450  40 81 00 58 */	ble lbl_804AF4A8
/* 804AF454  FC 00 08 34 */	frsqrte f0, f1
/* 804AF458  C8 9E 00 80 */	lfd f4, 0x80(r30)
/* 804AF45C  FC 44 00 32 */	fmul f2, f4, f0
/* 804AF460  C8 7E 00 88 */	lfd f3, 0x88(r30)
/* 804AF464  FC 00 00 32 */	fmul f0, f0, f0
/* 804AF468  FC 01 00 32 */	fmul f0, f1, f0
/* 804AF46C  FC 03 00 28 */	fsub f0, f3, f0
/* 804AF470  FC 02 00 32 */	fmul f0, f2, f0
/* 804AF474  FC 44 00 32 */	fmul f2, f4, f0
/* 804AF478  FC 00 00 32 */	fmul f0, f0, f0
/* 804AF47C  FC 01 00 32 */	fmul f0, f1, f0
/* 804AF480  FC 03 00 28 */	fsub f0, f3, f0
/* 804AF484  FC 02 00 32 */	fmul f0, f2, f0
/* 804AF488  FC 44 00 32 */	fmul f2, f4, f0
/* 804AF48C  FC 00 00 32 */	fmul f0, f0, f0
/* 804AF490  FC 01 00 32 */	fmul f0, f1, f0
/* 804AF494  FC 03 00 28 */	fsub f0, f3, f0
/* 804AF498  FC 02 00 32 */	fmul f0, f2, f0
/* 804AF49C  FC 21 00 32 */	fmul f1, f1, f0
/* 804AF4A0  FC 20 08 18 */	frsp f1, f1
/* 804AF4A4  48 00 00 88 */	b lbl_804AF52C
lbl_804AF4A8:
/* 804AF4A8  C8 1E 00 90 */	lfd f0, 0x90(r30)
/* 804AF4AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AF4B0  40 80 00 10 */	bge lbl_804AF4C0
/* 804AF4B4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804AF4B8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804AF4BC  48 00 00 70 */	b lbl_804AF52C
lbl_804AF4C0:
/* 804AF4C0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 804AF4C4  80 81 00 10 */	lwz r4, 0x10(r1)
/* 804AF4C8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804AF4CC  3C 00 7F 80 */	lis r0, 0x7f80
/* 804AF4D0  7C 03 00 00 */	cmpw r3, r0
/* 804AF4D4  41 82 00 14 */	beq lbl_804AF4E8
/* 804AF4D8  40 80 00 40 */	bge lbl_804AF518
/* 804AF4DC  2C 03 00 00 */	cmpwi r3, 0
/* 804AF4E0  41 82 00 20 */	beq lbl_804AF500
/* 804AF4E4  48 00 00 34 */	b lbl_804AF518
lbl_804AF4E8:
/* 804AF4E8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804AF4EC  41 82 00 0C */	beq lbl_804AF4F8
/* 804AF4F0  38 00 00 01 */	li r0, 1
/* 804AF4F4  48 00 00 28 */	b lbl_804AF51C
lbl_804AF4F8:
/* 804AF4F8  38 00 00 02 */	li r0, 2
/* 804AF4FC  48 00 00 20 */	b lbl_804AF51C
lbl_804AF500:
/* 804AF500  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804AF504  41 82 00 0C */	beq lbl_804AF510
/* 804AF508  38 00 00 05 */	li r0, 5
/* 804AF50C  48 00 00 10 */	b lbl_804AF51C
lbl_804AF510:
/* 804AF510  38 00 00 03 */	li r0, 3
/* 804AF514  48 00 00 08 */	b lbl_804AF51C
lbl_804AF518:
/* 804AF518  38 00 00 04 */	li r0, 4
lbl_804AF51C:
/* 804AF51C  2C 00 00 01 */	cmpwi r0, 1
/* 804AF520  40 82 00 0C */	bne lbl_804AF52C
/* 804AF524  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804AF528  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_804AF52C:
/* 804AF52C  C0 1E 01 A4 */	lfs f0, 0x1a4(r30)
/* 804AF530  EC 20 00 72 */	fmuls f1, f0, f1
/* 804AF534  48 00 01 F8 */	b lbl_804AF72C
lbl_804AF538:
/* 804AF538  2C 00 00 02 */	cmpwi r0, 2
/* 804AF53C  40 82 00 FC */	bne lbl_804AF638
/* 804AF540  38 61 00 4C */	addi r3, r1, 0x4c
/* 804AF544  4B E9 7B F5 */	bl PSVECSquareMag
/* 804AF548  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804AF54C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AF550  40 81 00 58 */	ble lbl_804AF5A8
/* 804AF554  FC 00 08 34 */	frsqrte f0, f1
/* 804AF558  C8 9E 00 80 */	lfd f4, 0x80(r30)
/* 804AF55C  FC 44 00 32 */	fmul f2, f4, f0
/* 804AF560  C8 7E 00 88 */	lfd f3, 0x88(r30)
/* 804AF564  FC 00 00 32 */	fmul f0, f0, f0
/* 804AF568  FC 01 00 32 */	fmul f0, f1, f0
/* 804AF56C  FC 03 00 28 */	fsub f0, f3, f0
/* 804AF570  FC 02 00 32 */	fmul f0, f2, f0
/* 804AF574  FC 44 00 32 */	fmul f2, f4, f0
/* 804AF578  FC 00 00 32 */	fmul f0, f0, f0
/* 804AF57C  FC 01 00 32 */	fmul f0, f1, f0
/* 804AF580  FC 03 00 28 */	fsub f0, f3, f0
/* 804AF584  FC 02 00 32 */	fmul f0, f2, f0
/* 804AF588  FC 44 00 32 */	fmul f2, f4, f0
/* 804AF58C  FC 00 00 32 */	fmul f0, f0, f0
/* 804AF590  FC 01 00 32 */	fmul f0, f1, f0
/* 804AF594  FC 03 00 28 */	fsub f0, f3, f0
/* 804AF598  FC 02 00 32 */	fmul f0, f2, f0
/* 804AF59C  FC 21 00 32 */	fmul f1, f1, f0
/* 804AF5A0  FC 20 08 18 */	frsp f1, f1
/* 804AF5A4  48 00 00 88 */	b lbl_804AF62C
lbl_804AF5A8:
/* 804AF5A8  C8 1E 00 90 */	lfd f0, 0x90(r30)
/* 804AF5AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AF5B0  40 80 00 10 */	bge lbl_804AF5C0
/* 804AF5B4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804AF5B8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804AF5BC  48 00 00 70 */	b lbl_804AF62C
lbl_804AF5C0:
/* 804AF5C0  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804AF5C4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 804AF5C8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804AF5CC  3C 00 7F 80 */	lis r0, 0x7f80
/* 804AF5D0  7C 03 00 00 */	cmpw r3, r0
/* 804AF5D4  41 82 00 14 */	beq lbl_804AF5E8
/* 804AF5D8  40 80 00 40 */	bge lbl_804AF618
/* 804AF5DC  2C 03 00 00 */	cmpwi r3, 0
/* 804AF5E0  41 82 00 20 */	beq lbl_804AF600
/* 804AF5E4  48 00 00 34 */	b lbl_804AF618
lbl_804AF5E8:
/* 804AF5E8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804AF5EC  41 82 00 0C */	beq lbl_804AF5F8
/* 804AF5F0  38 00 00 01 */	li r0, 1
/* 804AF5F4  48 00 00 28 */	b lbl_804AF61C
lbl_804AF5F8:
/* 804AF5F8  38 00 00 02 */	li r0, 2
/* 804AF5FC  48 00 00 20 */	b lbl_804AF61C
lbl_804AF600:
/* 804AF600  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804AF604  41 82 00 0C */	beq lbl_804AF610
/* 804AF608  38 00 00 05 */	li r0, 5
/* 804AF60C  48 00 00 10 */	b lbl_804AF61C
lbl_804AF610:
/* 804AF610  38 00 00 03 */	li r0, 3
/* 804AF614  48 00 00 08 */	b lbl_804AF61C
lbl_804AF618:
/* 804AF618  38 00 00 04 */	li r0, 4
lbl_804AF61C:
/* 804AF61C  2C 00 00 01 */	cmpwi r0, 1
/* 804AF620  40 82 00 0C */	bne lbl_804AF62C
/* 804AF624  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804AF628  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_804AF62C:
/* 804AF62C  C0 1E 01 A8 */	lfs f0, 0x1a8(r30)
/* 804AF630  EC 20 00 72 */	fmuls f1, f0, f1
/* 804AF634  48 00 00 F8 */	b lbl_804AF72C
lbl_804AF638:
/* 804AF638  38 61 00 4C */	addi r3, r1, 0x4c
/* 804AF63C  4B E9 7A FD */	bl PSVECSquareMag
/* 804AF640  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804AF644  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AF648  40 81 00 58 */	ble lbl_804AF6A0
/* 804AF64C  FC 00 08 34 */	frsqrte f0, f1
/* 804AF650  C8 9E 00 80 */	lfd f4, 0x80(r30)
/* 804AF654  FC 44 00 32 */	fmul f2, f4, f0
/* 804AF658  C8 7E 00 88 */	lfd f3, 0x88(r30)
/* 804AF65C  FC 00 00 32 */	fmul f0, f0, f0
/* 804AF660  FC 01 00 32 */	fmul f0, f1, f0
/* 804AF664  FC 03 00 28 */	fsub f0, f3, f0
/* 804AF668  FC 02 00 32 */	fmul f0, f2, f0
/* 804AF66C  FC 44 00 32 */	fmul f2, f4, f0
/* 804AF670  FC 00 00 32 */	fmul f0, f0, f0
/* 804AF674  FC 01 00 32 */	fmul f0, f1, f0
/* 804AF678  FC 03 00 28 */	fsub f0, f3, f0
/* 804AF67C  FC 02 00 32 */	fmul f0, f2, f0
/* 804AF680  FC 44 00 32 */	fmul f2, f4, f0
/* 804AF684  FC 00 00 32 */	fmul f0, f0, f0
/* 804AF688  FC 01 00 32 */	fmul f0, f1, f0
/* 804AF68C  FC 03 00 28 */	fsub f0, f3, f0
/* 804AF690  FC 02 00 32 */	fmul f0, f2, f0
/* 804AF694  FC 21 00 32 */	fmul f1, f1, f0
/* 804AF698  FC 20 08 18 */	frsp f1, f1
/* 804AF69C  48 00 00 88 */	b lbl_804AF724
lbl_804AF6A0:
/* 804AF6A0  C8 1E 00 90 */	lfd f0, 0x90(r30)
/* 804AF6A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AF6A8  40 80 00 10 */	bge lbl_804AF6B8
/* 804AF6AC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804AF6B0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 804AF6B4  48 00 00 70 */	b lbl_804AF724
lbl_804AF6B8:
/* 804AF6B8  D0 21 00 08 */	stfs f1, 8(r1)
/* 804AF6BC  80 81 00 08 */	lwz r4, 8(r1)
/* 804AF6C0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804AF6C4  3C 00 7F 80 */	lis r0, 0x7f80
/* 804AF6C8  7C 03 00 00 */	cmpw r3, r0
/* 804AF6CC  41 82 00 14 */	beq lbl_804AF6E0
/* 804AF6D0  40 80 00 40 */	bge lbl_804AF710
/* 804AF6D4  2C 03 00 00 */	cmpwi r3, 0
/* 804AF6D8  41 82 00 20 */	beq lbl_804AF6F8
/* 804AF6DC  48 00 00 34 */	b lbl_804AF710
lbl_804AF6E0:
/* 804AF6E0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804AF6E4  41 82 00 0C */	beq lbl_804AF6F0
/* 804AF6E8  38 00 00 01 */	li r0, 1
/* 804AF6EC  48 00 00 28 */	b lbl_804AF714
lbl_804AF6F0:
/* 804AF6F0  38 00 00 02 */	li r0, 2
/* 804AF6F4  48 00 00 20 */	b lbl_804AF714
lbl_804AF6F8:
/* 804AF6F8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804AF6FC  41 82 00 0C */	beq lbl_804AF708
/* 804AF700  38 00 00 05 */	li r0, 5
/* 804AF704  48 00 00 10 */	b lbl_804AF714
lbl_804AF708:
/* 804AF708  38 00 00 03 */	li r0, 3
/* 804AF70C  48 00 00 08 */	b lbl_804AF714
lbl_804AF710:
/* 804AF710  38 00 00 04 */	li r0, 4
lbl_804AF714:
/* 804AF714  2C 00 00 01 */	cmpwi r0, 1
/* 804AF718  40 82 00 0C */	bne lbl_804AF724
/* 804AF71C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 804AF720  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_804AF724:
/* 804AF724  C0 1E 00 DC */	lfs f0, 0xdc(r30)
/* 804AF728  EC 20 00 72 */	fmuls f1, f0, f1
lbl_804AF72C:
/* 804AF72C  38 7D 0F 5C */	addi r3, r29, 0xf5c
/* 804AF730  C0 5E 00 0C */	lfs f2, 0xc(r30)
/* 804AF734  C0 7E 00 24 */	lfs f3, 0x24(r30)
/* 804AF738  4B DC 03 05 */	bl cLib_addCalc2__FPffff
/* 804AF73C  38 61 00 28 */	addi r3, r1, 0x28
/* 804AF740  38 9D 0B A8 */	addi r4, r29, 0xba8
/* 804AF744  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 804AF748  4B DB 73 ED */	bl __mi__4cXyzCFRC3Vec
/* 804AF74C  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 804AF750  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 804AF754  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 804AF758  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 804AF75C  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 804AF760  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 804AF764  4B DB 7F 11 */	bl cM_atan2s__Fff
/* 804AF768  7C 64 1B 78 */	mr r4, r3
/* 804AF76C  38 7D 04 DE */	addi r3, r29, 0x4de
/* 804AF770  38 A0 00 01 */	li r5, 1
/* 804AF774  38 C0 10 00 */	li r6, 0x1000
/* 804AF778  4B DC 0E 91 */	bl cLib_addCalcAngleS2__FPssss
/* 804AF77C  C0 3D 0F 5C */	lfs f1, 0xf5c(r29)
/* 804AF780  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 804AF784  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AF788  40 80 00 08 */	bge lbl_804AF790
/* 804AF78C  D0 1D 0F 5C */	stfs f0, 0xf5c(r29)
lbl_804AF790:
/* 804AF790  A8 1D 05 86 */	lha r0, 0x586(r29)
/* 804AF794  2C 00 00 00 */	cmpwi r0, 0
/* 804AF798  40 82 02 24 */	bne lbl_804AF9BC
/* 804AF79C  C0 3D 0F 5C */	lfs f1, 0xf5c(r29)
/* 804AF7A0  C0 1E 01 AC */	lfs f0, 0x1ac(r30)
/* 804AF7A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AF7A8  4C 40 13 82 */	cror 2, 0, 2
/* 804AF7AC  41 82 00 24 */	beq lbl_804AF7D0
/* 804AF7B0  7F A3 EB 78 */	mr r3, r29
/* 804AF7B4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804AF7B8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804AF7BC  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 804AF7C0  4B B6 B1 A5 */	bl fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 804AF7C4  C0 1E 01 B0 */	lfs f0, 0x1b0(r30)
/* 804AF7C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804AF7CC  40 80 01 F0 */	bge lbl_804AF9BC
lbl_804AF7D0:
/* 804AF7D0  88 1D 10 A6 */	lbz r0, 0x10a6(r29)
/* 804AF7D4  7C 00 07 75 */	extsb. r0, r0
/* 804AF7D8  40 82 01 E4 */	bne lbl_804AF9BC
/* 804AF7DC  88 1D 10 A9 */	lbz r0, 0x10a9(r29)
/* 804AF7E0  7C 00 07 75 */	extsb. r0, r0
/* 804AF7E4  41 82 00 68 */	beq lbl_804AF84C
/* 804AF7E8  38 00 00 02 */	li r0, 2
/* 804AF7EC  98 1D 10 A9 */	stb r0, 0x10a9(r29)
/* 804AF7F0  38 00 00 08 */	li r0, 8
/* 804AF7F4  B0 1D 0F 7E */	sth r0, 0xf7e(r29)
/* 804AF7F8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804AF7FC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804AF800  80 63 00 00 */	lwz r3, 0(r3)
/* 804AF804  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 804AF808  38 80 00 04 */	li r4, 4
/* 804AF80C  4B E0 07 81 */	bl changeBgmStatus__8Z2SeqMgrFl
/* 804AF810  38 00 00 1E */	li r0, 0x1e
/* 804AF814  B0 1D 13 B4 */	sth r0, 0x13b4(r29)
/* 804AF818  38 00 00 00 */	li r0, 0
/* 804AF81C  B0 1D 13 B6 */	sth r0, 0x13b6(r29)
/* 804AF820  C0 1E 01 B4 */	lfs f0, 0x1b4(r30)
/* 804AF824  D0 1D 14 08 */	stfs f0, 0x1408(r29)
/* 804AF828  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 804AF82C  D0 1D 14 10 */	stfs f0, 0x1410(r29)
/* 804AF830  98 1D 14 6D */	stb r0, 0x146d(r29)
/* 804AF834  B0 1D 10 B0 */	sth r0, 0x10b0(r29)
/* 804AF838  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 804AF83C  80 03 05 88 */	lwz r0, 0x588(r3)
/* 804AF840  64 00 00 04 */	oris r0, r0, 4
/* 804AF844  90 03 05 88 */	stw r0, 0x588(r3)
/* 804AF848  48 00 01 74 */	b lbl_804AF9BC
lbl_804AF84C:
/* 804AF84C  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 804AF850  80 03 05 88 */	lwz r0, 0x588(r3)
/* 804AF854  64 00 00 02 */	oris r0, r0, 2
/* 804AF858  90 03 05 88 */	stw r0, 0x588(r3)
/* 804AF85C  C0 1E 01 48 */	lfs f0, 0x148(r30)
/* 804AF860  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 804AF864  38 00 00 01 */	li r0, 1
/* 804AF868  B0 1D 0F 7E */	sth r0, 0xf7e(r29)
/* 804AF86C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804AF870  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804AF874  80 63 00 00 */	lwz r3, 0(r3)
/* 804AF878  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 804AF87C  38 80 00 00 */	li r4, 0
/* 804AF880  4B E0 32 09 */	bl changeFishingBgm__8Z2SeqMgrFl
/* 804AF884  88 1D 10 A7 */	lbz r0, 0x10a7(r29)
/* 804AF888  2C 00 00 03 */	cmpwi r0, 3
/* 804AF88C  40 82 00 20 */	bne lbl_804AF8AC
/* 804AF890  80 9F 5D B4 */	lwz r4, 0x5db4(r31)
/* 804AF894  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804AF898  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804AF89C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 804AF8A0  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 804AF8A4  B0 04 31 1A */	sth r0, 0x311a(r4)
/* 804AF8A8  48 00 00 18 */	b lbl_804AF8C0
lbl_804AF8AC:
/* 804AF8AC  80 9F 5D B4 */	lwz r4, 0x5db4(r31)
/* 804AF8B0  A8 64 04 E6 */	lha r3, 0x4e6(r4)
/* 804AF8B4  A8 04 05 9E */	lha r0, 0x59e(r4)
/* 804AF8B8  7C 03 02 14 */	add r0, r3, r0
/* 804AF8BC  B0 04 31 1A */	sth r0, 0x311a(r4)
lbl_804AF8C0:
/* 804AF8C0  38 00 00 00 */	li r0, 0
/* 804AF8C4  98 1D 10 A7 */	stb r0, 0x10a7(r29)
/* 804AF8C8  38 61 00 1C */	addi r3, r1, 0x1c
/* 804AF8CC  38 9D 06 AC */	addi r4, r29, 0x6ac
/* 804AF8D0  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 804AF8D4  4B DB 72 61 */	bl __mi__4cXyzCFRC3Vec
/* 804AF8D8  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804AF8DC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 804AF8E0  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 804AF8E4  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 804AF8E8  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 804AF8EC  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 804AF8F0  4B DB 7D 85 */	bl cM_atan2s__Fff
/* 804AF8F4  7C 03 00 D0 */	neg r0, r3
/* 804AF8F8  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 804AF8FC  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 804AF900  EC 20 00 32 */	fmuls f1, f0, f0
/* 804AF904  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 804AF908  EC 00 00 32 */	fmuls f0, f0, f0
/* 804AF90C  EC 41 00 2A */	fadds f2, f1, f0
/* 804AF910  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804AF914  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804AF918  40 81 00 0C */	ble lbl_804AF924
/* 804AF91C  FC 00 10 34 */	frsqrte f0, f2
/* 804AF920  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_804AF924:
/* 804AF924  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 804AF928  4B DB 7D 4D */	bl cM_atan2s__Fff
/* 804AF92C  B0 7D 04 DE */	sth r3, 0x4de(r29)
/* 804AF930  38 00 00 02 */	li r0, 2
/* 804AF934  B0 1D 13 B4 */	sth r0, 0x13b4(r29)
/* 804AF938  38 60 00 00 */	li r3, 0
/* 804AF93C  B0 7D 13 B6 */	sth r3, 0x13b6(r29)
/* 804AF940  C0 1E 01 5C */	lfs f0, 0x15c(r30)
/* 804AF944  D0 1D 14 10 */	stfs f0, 0x1410(r29)
/* 804AF948  B0 7D 10 00 */	sth r3, 0x1000(r29)
/* 804AF94C  B0 7D 0F FC */	sth r3, 0xffc(r29)
/* 804AF950  B0 7D 05 7A */	sth r3, 0x57a(r29)
/* 804AF954  38 00 00 14 */	li r0, 0x14
/* 804AF958  B0 1D 05 7C */	sth r0, 0x57c(r29)
/* 804AF95C  B0 7D 14 F8 */	sth r3, 0x14f8(r29)
/* 804AF960  C0 3E 00 58 */	lfs f1, 0x58(r30)
/* 804AF964  D0 3D 06 F8 */	stfs f1, 0x6f8(r29)
/* 804AF968  D0 3D 06 E0 */	stfs f1, 0x6e0(r29)
/* 804AF96C  C0 1D 07 64 */	lfs f0, 0x764(r29)
/* 804AF970  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 804AF974  C0 1D 07 68 */	lfs f0, 0x768(r29)
/* 804AF978  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 804AF97C  C0 1D 07 6C */	lfs f0, 0x76c(r29)
/* 804AF980  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 804AF984  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 804AF988  D0 1D 04 BC */	stfs f0, 0x4bc(r29)
/* 804AF98C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 804AF990  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 804AF994  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 804AF998  D0 1D 04 C4 */	stfs f0, 0x4c4(r29)
/* 804AF99C  38 60 00 04 */	li r3, 4
/* 804AF9A0  38 00 00 62 */	li r0, 0x62
/* 804AF9A4  7C 09 03 A6 */	mtctr r0
lbl_804AF9A8:
/* 804AF9A8  7C 9D 1A 14 */	add r4, r29, r3
/* 804AF9AC  D0 24 0D B0 */	stfs f1, 0xdb0(r4)
/* 804AF9B0  D0 24 0C 20 */	stfs f1, 0xc20(r4)
/* 804AF9B4  38 63 00 04 */	addi r3, r3, 4
/* 804AF9B8  42 00 FF F0 */	bdnz lbl_804AF9A8
lbl_804AF9BC:
/* 804AF9BC  88 7D 10 A6 */	lbz r3, 0x10a6(r29)
/* 804AF9C0  7C 60 07 75 */	extsb. r0, r3
/* 804AF9C4  41 82 00 60 */	beq lbl_804AFA24
/* 804AF9C8  38 03 FF FF */	addi r0, r3, -1
/* 804AF9CC  98 1D 10 A6 */	stb r0, 0x10a6(r29)
/* 804AF9D0  88 1D 10 A6 */	lbz r0, 0x10a6(r29)
/* 804AF9D4  7C 00 07 75 */	extsb. r0, r0
/* 804AF9D8  40 82 00 4C */	bne lbl_804AFA24
/* 804AF9DC  38 00 00 14 */	li r0, 0x14
/* 804AF9E0  B0 1D 13 B4 */	sth r0, 0x13b4(r29)
/* 804AF9E4  38 00 00 00 */	li r0, 0
/* 804AF9E8  B0 1D 13 B6 */	sth r0, 0x13b6(r29)
/* 804AF9EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804AF9F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804AF9F4  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 804AF9F8  7C 00 07 74 */	extsb r0, r0
/* 804AF9FC  1C 00 00 38 */	mulli r0, r0, 0x38
/* 804AFA00  7C 63 02 14 */	add r3, r3, r0
/* 804AFA04  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 804AFA08  38 63 02 48 */	addi r3, r3, 0x248
/* 804AFA0C  38 80 00 01 */	li r4, 1
/* 804AFA10  4B CB 35 FD */	bl SetTrimSize__9dCamera_cFl
/* 804AFA14  38 00 00 07 */	li r0, 7
/* 804AFA18  B0 1D 0F 7E */	sth r0, 0xf7e(r29)
/* 804AFA1C  38 00 00 00 */	li r0, 0
/* 804AFA20  98 1D 14 6D */	stb r0, 0x146d(r29)
lbl_804AFA24:
/* 804AFA24  88 1D 13 A8 */	lbz r0, 0x13a8(r29)
/* 804AFA28  28 00 00 32 */	cmplwi r0, 0x32
/* 804AFA2C  40 81 00 24 */	ble lbl_804AFA50
/* 804AFA30  38 00 00 00 */	li r0, 0
/* 804AFA34  98 1D 10 0D */	stb r0, 0x100d(r29)
/* 804AFA38  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 804AFA3C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 804AFA40  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 804AFA44  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 804AFA48  EC 01 00 2A */	fadds f0, f1, f0
/* 804AFA4C  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
lbl_804AFA50:
/* 804AFA50  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 804AFA54  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 804AFA58  39 61 00 80 */	addi r11, r1, 0x80
/* 804AFA5C  4B EB 27 CD */	bl _restgpr_29
/* 804AFA60  80 01 00 94 */	lwz r0, 0x94(r1)
/* 804AFA64  7C 08 03 A6 */	mtlr r0
/* 804AFA68  38 21 00 90 */	addi r1, r1, 0x90
/* 804AFA6C  4E 80 00 20 */	blr 
