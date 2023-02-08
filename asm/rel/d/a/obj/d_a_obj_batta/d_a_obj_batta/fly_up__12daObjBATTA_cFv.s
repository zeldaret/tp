lbl_80BAAD30:
/* 80BAAD30  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80BAAD34  7C 08 02 A6 */	mflr r0
/* 80BAAD38  90 01 00 84 */	stw r0, 0x84(r1)
/* 80BAAD3C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80BAAD40  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80BAAD44  39 61 00 70 */	addi r11, r1, 0x70
/* 80BAAD48  4B 7B 74 95 */	bl _savegpr_29
/* 80BAAD4C  7C 7D 1B 78 */	mr r29, r3
/* 80BAAD50  3C 60 80 BB */	lis r3, lit_3774@ha /* 0x80BAC970@ha */
/* 80BAAD54  3B E3 C9 70 */	addi r31, r3, lit_3774@l /* 0x80BAC970@l */
/* 80BAAD58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BAAD5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BAAD60  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80BAAD64  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80BAAD68  81 8C 01 C8 */	lwz r12, 0x1c8(r12)
/* 80BAAD6C  7D 89 03 A6 */	mtctr r12
/* 80BAAD70  4E 80 04 21 */	bctrl 
/* 80BAAD74  7C 7E 1B 78 */	mr r30, r3
/* 80BAAD78  80 1D 09 E8 */	lwz r0, 0x9e8(r29)
/* 80BAAD7C  2C 00 00 00 */	cmpwi r0, 0
/* 80BAAD80  40 82 03 AC */	bne lbl_80BAB12C
/* 80BAAD84  3C 60 80 BB */	lis r3, d_a_obj_batta__stringBase0@ha /* 0x80BACA64@ha */
/* 80BAAD88  38 63 CA 64 */	addi r3, r3, d_a_obj_batta__stringBase0@l /* 0x80BACA64@l */
/* 80BAAD8C  38 80 00 06 */	li r4, 6
/* 80BAAD90  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BAAD94  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BAAD98  3C A5 00 02 */	addis r5, r5, 2
/* 80BAAD9C  38 C0 00 80 */	li r6, 0x80
/* 80BAADA0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BAADA4  4B 49 15 49 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80BAADA8  7C 64 1B 78 */	mr r4, r3
/* 80BAADAC  80 7D 06 20 */	lwz r3, 0x620(r29)
/* 80BAADB0  38 A0 00 02 */	li r5, 2
/* 80BAADB4  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 80BAADB8  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 80BAADBC  C0 7F 00 1C */	lfs f3, 0x1c(r31)
/* 80BAADC0  C0 9F 00 20 */	lfs f4, 0x20(r31)
/* 80BAADC4  4B 46 60 AD */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 80BAADC8  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80BAADCC  D0 3D 05 30 */	stfs f1, 0x530(r29)
/* 80BAADD0  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80BAADD4  D0 1D 05 34 */	stfs f0, 0x534(r29)
/* 80BAADD8  28 1E 00 00 */	cmplwi r30, 0
/* 80BAADDC  41 82 01 78 */	beq lbl_80BAAF54
/* 80BAADE0  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80BAADE4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80BAADE8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80BAADEC  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80BAADF0  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 80BAADF4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80BAADF8  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80BAADFC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80BAAE00  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80BAAE04  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80BAAE08  38 61 00 2C */	addi r3, r1, 0x2c
/* 80BAAE0C  38 81 00 38 */	addi r4, r1, 0x38
/* 80BAAE10  4B 79 C5 8D */	bl PSVECSquareDistance
/* 80BAAE14  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80BAAE18  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BAAE1C  40 81 00 58 */	ble lbl_80BAAE74
/* 80BAAE20  FC 00 08 34 */	frsqrte f0, f1
/* 80BAAE24  C8 9F 00 38 */	lfd f4, 0x38(r31)
/* 80BAAE28  FC 44 00 32 */	fmul f2, f4, f0
/* 80BAAE2C  C8 7F 00 40 */	lfd f3, 0x40(r31)
/* 80BAAE30  FC 00 00 32 */	fmul f0, f0, f0
/* 80BAAE34  FC 01 00 32 */	fmul f0, f1, f0
/* 80BAAE38  FC 03 00 28 */	fsub f0, f3, f0
/* 80BAAE3C  FC 02 00 32 */	fmul f0, f2, f0
/* 80BAAE40  FC 44 00 32 */	fmul f2, f4, f0
/* 80BAAE44  FC 00 00 32 */	fmul f0, f0, f0
/* 80BAAE48  FC 01 00 32 */	fmul f0, f1, f0
/* 80BAAE4C  FC 03 00 28 */	fsub f0, f3, f0
/* 80BAAE50  FC 02 00 32 */	fmul f0, f2, f0
/* 80BAAE54  FC 44 00 32 */	fmul f2, f4, f0
/* 80BAAE58  FC 00 00 32 */	fmul f0, f0, f0
/* 80BAAE5C  FC 01 00 32 */	fmul f0, f1, f0
/* 80BAAE60  FC 03 00 28 */	fsub f0, f3, f0
/* 80BAAE64  FC 02 00 32 */	fmul f0, f2, f0
/* 80BAAE68  FC 21 00 32 */	fmul f1, f1, f0
/* 80BAAE6C  FC 20 08 18 */	frsp f1, f1
/* 80BAAE70  48 00 00 88 */	b lbl_80BAAEF8
lbl_80BAAE74:
/* 80BAAE74  C8 1F 00 48 */	lfd f0, 0x48(r31)
/* 80BAAE78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BAAE7C  40 80 00 10 */	bge lbl_80BAAE8C
/* 80BAAE80  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BAAE84  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BAAE88  48 00 00 70 */	b lbl_80BAAEF8
lbl_80BAAE8C:
/* 80BAAE8C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80BAAE90  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80BAAE94  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BAAE98  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BAAE9C  7C 03 00 00 */	cmpw r3, r0
/* 80BAAEA0  41 82 00 14 */	beq lbl_80BAAEB4
/* 80BAAEA4  40 80 00 40 */	bge lbl_80BAAEE4
/* 80BAAEA8  2C 03 00 00 */	cmpwi r3, 0
/* 80BAAEAC  41 82 00 20 */	beq lbl_80BAAECC
/* 80BAAEB0  48 00 00 34 */	b lbl_80BAAEE4
lbl_80BAAEB4:
/* 80BAAEB4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BAAEB8  41 82 00 0C */	beq lbl_80BAAEC4
/* 80BAAEBC  38 00 00 01 */	li r0, 1
/* 80BAAEC0  48 00 00 28 */	b lbl_80BAAEE8
lbl_80BAAEC4:
/* 80BAAEC4  38 00 00 02 */	li r0, 2
/* 80BAAEC8  48 00 00 20 */	b lbl_80BAAEE8
lbl_80BAAECC:
/* 80BAAECC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BAAED0  41 82 00 0C */	beq lbl_80BAAEDC
/* 80BAAED4  38 00 00 05 */	li r0, 5
/* 80BAAED8  48 00 00 10 */	b lbl_80BAAEE8
lbl_80BAAEDC:
/* 80BAAEDC  38 00 00 03 */	li r0, 3
/* 80BAAEE0  48 00 00 08 */	b lbl_80BAAEE8
lbl_80BAAEE4:
/* 80BAAEE4  38 00 00 04 */	li r0, 4
lbl_80BAAEE8:
/* 80BAAEE8  2C 00 00 01 */	cmpwi r0, 1
/* 80BAAEEC  40 82 00 0C */	bne lbl_80BAAEF8
/* 80BAAEF0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BAAEF4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80BAAEF8:
/* 80BAAEF8  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 80BAAEFC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BAAF00  40 80 00 54 */	bge lbl_80BAAF54
/* 80BAAF04  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80BAAF08  4B 6B CA 85 */	bl cM_rndFX__Ff
/* 80BAAF0C  FF E0 08 90 */	fmr f31, f1
/* 80BAAF10  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80BAAF14  7F C4 F3 78 */	mr r4, r30
/* 80BAAF18  4B 6C 5C ED */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80BAAF1C  7C 60 07 34 */	extsh r0, r3
/* 80BAAF20  C8 3F 00 70 */	lfd f1, 0x70(r31)
/* 80BAAF24  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BAAF28  90 01 00 54 */	stw r0, 0x54(r1)
/* 80BAAF2C  3C 00 43 30 */	lis r0, 0x4330
/* 80BAAF30  90 01 00 50 */	stw r0, 0x50(r1)
/* 80BAAF34  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 80BAAF38  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BAAF3C  EC 00 F8 2A */	fadds f0, f0, f31
/* 80BAAF40  FC 00 00 1E */	fctiwz f0, f0
/* 80BAAF44  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 80BAAF48  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80BAAF4C  B0 1D 09 EC */	sth r0, 0x9ec(r29)
/* 80BAAF50  48 00 01 94 */	b lbl_80BAB0E4
lbl_80BAAF54:
/* 80BAAF54  C0 5D 04 B0 */	lfs f2, 0x4b0(r29)
/* 80BAAF58  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 80BAAF5C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80BAAF60  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 80BAAF64  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80BAAF68  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80BAAF6C  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 80BAAF70  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80BAAF74  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80BAAF78  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80BAAF7C  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80BAAF80  38 61 00 14 */	addi r3, r1, 0x14
/* 80BAAF84  38 81 00 20 */	addi r4, r1, 0x20
/* 80BAAF88  4B 79 C4 15 */	bl PSVECSquareDistance
/* 80BAAF8C  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80BAAF90  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BAAF94  40 81 00 58 */	ble lbl_80BAAFEC
/* 80BAAF98  FC 00 08 34 */	frsqrte f0, f1
/* 80BAAF9C  C8 9F 00 38 */	lfd f4, 0x38(r31)
/* 80BAAFA0  FC 44 00 32 */	fmul f2, f4, f0
/* 80BAAFA4  C8 7F 00 40 */	lfd f3, 0x40(r31)
/* 80BAAFA8  FC 00 00 32 */	fmul f0, f0, f0
/* 80BAAFAC  FC 01 00 32 */	fmul f0, f1, f0
/* 80BAAFB0  FC 03 00 28 */	fsub f0, f3, f0
/* 80BAAFB4  FC 02 00 32 */	fmul f0, f2, f0
/* 80BAAFB8  FC 44 00 32 */	fmul f2, f4, f0
/* 80BAAFBC  FC 00 00 32 */	fmul f0, f0, f0
/* 80BAAFC0  FC 01 00 32 */	fmul f0, f1, f0
/* 80BAAFC4  FC 03 00 28 */	fsub f0, f3, f0
/* 80BAAFC8  FC 02 00 32 */	fmul f0, f2, f0
/* 80BAAFCC  FC 44 00 32 */	fmul f2, f4, f0
/* 80BAAFD0  FC 00 00 32 */	fmul f0, f0, f0
/* 80BAAFD4  FC 01 00 32 */	fmul f0, f1, f0
/* 80BAAFD8  FC 03 00 28 */	fsub f0, f3, f0
/* 80BAAFDC  FC 02 00 32 */	fmul f0, f2, f0
/* 80BAAFE0  FC 21 00 32 */	fmul f1, f1, f0
/* 80BAAFE4  FC 20 08 18 */	frsp f1, f1
/* 80BAAFE8  48 00 00 88 */	b lbl_80BAB070
lbl_80BAAFEC:
/* 80BAAFEC  C8 1F 00 48 */	lfd f0, 0x48(r31)
/* 80BAAFF0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BAAFF4  40 80 00 10 */	bge lbl_80BAB004
/* 80BAAFF8  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BAAFFC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80BAB000  48 00 00 70 */	b lbl_80BAB070
lbl_80BAB004:
/* 80BAB004  D0 21 00 08 */	stfs f1, 8(r1)
/* 80BAB008  80 81 00 08 */	lwz r4, 8(r1)
/* 80BAB00C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80BAB010  3C 00 7F 80 */	lis r0, 0x7f80
/* 80BAB014  7C 03 00 00 */	cmpw r3, r0
/* 80BAB018  41 82 00 14 */	beq lbl_80BAB02C
/* 80BAB01C  40 80 00 40 */	bge lbl_80BAB05C
/* 80BAB020  2C 03 00 00 */	cmpwi r3, 0
/* 80BAB024  41 82 00 20 */	beq lbl_80BAB044
/* 80BAB028  48 00 00 34 */	b lbl_80BAB05C
lbl_80BAB02C:
/* 80BAB02C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BAB030  41 82 00 0C */	beq lbl_80BAB03C
/* 80BAB034  38 00 00 01 */	li r0, 1
/* 80BAB038  48 00 00 28 */	b lbl_80BAB060
lbl_80BAB03C:
/* 80BAB03C  38 00 00 02 */	li r0, 2
/* 80BAB040  48 00 00 20 */	b lbl_80BAB060
lbl_80BAB044:
/* 80BAB044  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80BAB048  41 82 00 0C */	beq lbl_80BAB054
/* 80BAB04C  38 00 00 05 */	li r0, 5
/* 80BAB050  48 00 00 10 */	b lbl_80BAB060
lbl_80BAB054:
/* 80BAB054  38 00 00 03 */	li r0, 3
/* 80BAB058  48 00 00 08 */	b lbl_80BAB060
lbl_80BAB05C:
/* 80BAB05C  38 00 00 04 */	li r0, 4
lbl_80BAB060:
/* 80BAB060  2C 00 00 01 */	cmpwi r0, 1
/* 80BAB064  40 82 00 0C */	bne lbl_80BAB070
/* 80BAB068  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80BAB06C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80BAB070:
/* 80BAB070  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80BAB074  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BAB078  40 80 00 20 */	bge lbl_80BAB098
/* 80BAB07C  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 80BAB080  4B 6B C9 0D */	bl cM_rndFX__Ff
/* 80BAB084  FC 00 08 1E */	fctiwz f0, f1
/* 80BAB088  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 80BAB08C  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80BAB090  B0 1D 09 EC */	sth r0, 0x9ec(r29)
/* 80BAB094  48 00 00 50 */	b lbl_80BAB0E4
lbl_80BAB098:
/* 80BAB098  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80BAB09C  4B 6B C8 F1 */	bl cM_rndFX__Ff
/* 80BAB0A0  FF E0 08 90 */	fmr f31, f1
/* 80BAB0A4  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80BAB0A8  38 9D 04 A8 */	addi r4, r29, 0x4a8
/* 80BAB0AC  4B 6C 5B 59 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80BAB0B0  7C 60 07 34 */	extsh r0, r3
/* 80BAB0B4  C8 3F 00 70 */	lfd f1, 0x70(r31)
/* 80BAB0B8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80BAB0BC  90 01 00 5C */	stw r0, 0x5c(r1)
/* 80BAB0C0  3C 00 43 30 */	lis r0, 0x4330
/* 80BAB0C4  90 01 00 58 */	stw r0, 0x58(r1)
/* 80BAB0C8  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 80BAB0CC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80BAB0D0  EC 00 F8 2A */	fadds f0, f0, f31
/* 80BAB0D4  FC 00 00 1E */	fctiwz f0, f0
/* 80BAB0D8  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 80BAB0DC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80BAB0E0  B0 1D 09 EC */	sth r0, 0x9ec(r29)
lbl_80BAB0E4:
/* 80BAB0E4  88 1D 09 F0 */	lbz r0, 0x9f0(r29)
/* 80BAB0E8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80BAB0EC  41 82 00 10 */	beq lbl_80BAB0FC
/* 80BAB0F0  38 00 00 78 */	li r0, 0x78
/* 80BAB0F4  98 1D 09 F2 */	stb r0, 0x9f2(r29)
/* 80BAB0F8  48 00 00 24 */	b lbl_80BAB11C
lbl_80BAB0FC:
/* 80BAB0FC  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80BAB100  4B 6B C8 55 */	bl cM_rndF__Ff
/* 80BAB104  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80BAB108  EC 00 08 2A */	fadds f0, f0, f1
/* 80BAB10C  FC 00 00 1E */	fctiwz f0, f0
/* 80BAB110  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 80BAB114  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80BAB118  98 1D 09 F2 */	stb r0, 0x9f2(r29)
lbl_80BAB11C:
/* 80BAB11C  80 7D 09 E8 */	lwz r3, 0x9e8(r29)
/* 80BAB120  38 03 00 01 */	addi r0, r3, 1
/* 80BAB124  90 1D 09 E8 */	stw r0, 0x9e8(r29)
/* 80BAB128  48 00 00 EC */	b lbl_80BAB214
lbl_80BAB12C:
/* 80BAB12C  2C 00 FF FF */	cmpwi r0, -1
/* 80BAB130  41 82 00 E4 */	beq lbl_80BAB214
/* 80BAB134  A8 7D 09 EC */	lha r3, 0x9ec(r29)
/* 80BAB138  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80BAB13C  7C 63 00 50 */	subf r3, r3, r0
/* 80BAB140  4B 7B 9F 91 */	bl abs
/* 80BAB144  54 7E 04 3E */	clrlwi r30, r3, 0x10
/* 80BAB148  88 1D 05 6D */	lbz r0, 0x56d(r29)
/* 80BAB14C  28 00 00 00 */	cmplwi r0, 0
/* 80BAB150  41 82 00 0C */	beq lbl_80BAB15C
/* 80BAB154  7F A3 EB 78 */	mr r3, r29
/* 80BAB158  48 00 09 41 */	bl batta_setParticle__12daObjBATTA_cFv
lbl_80BAB15C:
/* 80BAB15C  38 7D 04 DE */	addi r3, r29, 0x4de
/* 80BAB160  A8 9D 09 EC */	lha r4, 0x9ec(r29)
/* 80BAB164  28 1E 40 00 */	cmplwi r30, 0x4000
/* 80BAB168  38 A0 04 00 */	li r5, 0x400
/* 80BAB16C  40 80 00 08 */	bge lbl_80BAB174
/* 80BAB170  38 A0 02 00 */	li r5, 0x200
lbl_80BAB174:
/* 80BAB174  4B 6C 5A 1D */	bl cLib_chaseAngleS__FPsss
/* 80BAB178  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80BAB17C  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80BAB180  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 80BAB184  4B 6C 55 BD */	bl cLib_chaseF__FPfff
/* 80BAB188  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 80BAB18C  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80BAB190  C0 5F 00 A0 */	lfs f2, 0xa0(r31)
/* 80BAB194  4B 6C 55 AD */	bl cLib_chaseF__FPfff
/* 80BAB198  88 1D 09 F2 */	lbz r0, 0x9f2(r29)
/* 80BAB19C  28 00 00 00 */	cmplwi r0, 0
/* 80BAB1A0  40 82 00 48 */	bne lbl_80BAB1E8
/* 80BAB1A4  88 1D 09 F0 */	lbz r0, 0x9f0(r29)
/* 80BAB1A8  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80BAB1AC  41 82 00 10 */	beq lbl_80BAB1BC
/* 80BAB1B0  7F A3 EB 78 */	mr r3, r29
/* 80BAB1B4  4B 46 EA C9 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80BAB1B8  48 00 00 30 */	b lbl_80BAB1E8
lbl_80BAB1BC:
/* 80BAB1BC  3C 60 80 BB */	lis r3, lit_4246@ha /* 0x80BACB18@ha */
/* 80BAB1C0  38 83 CB 18 */	addi r4, r3, lit_4246@l /* 0x80BACB18@l */
/* 80BAB1C4  80 64 00 00 */	lwz r3, 0(r4)
/* 80BAB1C8  80 04 00 04 */	lwz r0, 4(r4)
/* 80BAB1CC  90 61 00 44 */	stw r3, 0x44(r1)
/* 80BAB1D0  90 01 00 48 */	stw r0, 0x48(r1)
/* 80BAB1D4  80 04 00 08 */	lwz r0, 8(r4)
/* 80BAB1D8  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80BAB1DC  7F A3 EB 78 */	mr r3, r29
/* 80BAB1E0  38 81 00 44 */	addi r4, r1, 0x44
/* 80BAB1E4  4B FF EC 79 */	bl setAction__12daObjBATTA_cFM12daObjBATTA_cFPCvPv_v
lbl_80BAB1E8:
/* 80BAB1E8  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600A4@ha */
/* 80BAB1EC  38 03 00 A4 */	addi r0, r3, 0x00A4 /* 0x000600A4@l */
/* 80BAB1F0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80BAB1F4  38 7D 05 90 */	addi r3, r29, 0x590
/* 80BAB1F8  38 81 00 10 */	addi r4, r1, 0x10
/* 80BAB1FC  38 A0 00 00 */	li r5, 0
/* 80BAB200  38 C0 FF FF */	li r6, -1
/* 80BAB204  81 9D 05 90 */	lwz r12, 0x590(r29)
/* 80BAB208  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80BAB20C  7D 89 03 A6 */	mtctr r12
/* 80BAB210  4E 80 04 21 */	bctrl 
lbl_80BAB214:
/* 80BAB214  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80BAB218  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80BAB21C  39 61 00 70 */	addi r11, r1, 0x70
/* 80BAB220  4B 7B 70 09 */	bl _restgpr_29
/* 80BAB224  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80BAB228  7C 08 03 A6 */	mtlr r0
/* 80BAB22C  38 21 00 80 */	addi r1, r1, 0x80
/* 80BAB230  4E 80 00 20 */	blr 
