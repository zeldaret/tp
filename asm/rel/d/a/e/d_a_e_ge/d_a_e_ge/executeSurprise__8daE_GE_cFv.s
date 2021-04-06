lbl_806CAE58:
/* 806CAE58  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 806CAE5C  7C 08 02 A6 */	mflr r0
/* 806CAE60  90 01 00 84 */	stw r0, 0x84(r1)
/* 806CAE64  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 806CAE68  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 806CAE6C  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 806CAE70  93 C1 00 68 */	stw r30, 0x68(r1)
/* 806CAE74  7C 7E 1B 78 */	mr r30, r3
/* 806CAE78  3C 80 80 6D */	lis r4, lit_3904@ha /* 0x806CD000@ha */
/* 806CAE7C  3B E4 D0 00 */	addi r31, r4, lit_3904@l /* 0x806CD000@l */
/* 806CAE80  80 03 0B 78 */	lwz r0, 0xb78(r3)
/* 806CAE84  2C 00 00 01 */	cmpwi r0, 1
/* 806CAE88  41 82 00 C0 */	beq lbl_806CAF48
/* 806CAE8C  40 80 03 98 */	bge lbl_806CB224
/* 806CAE90  2C 00 00 00 */	cmpwi r0, 0
/* 806CAE94  40 80 00 08 */	bge lbl_806CAE9C
/* 806CAE98  48 00 03 8C */	b lbl_806CB224
lbl_806CAE9C:
/* 806CAE9C  38 00 00 00 */	li r0, 0
/* 806CAEA0  98 1E 0B 9E */	stb r0, 0xb9e(r30)
/* 806CAEA4  38 80 00 08 */	li r4, 8
/* 806CAEA8  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 806CAEAC  38 A0 00 00 */	li r5, 0
/* 806CAEB0  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806CAEB4  4B FF CC 05 */	bl bckSet__8daE_GE_cFifUcf
/* 806CAEB8  C0 3F 00 00 */	lfs f1, 0(r31)
/* 806CAEBC  4B B9 CA 99 */	bl cM_rndF__Ff
/* 806CAEC0  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 806CAEC4  EC 00 08 2A */	fadds f0, f0, f1
/* 806CAEC8  FC 00 00 1E */	fctiwz f0, f0
/* 806CAECC  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 806CAED0  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 806CAED4  B0 1E 0B 8E */	sth r0, 0xb8e(r30)
/* 806CAED8  38 00 00 01 */	li r0, 1
/* 806CAEDC  90 1E 0B 78 */	stw r0, 0xb78(r30)
/* 806CAEE0  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 806CAEE4  4B B9 CA A9 */	bl cM_rndFX__Ff
/* 806CAEE8  FC 00 08 1E */	fctiwz f0, f1
/* 806CAEEC  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 806CAEF0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806CAEF4  B0 1E 0B 8C */	sth r0, 0xb8c(r30)
/* 806CAEF8  C0 3F 00 C0 */	lfs f1, 0xc0(r31)
/* 806CAEFC  4B B9 CA 91 */	bl cM_rndFX__Ff
/* 806CAF00  FF E0 08 90 */	fmr f31, f1
/* 806CAF04  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 806CAF08  4B B9 CA 85 */	bl cM_rndFX__Ff
/* 806CAF0C  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 806CAF10  EC 20 08 2A */	fadds f1, f0, f1
/* 806CAF14  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806CAF18  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806CAF1C  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 806CAF20  D3 E1 00 40 */	stfs f31, 0x40(r1)
/* 806CAF24  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 806CAF28  4B B9 CA 65 */	bl cM_rndFX__Ff
/* 806CAF2C  FC 00 08 1E */	fctiwz f0, f1
/* 806CAF30  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 806CAF34  80 A1 00 5C */	lwz r5, 0x5c(r1)
/* 806CAF38  38 7E 0B 4C */	addi r3, r30, 0xb4c
/* 806CAF3C  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 806CAF40  38 C1 00 38 */	addi r6, r1, 0x38
/* 806CAF44  4B BA 5E 7D */	bl cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
lbl_806CAF48:
/* 806CAF48  7F C3 F3 78 */	mr r3, r30
/* 806CAF4C  38 80 00 08 */	li r4, 8
/* 806CAF50  4B FF CC 0D */	bl bckCheck__8daE_GE_cFi
/* 806CAF54  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806CAF58  41 82 00 EC */	beq lbl_806CB044
/* 806CAF5C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007046B@ha */
/* 806CAF60  38 03 04 6B */	addi r0, r3, 0x046B /* 0x0007046B@l */
/* 806CAF64  90 01 00 10 */	stw r0, 0x10(r1)
/* 806CAF68  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 806CAF6C  38 81 00 10 */	addi r4, r1, 0x10
/* 806CAF70  38 A0 00 00 */	li r5, 0
/* 806CAF74  38 C0 FF FF */	li r6, -1
/* 806CAF78  81 9E 05 B8 */	lwz r12, 0x5b8(r30)
/* 806CAF7C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 806CAF80  7D 89 03 A6 */	mtctr r12
/* 806CAF84  4E 80 04 21 */	bctrl 
/* 806CAF88  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806CAF8C  38 63 00 0C */	addi r3, r3, 0xc
/* 806CAF90  C0 3F 00 B0 */	lfs f1, 0xb0(r31)
/* 806CAF94  4B C5 D4 99 */	bl checkPass__12J3DFrameCtrlFf
/* 806CAF98  2C 03 00 00 */	cmpwi r3, 0
/* 806CAF9C  40 82 00 34 */	bne lbl_806CAFD0
/* 806CAFA0  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806CAFA4  38 63 00 0C */	addi r3, r3, 0xc
/* 806CAFA8  C0 3F 00 B4 */	lfs f1, 0xb4(r31)
/* 806CAFAC  4B C5 D4 81 */	bl checkPass__12J3DFrameCtrlFf
/* 806CAFB0  2C 03 00 00 */	cmpwi r3, 0
/* 806CAFB4  40 82 00 1C */	bne lbl_806CAFD0
/* 806CAFB8  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806CAFBC  38 63 00 0C */	addi r3, r3, 0xc
/* 806CAFC0  C0 3F 00 B8 */	lfs f1, 0xb8(r31)
/* 806CAFC4  4B C5 D4 69 */	bl checkPass__12J3DFrameCtrlFf
/* 806CAFC8  2C 03 00 00 */	cmpwi r3, 0
/* 806CAFCC  41 82 00 30 */	beq lbl_806CAFFC
lbl_806CAFD0:
/* 806CAFD0  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007046A@ha */
/* 806CAFD4  38 03 04 6A */	addi r0, r3, 0x046A /* 0x0007046A@l */
/* 806CAFD8  90 01 00 0C */	stw r0, 0xc(r1)
/* 806CAFDC  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 806CAFE0  38 81 00 0C */	addi r4, r1, 0xc
/* 806CAFE4  38 A0 00 00 */	li r5, 0
/* 806CAFE8  38 C0 FF FF */	li r6, -1
/* 806CAFEC  81 9E 05 B8 */	lwz r12, 0x5b8(r30)
/* 806CAFF0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806CAFF4  7D 89 03 A6 */	mtctr r12
/* 806CAFF8  4E 80 04 21 */	bctrl 
lbl_806CAFFC:
/* 806CAFFC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806CB000  38 80 00 01 */	li r4, 1
/* 806CB004  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806CB008  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806CB00C  40 82 00 18 */	bne lbl_806CB024
/* 806CB010  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806CB014  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806CB018  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806CB01C  41 82 00 08 */	beq lbl_806CB024
/* 806CB020  38 80 00 00 */	li r4, 0
lbl_806CB024:
/* 806CB024  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806CB028  41 82 00 1C */	beq lbl_806CB044
/* 806CB02C  7F C3 F3 78 */	mr r3, r30
/* 806CB030  38 80 00 07 */	li r4, 7
/* 806CB034  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 806CB038  38 A0 00 02 */	li r5, 2
/* 806CB03C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806CB040  4B FF CA 79 */	bl bckSet__8daE_GE_cFifUcf
lbl_806CB044:
/* 806CB044  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806CB048  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806CB04C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806CB050  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 806CB054  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806CB058  38 61 00 2C */	addi r3, r1, 0x2c
/* 806CB05C  7F C4 F3 78 */	mr r4, r30
/* 806CB060  38 BE 0B 4C */	addi r5, r30, 0xb4c
/* 806CB064  38 C1 00 38 */	addi r6, r1, 0x38
/* 806CB068  A8 FE 0B 8C */	lha r7, 0xb8c(r30)
/* 806CB06C  3D 00 80 6D */	lis r8, l_HIO@ha /* 0x806CD368@ha */
/* 806CB070  39 08 D3 68 */	addi r8, r8, l_HIO@l /* 0x806CD368@l */
/* 806CB074  C0 28 00 18 */	lfs f1, 0x18(r8)
/* 806CB078  39 00 00 06 */	li r8, 6
/* 806CB07C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806CB080  4B FF D8 49 */	bl calcCircleFly__8daE_GE_cFP4cXyzP4cXyzsfsf
/* 806CB084  A8 7E 0B 8C */	lha r3, 0xb8c(r30)
/* 806CB088  38 03 02 58 */	addi r0, r3, 0x258
/* 806CB08C  B0 1E 0B 8C */	sth r0, 0xb8c(r30)
/* 806CB090  A8 1E 0B 8E */	lha r0, 0xb8e(r30)
/* 806CB094  2C 00 00 00 */	cmpwi r0, 0
/* 806CB098  40 82 01 8C */	bne lbl_806CB224
/* 806CB09C  7F C3 F3 78 */	mr r3, r30
/* 806CB0A0  4B FF D3 59 */	bl searchNextAttacker__8daE_GE_cFv
/* 806CB0A4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806CB0A8  40 82 01 B8 */	bne lbl_806CB260
/* 806CB0AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806CB0B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806CB0B4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806CB0B8  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 806CB0BC  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 806CB0C0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806CB0C4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806CB0C8  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 806CB0CC  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 806CB0D0  C0 5E 04 B0 */	lfs f2, 0x4b0(r30)
/* 806CB0D4  C0 1E 04 A8 */	lfs f0, 0x4a8(r30)
/* 806CB0D8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806CB0DC  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 806CB0E0  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 806CB0E4  38 61 00 14 */	addi r3, r1, 0x14
/* 806CB0E8  38 81 00 20 */	addi r4, r1, 0x20
/* 806CB0EC  4B C7 C2 B1 */	bl PSVECSquareDistance
/* 806CB0F0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806CB0F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CB0F8  40 81 00 58 */	ble lbl_806CB150
/* 806CB0FC  FC 00 08 34 */	frsqrte f0, f1
/* 806CB100  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 806CB104  FC 44 00 32 */	fmul f2, f4, f0
/* 806CB108  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 806CB10C  FC 00 00 32 */	fmul f0, f0, f0
/* 806CB110  FC 01 00 32 */	fmul f0, f1, f0
/* 806CB114  FC 03 00 28 */	fsub f0, f3, f0
/* 806CB118  FC 02 00 32 */	fmul f0, f2, f0
/* 806CB11C  FC 44 00 32 */	fmul f2, f4, f0
/* 806CB120  FC 00 00 32 */	fmul f0, f0, f0
/* 806CB124  FC 01 00 32 */	fmul f0, f1, f0
/* 806CB128  FC 03 00 28 */	fsub f0, f3, f0
/* 806CB12C  FC 02 00 32 */	fmul f0, f2, f0
/* 806CB130  FC 44 00 32 */	fmul f2, f4, f0
/* 806CB134  FC 00 00 32 */	fmul f0, f0, f0
/* 806CB138  FC 01 00 32 */	fmul f0, f1, f0
/* 806CB13C  FC 03 00 28 */	fsub f0, f3, f0
/* 806CB140  FC 02 00 32 */	fmul f0, f2, f0
/* 806CB144  FC 21 00 32 */	fmul f1, f1, f0
/* 806CB148  FC 20 08 18 */	frsp f1, f1
/* 806CB14C  48 00 00 88 */	b lbl_806CB1D4
lbl_806CB150:
/* 806CB150  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 806CB154  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CB158  40 80 00 10 */	bge lbl_806CB168
/* 806CB15C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806CB160  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 806CB164  48 00 00 70 */	b lbl_806CB1D4
lbl_806CB168:
/* 806CB168  D0 21 00 08 */	stfs f1, 8(r1)
/* 806CB16C  80 81 00 08 */	lwz r4, 8(r1)
/* 806CB170  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806CB174  3C 00 7F 80 */	lis r0, 0x7f80
/* 806CB178  7C 03 00 00 */	cmpw r3, r0
/* 806CB17C  41 82 00 14 */	beq lbl_806CB190
/* 806CB180  40 80 00 40 */	bge lbl_806CB1C0
/* 806CB184  2C 03 00 00 */	cmpwi r3, 0
/* 806CB188  41 82 00 20 */	beq lbl_806CB1A8
/* 806CB18C  48 00 00 34 */	b lbl_806CB1C0
lbl_806CB190:
/* 806CB190  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806CB194  41 82 00 0C */	beq lbl_806CB1A0
/* 806CB198  38 00 00 01 */	li r0, 1
/* 806CB19C  48 00 00 28 */	b lbl_806CB1C4
lbl_806CB1A0:
/* 806CB1A0  38 00 00 02 */	li r0, 2
/* 806CB1A4  48 00 00 20 */	b lbl_806CB1C4
lbl_806CB1A8:
/* 806CB1A8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806CB1AC  41 82 00 0C */	beq lbl_806CB1B8
/* 806CB1B0  38 00 00 05 */	li r0, 5
/* 806CB1B4  48 00 00 10 */	b lbl_806CB1C4
lbl_806CB1B8:
/* 806CB1B8  38 00 00 03 */	li r0, 3
/* 806CB1BC  48 00 00 08 */	b lbl_806CB1C4
lbl_806CB1C0:
/* 806CB1C0  38 00 00 04 */	li r0, 4
lbl_806CB1C4:
/* 806CB1C4  2C 00 00 01 */	cmpwi r0, 1
/* 806CB1C8  40 82 00 0C */	bne lbl_806CB1D4
/* 806CB1CC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 806CB1D0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_806CB1D4:
/* 806CB1D4  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 806CB1D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806CB1DC  40 81 00 28 */	ble lbl_806CB204
/* 806CB1E0  80 1E 0B 74 */	lwz r0, 0xb74(r30)
/* 806CB1E4  2C 00 00 06 */	cmpwi r0, 6
/* 806CB1E8  40 82 00 0C */	bne lbl_806CB1F4
/* 806CB1EC  38 00 00 06 */	li r0, 6
/* 806CB1F0  90 1E 0B 70 */	stw r0, 0xb70(r30)
lbl_806CB1F4:
/* 806CB1F4  7F C3 F3 78 */	mr r3, r30
/* 806CB1F8  38 80 00 03 */	li r4, 3
/* 806CB1FC  4B FF CE FD */	bl setActionMode__8daE_GE_cFi
/* 806CB200  48 00 00 60 */	b lbl_806CB260
lbl_806CB204:
/* 806CB204  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 806CB208  4B B9 C7 4D */	bl cM_rndF__Ff
/* 806CB20C  C0 1F 00 EC */	lfs f0, 0xec(r31)
/* 806CB210  EC 00 08 2A */	fadds f0, f0, f1
/* 806CB214  FC 00 00 1E */	fctiwz f0, f0
/* 806CB218  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 806CB21C  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 806CB220  B0 1E 0B 8E */	sth r0, 0xb8e(r30)
lbl_806CB224:
/* 806CB224  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 806CB228  C0 5E 04 FC */	lfs f2, 0x4fc(r30)
/* 806CB22C  4B B9 C4 49 */	bl cM_atan2s__Fff
/* 806CB230  38 03 C0 00 */	addi r0, r3, -16384
/* 806CB234  7C 04 07 34 */	extsh r4, r0
/* 806CB238  2C 04 E8 90 */	cmpwi r4, -6000
/* 806CB23C  40 80 00 08 */	bge lbl_806CB244
/* 806CB240  38 80 E8 90 */	li r4, -6000
lbl_806CB244:
/* 806CB244  7C 80 07 34 */	extsh r0, r4
/* 806CB248  2C 00 17 70 */	cmpwi r0, 0x1770
/* 806CB24C  40 81 00 08 */	ble lbl_806CB254
/* 806CB250  38 80 17 70 */	li r4, 0x1770
lbl_806CB254:
/* 806CB254  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 806CB258  38 A0 01 80 */	li r5, 0x180
/* 806CB25C  4B BA 59 35 */	bl cLib_chaseAngleS__FPsss
lbl_806CB260:
/* 806CB260  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 806CB264  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 806CB268  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 806CB26C  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 806CB270  80 01 00 84 */	lwz r0, 0x84(r1)
/* 806CB274  7C 08 03 A6 */	mtlr r0
/* 806CB278  38 21 00 80 */	addi r1, r1, 0x80
/* 806CB27C  4E 80 00 20 */	blr 
