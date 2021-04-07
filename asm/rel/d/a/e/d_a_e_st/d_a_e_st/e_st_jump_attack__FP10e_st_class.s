lbl_8079FC4C:
/* 8079FC4C  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 8079FC50  7C 08 02 A6 */	mflr r0
/* 8079FC54  90 01 01 04 */	stw r0, 0x104(r1)
/* 8079FC58  DB E1 00 F0 */	stfd f31, 0xf0(r1)
/* 8079FC5C  F3 E1 00 F8 */	psq_st f31, 248(r1), 0, 0 /* qr0 */
/* 8079FC60  39 61 00 F0 */	addi r11, r1, 0xf0
/* 8079FC64  4B BC 25 71 */	bl _savegpr_27
/* 8079FC68  7C 7B 1B 78 */	mr r27, r3
/* 8079FC6C  3C 80 80 7A */	lis r4, lit_3903@ha /* 0x807A6824@ha */
/* 8079FC70  3B C4 68 24 */	addi r30, r4, lit_3903@l /* 0x807A6824@l */
/* 8079FC74  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8079FC78  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8079FC7C  83 BF 5D AC */	lwz r29, 0x5dac(r31)
/* 8079FC80  3B 80 00 00 */	li r28, 0
/* 8079FC84  80 A3 05 CC */	lwz r5, 0x5cc(r3)
/* 8079FC88  C0 05 00 1C */	lfs f0, 0x1c(r5)
/* 8079FC8C  FC 00 00 1E */	fctiwz f0, f0
/* 8079FC90  D8 01 00 D0 */	stfd f0, 0xd0(r1)
/* 8079FC94  80 C1 00 D4 */	lwz r6, 0xd4(r1)
/* 8079FC98  A8 03 06 80 */	lha r0, 0x680(r3)
/* 8079FC9C  28 00 00 06 */	cmplwi r0, 6
/* 8079FCA0  41 81 08 B8 */	bgt lbl_807A0558
/* 8079FCA4  3C 80 80 7A */	lis r4, lit_5044@ha /* 0x807A6A24@ha */
/* 8079FCA8  38 84 6A 24 */	addi r4, r4, lit_5044@l /* 0x807A6A24@l */
/* 8079FCAC  54 00 10 3A */	slwi r0, r0, 2
/* 8079FCB0  7C 04 00 2E */	lwzx r0, r4, r0
/* 8079FCB4  7C 09 03 A6 */	mtctr r0
/* 8079FCB8  4E 80 04 20 */	bctr 
lbl_8079FCBC:
/* 8079FCBC  38 00 00 01 */	li r0, 1
/* 8079FCC0  B0 1B 06 80 */	sth r0, 0x680(r27)
/* 8079FCC4  38 80 00 1D */	li r4, 0x1d
/* 8079FCC8  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 8079FCCC  38 A0 00 00 */	li r5, 0
/* 8079FCD0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8079FCD4  4B FF E1 79 */	bl anm_init__FP10e_st_classifUcf
/* 8079FCD8  A8 1B 06 9C */	lha r0, 0x69c(r27)
/* 8079FCDC  B0 1B 06 A6 */	sth r0, 0x6a6(r27)
/* 8079FCE0  A8 1B 06 9E */	lha r0, 0x69e(r27)
/* 8079FCE4  B0 1B 06 A8 */	sth r0, 0x6a8(r27)
/* 8079FCE8  A8 1B 06 A4 */	lha r0, 0x6a4(r27)
/* 8079FCEC  B0 1B 06 AE */	sth r0, 0x6ae(r27)
/* 8079FCF0  A8 1B 06 A2 */	lha r0, 0x6a2(r27)
/* 8079FCF4  B0 1B 06 AC */	sth r0, 0x6ac(r27)
/* 8079FCF8  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 8079FCFC  D0 1B 05 BC */	stfs f0, 0x5bc(r27)
/* 8079FD00  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 8079FD04  D0 1B 05 C0 */	stfs f0, 0x5c0(r27)
/* 8079FD08  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 8079FD0C  D0 1B 05 C4 */	stfs f0, 0x5c4(r27)
/* 8079FD10  A8 1B 04 DE */	lha r0, 0x4de(r27)
/* 8079FD14  B0 1B 04 E6 */	sth r0, 0x4e6(r27)
/* 8079FD18  48 00 08 40 */	b lbl_807A0558
lbl_8079FD1C:
/* 8079FD1C  2C 06 00 17 */	cmpwi r6, 0x17
/* 8079FD20  41 80 08 38 */	blt lbl_807A0558
/* 8079FD24  38 00 00 02 */	li r0, 2
/* 8079FD28  B0 1B 06 80 */	sth r0, 0x680(r27)
/* 8079FD2C  38 80 00 1B */	li r4, 0x1b
/* 8079FD30  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 8079FD34  38 A0 00 00 */	li r5, 0
/* 8079FD38  C0 5E 00 04 */	lfs f2, 4(r30)
/* 8079FD3C  4B FF E1 11 */	bl anm_init__FP10e_st_classifUcf
/* 8079FD40  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700BB@ha */
/* 8079FD44  38 03 00 BB */	addi r0, r3, 0x00BB /* 0x000700BB@l */
/* 8079FD48  90 01 00 24 */	stw r0, 0x24(r1)
/* 8079FD4C  38 7B 05 D0 */	addi r3, r27, 0x5d0
/* 8079FD50  38 81 00 24 */	addi r4, r1, 0x24
/* 8079FD54  38 A0 00 00 */	li r5, 0
/* 8079FD58  38 C0 FF FF */	li r6, -1
/* 8079FD5C  81 9B 05 D0 */	lwz r12, 0x5d0(r27)
/* 8079FD60  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8079FD64  7D 89 03 A6 */	mtctr r12
/* 8079FD68  4E 80 04 21 */	bctrl 
/* 8079FD6C  48 00 07 EC */	b lbl_807A0558
lbl_8079FD70:
/* 8079FD70  3B 80 00 01 */	li r28, 1
/* 8079FD74  7F A4 EB 78 */	mr r4, r29
/* 8079FD78  4B 87 A9 99 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8079FD7C  7C 64 1B 78 */	mr r4, r3
/* 8079FD80  38 7B 04 DE */	addi r3, r27, 0x4de
/* 8079FD84  38 A0 00 04 */	li r5, 4
/* 8079FD88  38 C0 10 00 */	li r6, 0x1000
/* 8079FD8C  4B AD 08 7D */	bl cLib_addCalcAngleS2__FPssss
/* 8079FD90  38 61 00 AC */	addi r3, r1, 0xac
/* 8079FD94  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8079FD98  48 00 6A 5D */	bl getHeadTopPos__9daPy_py_cCFv
/* 8079FD9C  38 61 00 A0 */	addi r3, r1, 0xa0
/* 8079FDA0  38 81 00 AC */	addi r4, r1, 0xac
/* 8079FDA4  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 8079FDA8  4B AC 6D 8D */	bl __mi__4cXyzCFRC3Vec
/* 8079FDAC  C0 21 00 A0 */	lfs f1, 0xa0(r1)
/* 8079FDB0  D0 21 00 C4 */	stfs f1, 0xc4(r1)
/* 8079FDB4  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 8079FDB8  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 8079FDBC  C0 41 00 A8 */	lfs f2, 0xa8(r1)
/* 8079FDC0  D0 41 00 CC */	stfs f2, 0xcc(r1)
/* 8079FDC4  4B AC 78 B1 */	bl cM_atan2s__Fff
/* 8079FDC8  7C 64 1B 78 */	mr r4, r3
/* 8079FDCC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8079FDD0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8079FDD4  80 63 00 00 */	lwz r3, 0(r3)
/* 8079FDD8  4B 86 C6 05 */	bl mDoMtx_YrotS__FPA4_fs
/* 8079FDDC  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 8079FDE0  EC 20 00 32 */	fmuls f1, f0, f0
/* 8079FDE4  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 8079FDE8  EC 00 00 32 */	fmuls f0, f0, f0
/* 8079FDEC  EC 41 00 2A */	fadds f2, f1, f0
/* 8079FDF0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8079FDF4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8079FDF8  40 81 00 0C */	ble lbl_8079FE04
/* 8079FDFC  FC 00 10 34 */	frsqrte f0, f2
/* 8079FE00  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8079FE04:
/* 8079FE04  C0 21 00 C8 */	lfs f1, 0xc8(r1)
/* 8079FE08  4B AC 78 6D */	bl cM_atan2s__Fff
/* 8079FE0C  7C 03 00 D0 */	neg r0, r3
/* 8079FE10  7C 04 07 34 */	extsh r4, r0
/* 8079FE14  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8079FE18  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8079FE1C  80 63 00 00 */	lwz r3, 0(r3)
/* 8079FE20  4B 86 C5 7D */	bl mDoMtx_XrotM__FPA4_fs
/* 8079FE24  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8079FE28  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 8079FE2C  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 8079FE30  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 8079FE34  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 8079FE38  38 61 00 C4 */	addi r3, r1, 0xc4
/* 8079FE3C  38 9B 04 F8 */	addi r4, r27, 0x4f8
/* 8079FE40  4B AD 10 AD */	bl MtxPosition__FP4cXyzP4cXyz
/* 8079FE44  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 8079FE48  38 9B 04 F8 */	addi r4, r27, 0x4f8
/* 8079FE4C  7C 65 1B 78 */	mr r5, r3
/* 8079FE50  4B BA 72 41 */	bl PSVECAdd
/* 8079FE54  38 61 00 94 */	addi r3, r1, 0x94
/* 8079FE58  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8079FE5C  48 00 69 99 */	bl getHeadTopPos__9daPy_py_cCFv
/* 8079FE60  38 61 00 88 */	addi r3, r1, 0x88
/* 8079FE64  38 81 00 94 */	addi r4, r1, 0x94
/* 8079FE68  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 8079FE6C  4B AC 6C C9 */	bl __mi__4cXyzCFRC3Vec
/* 8079FE70  C0 01 00 88 */	lfs f0, 0x88(r1)
/* 8079FE74  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 8079FE78  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 8079FE7C  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 8079FE80  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 8079FE84  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 8079FE88  38 61 00 C4 */	addi r3, r1, 0xc4
/* 8079FE8C  4B BA 72 AD */	bl PSVECSquareMag
/* 8079FE90  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8079FE94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8079FE98  40 81 00 58 */	ble lbl_8079FEF0
/* 8079FE9C  FC 00 08 34 */	frsqrte f0, f1
/* 8079FEA0  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 8079FEA4  FC 44 00 32 */	fmul f2, f4, f0
/* 8079FEA8  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 8079FEAC  FC 00 00 32 */	fmul f0, f0, f0
/* 8079FEB0  FC 01 00 32 */	fmul f0, f1, f0
/* 8079FEB4  FC 03 00 28 */	fsub f0, f3, f0
/* 8079FEB8  FC 02 00 32 */	fmul f0, f2, f0
/* 8079FEBC  FC 44 00 32 */	fmul f2, f4, f0
/* 8079FEC0  FC 00 00 32 */	fmul f0, f0, f0
/* 8079FEC4  FC 01 00 32 */	fmul f0, f1, f0
/* 8079FEC8  FC 03 00 28 */	fsub f0, f3, f0
/* 8079FECC  FC 02 00 32 */	fmul f0, f2, f0
/* 8079FED0  FC 44 00 32 */	fmul f2, f4, f0
/* 8079FED4  FC 00 00 32 */	fmul f0, f0, f0
/* 8079FED8  FC 01 00 32 */	fmul f0, f1, f0
/* 8079FEDC  FC 03 00 28 */	fsub f0, f3, f0
/* 8079FEE0  FC 02 00 32 */	fmul f0, f2, f0
/* 8079FEE4  FC 21 00 32 */	fmul f1, f1, f0
/* 8079FEE8  FC 20 08 18 */	frsp f1, f1
/* 8079FEEC  48 00 00 88 */	b lbl_8079FF74
lbl_8079FEF0:
/* 8079FEF0  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 8079FEF4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8079FEF8  40 80 00 10 */	bge lbl_8079FF08
/* 8079FEFC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8079FF00  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8079FF04  48 00 00 70 */	b lbl_8079FF74
lbl_8079FF08:
/* 8079FF08  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8079FF0C  80 81 00 18 */	lwz r4, 0x18(r1)
/* 8079FF10  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8079FF14  3C 00 7F 80 */	lis r0, 0x7f80
/* 8079FF18  7C 03 00 00 */	cmpw r3, r0
/* 8079FF1C  41 82 00 14 */	beq lbl_8079FF30
/* 8079FF20  40 80 00 40 */	bge lbl_8079FF60
/* 8079FF24  2C 03 00 00 */	cmpwi r3, 0
/* 8079FF28  41 82 00 20 */	beq lbl_8079FF48
/* 8079FF2C  48 00 00 34 */	b lbl_8079FF60
lbl_8079FF30:
/* 8079FF30  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8079FF34  41 82 00 0C */	beq lbl_8079FF40
/* 8079FF38  38 00 00 01 */	li r0, 1
/* 8079FF3C  48 00 00 28 */	b lbl_8079FF64
lbl_8079FF40:
/* 8079FF40  38 00 00 02 */	li r0, 2
/* 8079FF44  48 00 00 20 */	b lbl_8079FF64
lbl_8079FF48:
/* 8079FF48  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8079FF4C  41 82 00 0C */	beq lbl_8079FF58
/* 8079FF50  38 00 00 05 */	li r0, 5
/* 8079FF54  48 00 00 10 */	b lbl_8079FF64
lbl_8079FF58:
/* 8079FF58  38 00 00 03 */	li r0, 3
/* 8079FF5C  48 00 00 08 */	b lbl_8079FF64
lbl_8079FF60:
/* 8079FF60  38 00 00 04 */	li r0, 4
lbl_8079FF64:
/* 8079FF64  2C 00 00 01 */	cmpwi r0, 1
/* 8079FF68  40 82 00 0C */	bne lbl_8079FF74
/* 8079FF6C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8079FF70  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8079FF74:
/* 8079FF74  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 8079FF78  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8079FF7C  4C 40 13 82 */	cror 2, 0, 2
/* 8079FF80  40 82 05 D8 */	bne lbl_807A0558
/* 8079FF84  38 00 00 03 */	li r0, 3
/* 8079FF88  B0 1B 06 80 */	sth r0, 0x680(r27)
/* 8079FF8C  38 00 00 41 */	li r0, 0x41
/* 8079FF90  B0 1B 06 82 */	sth r0, 0x682(r27)
/* 8079FF94  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8079FF98  80 7B 05 CC */	lwz r3, 0x5cc(r27)
/* 8079FF9C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8079FFA0  48 00 05 B8 */	b lbl_807A0558
lbl_8079FFA4:
/* 8079FFA4  38 60 00 01 */	li r3, 1
/* 8079FFA8  88 05 00 11 */	lbz r0, 0x11(r5)
/* 8079FFAC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8079FFB0  40 82 00 18 */	bne lbl_8079FFC8
/* 8079FFB4  C0 3E 00 04 */	lfs f1, 4(r30)
/* 8079FFB8  C0 05 00 18 */	lfs f0, 0x18(r5)
/* 8079FFBC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8079FFC0  41 82 00 08 */	beq lbl_8079FFC8
/* 8079FFC4  38 60 00 00 */	li r3, 0
lbl_8079FFC8:
/* 8079FFC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8079FFCC  41 82 00 24 */	beq lbl_8079FFF0
/* 8079FFD0  7F 63 DB 78 */	mr r3, r27
/* 8079FFD4  38 80 00 1C */	li r4, 0x1c
/* 8079FFD8  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8079FFDC  38 A0 00 02 */	li r5, 2
/* 8079FFE0  C0 5E 00 60 */	lfs f2, 0x60(r30)
/* 8079FFE4  4B FF DE 69 */	bl anm_init__FP10e_st_classifUcf
/* 8079FFE8  38 00 00 04 */	li r0, 4
/* 8079FFEC  B0 1B 06 80 */	sth r0, 0x680(r27)
lbl_8079FFF0:
/* 8079FFF0  3B 80 00 01 */	li r28, 1
/* 8079FFF4  38 7B 04 DE */	addi r3, r27, 0x4de
/* 8079FFF8  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 8079FFFC  3C 84 00 01 */	addis r4, r4, 1
/* 807A0000  38 04 80 00 */	addi r0, r4, -32768
/* 807A0004  7C 04 07 34 */	extsh r4, r0
/* 807A0008  38 A0 00 02 */	li r5, 2
/* 807A000C  38 C0 10 00 */	li r6, 0x1000
/* 807A0010  4B AD 05 F9 */	bl cLib_addCalcAngleS2__FPssss
/* 807A0014  38 7B 04 DC */	addi r3, r27, 0x4dc
/* 807A0018  38 80 D9 00 */	li r4, -9984
/* 807A001C  38 A0 00 02 */	li r5, 2
/* 807A0020  38 C0 08 00 */	li r6, 0x800
/* 807A0024  4B AD 05 E5 */	bl cLib_addCalcAngleS2__FPssss
/* 807A0028  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807A002C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807A0030  80 63 00 00 */	lwz r3, 0(r3)
/* 807A0034  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 807A0038  4B 86 C3 A5 */	bl mDoMtx_YrotS__FPA4_fs
/* 807A003C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807A0040  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 807A0044  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 807A0048  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 807A004C  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 807A0050  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 807A0054  38 61 00 C4 */	addi r3, r1, 0xc4
/* 807A0058  38 81 00 B8 */	addi r4, r1, 0xb8
/* 807A005C  4B AD 0E 91 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807A0060  38 61 00 7C */	addi r3, r1, 0x7c
/* 807A0064  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807A0068  48 00 67 8D */	bl getHeadTopPos__9daPy_py_cCFv
/* 807A006C  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 807A0070  C0 21 00 B8 */	lfs f1, 0xb8(r1)
/* 807A0074  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 807A0078  EC 21 00 2A */	fadds f1, f1, f0
/* 807A007C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807A0080  C0 7E 00 C4 */	lfs f3, 0xc4(r30)
/* 807A0084  4B AC F9 B9 */	bl cLib_addCalc2__FPffff
/* 807A0088  38 61 00 70 */	addi r3, r1, 0x70
/* 807A008C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807A0090  48 00 67 65 */	bl getHeadTopPos__9daPy_py_cCFv
/* 807A0094  38 7B 04 D4 */	addi r3, r27, 0x4d4
/* 807A0098  C0 21 00 BC */	lfs f1, 0xbc(r1)
/* 807A009C  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 807A00A0  EC 21 00 2A */	fadds f1, f1, f0
/* 807A00A4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807A00A8  C0 7E 00 C4 */	lfs f3, 0xc4(r30)
/* 807A00AC  4B AC F9 91 */	bl cLib_addCalc2__FPffff
/* 807A00B0  38 61 00 64 */	addi r3, r1, 0x64
/* 807A00B4  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 807A00B8  48 00 67 3D */	bl getHeadTopPos__9daPy_py_cCFv
/* 807A00BC  38 7B 04 D8 */	addi r3, r27, 0x4d8
/* 807A00C0  C0 21 00 C0 */	lfs f1, 0xc0(r1)
/* 807A00C4  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 807A00C8  EC 21 00 2A */	fadds f1, f1, f0
/* 807A00CC  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807A00D0  C0 7E 00 C4 */	lfs f3, 0xc4(r30)
/* 807A00D4  4B AC F9 69 */	bl cLib_addCalc2__FPffff
/* 807A00D8  80 7B 05 CC */	lwz r3, 0x5cc(r27)
/* 807A00DC  38 63 00 0C */	addi r3, r3, 0xc
/* 807A00E0  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 807A00E4  4B B8 83 49 */	bl checkPass__12J3DFrameCtrlFf
/* 807A00E8  2C 03 00 00 */	cmpwi r3, 0
/* 807A00EC  41 82 00 30 */	beq lbl_807A011C
/* 807A00F0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700B9@ha */
/* 807A00F4  38 03 00 B9 */	addi r0, r3, 0x00B9 /* 0x000700B9@l */
/* 807A00F8  90 01 00 20 */	stw r0, 0x20(r1)
/* 807A00FC  38 7B 05 D0 */	addi r3, r27, 0x5d0
/* 807A0100  38 81 00 20 */	addi r4, r1, 0x20
/* 807A0104  38 A0 00 00 */	li r5, 0
/* 807A0108  38 C0 FF FF */	li r6, -1
/* 807A010C  81 9B 05 D0 */	lwz r12, 0x5d0(r27)
/* 807A0110  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807A0114  7D 89 03 A6 */	mtctr r12
/* 807A0118  4E 80 04 21 */	bctrl 
lbl_807A011C:
/* 807A011C  A8 1B 06 82 */	lha r0, 0x682(r27)
/* 807A0120  2C 00 00 0F */	cmpwi r0, 0xf
/* 807A0124  40 81 00 1C */	ble lbl_807A0140
/* 807A0128  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 807A012C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 807A0130  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 807A0134  40 82 00 0C */	bne lbl_807A0140
/* 807A0138  38 00 00 0F */	li r0, 0xf
/* 807A013C  B0 1B 06 82 */	sth r0, 0x682(r27)
lbl_807A0140:
/* 807A0140  A8 1B 06 82 */	lha r0, 0x682(r27)
/* 807A0144  2C 00 00 00 */	cmpwi r0, 0
/* 807A0148  40 82 04 10 */	bne lbl_807A0558
/* 807A014C  38 00 00 05 */	li r0, 5
/* 807A0150  B0 1B 06 80 */	sth r0, 0x680(r27)
/* 807A0154  7F 63 DB 78 */	mr r3, r27
/* 807A0158  38 80 00 1B */	li r4, 0x1b
/* 807A015C  C0 3E 00 60 */	lfs f1, 0x60(r30)
/* 807A0160  38 A0 00 00 */	li r5, 0
/* 807A0164  C0 5E 00 04 */	lfs f2, 4(r30)
/* 807A0168  4B FF DC E5 */	bl anm_init__FP10e_st_classifUcf
/* 807A016C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700BC@ha */
/* 807A0170  38 03 00 BC */	addi r0, r3, 0x00BC /* 0x000700BC@l */
/* 807A0174  90 01 00 1C */	stw r0, 0x1c(r1)
/* 807A0178  38 7B 05 D0 */	addi r3, r27, 0x5d0
/* 807A017C  38 81 00 1C */	addi r4, r1, 0x1c
/* 807A0180  38 A0 00 00 */	li r5, 0
/* 807A0184  38 C0 FF FF */	li r6, -1
/* 807A0188  81 9B 05 D0 */	lwz r12, 0x5d0(r27)
/* 807A018C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 807A0190  7D 89 03 A6 */	mtctr r12
/* 807A0194  4E 80 04 21 */	bctrl 
/* 807A0198  48 00 03 C0 */	b lbl_807A0558
lbl_807A019C:
/* 807A019C  3B 80 00 02 */	li r28, 2
/* 807A01A0  38 61 00 58 */	addi r3, r1, 0x58
/* 807A01A4  38 9B 05 BC */	addi r4, r27, 0x5bc
/* 807A01A8  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 807A01AC  4B AC 69 89 */	bl __mi__4cXyzCFRC3Vec
/* 807A01B0  C0 21 00 58 */	lfs f1, 0x58(r1)
/* 807A01B4  D0 21 00 C4 */	stfs f1, 0xc4(r1)
/* 807A01B8  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 807A01BC  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 807A01C0  C0 41 00 60 */	lfs f2, 0x60(r1)
/* 807A01C4  D0 41 00 CC */	stfs f2, 0xcc(r1)
/* 807A01C8  4B AC 74 AD */	bl cM_atan2s__Fff
/* 807A01CC  7C 64 1B 78 */	mr r4, r3
/* 807A01D0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807A01D4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807A01D8  80 63 00 00 */	lwz r3, 0(r3)
/* 807A01DC  4B 86 C2 01 */	bl mDoMtx_YrotS__FPA4_fs
/* 807A01E0  C0 01 00 C4 */	lfs f0, 0xc4(r1)
/* 807A01E4  EC 20 00 32 */	fmuls f1, f0, f0
/* 807A01E8  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 807A01EC  EC 00 00 32 */	fmuls f0, f0, f0
/* 807A01F0  EC 41 00 2A */	fadds f2, f1, f0
/* 807A01F4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807A01F8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807A01FC  40 81 00 0C */	ble lbl_807A0208
/* 807A0200  FC 00 10 34 */	frsqrte f0, f2
/* 807A0204  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_807A0208:
/* 807A0208  C0 21 00 C8 */	lfs f1, 0xc8(r1)
/* 807A020C  4B AC 74 69 */	bl cM_atan2s__Fff
/* 807A0210  7C 03 00 D0 */	neg r0, r3
/* 807A0214  7C 04 07 34 */	extsh r4, r0
/* 807A0218  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 807A021C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 807A0220  80 63 00 00 */	lwz r3, 0(r3)
/* 807A0224  4B 86 C1 79 */	bl mDoMtx_XrotM__FPA4_fs
/* 807A0228  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807A022C  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 807A0230  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 807A0234  C0 1E 00 B4 */	lfs f0, 0xb4(r30)
/* 807A0238  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 807A023C  38 61 00 C4 */	addi r3, r1, 0xc4
/* 807A0240  38 9B 04 F8 */	addi r4, r27, 0x4f8
/* 807A0244  4B AD 0C A9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 807A0248  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 807A024C  38 9B 04 F8 */	addi r4, r27, 0x4f8
/* 807A0250  7C 65 1B 78 */	mr r5, r3
/* 807A0254  4B BA 6E 3D */	bl PSVECAdd
/* 807A0258  38 61 00 4C */	addi r3, r1, 0x4c
/* 807A025C  38 9B 05 BC */	addi r4, r27, 0x5bc
/* 807A0260  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 807A0264  4B AC 68 D1 */	bl __mi__4cXyzCFRC3Vec
/* 807A0268  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 807A026C  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 807A0270  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 807A0274  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 807A0278  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 807A027C  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 807A0280  38 61 00 C4 */	addi r3, r1, 0xc4
/* 807A0284  4B BA 6E B5 */	bl PSVECSquareMag
/* 807A0288  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807A028C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A0290  40 81 00 58 */	ble lbl_807A02E8
/* 807A0294  FC 00 08 34 */	frsqrte f0, f1
/* 807A0298  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 807A029C  FC 44 00 32 */	fmul f2, f4, f0
/* 807A02A0  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 807A02A4  FC 00 00 32 */	fmul f0, f0, f0
/* 807A02A8  FC 01 00 32 */	fmul f0, f1, f0
/* 807A02AC  FC 03 00 28 */	fsub f0, f3, f0
/* 807A02B0  FC 02 00 32 */	fmul f0, f2, f0
/* 807A02B4  FC 44 00 32 */	fmul f2, f4, f0
/* 807A02B8  FC 00 00 32 */	fmul f0, f0, f0
/* 807A02BC  FC 01 00 32 */	fmul f0, f1, f0
/* 807A02C0  FC 03 00 28 */	fsub f0, f3, f0
/* 807A02C4  FC 02 00 32 */	fmul f0, f2, f0
/* 807A02C8  FC 44 00 32 */	fmul f2, f4, f0
/* 807A02CC  FC 00 00 32 */	fmul f0, f0, f0
/* 807A02D0  FC 01 00 32 */	fmul f0, f1, f0
/* 807A02D4  FC 03 00 28 */	fsub f0, f3, f0
/* 807A02D8  FC 02 00 32 */	fmul f0, f2, f0
/* 807A02DC  FC 21 00 32 */	fmul f1, f1, f0
/* 807A02E0  FC 20 08 18 */	frsp f1, f1
/* 807A02E4  48 00 00 88 */	b lbl_807A036C
lbl_807A02E8:
/* 807A02E8  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 807A02EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A02F0  40 80 00 10 */	bge lbl_807A0300
/* 807A02F4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807A02F8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807A02FC  48 00 00 70 */	b lbl_807A036C
lbl_807A0300:
/* 807A0300  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 807A0304  80 81 00 14 */	lwz r4, 0x14(r1)
/* 807A0308  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807A030C  3C 00 7F 80 */	lis r0, 0x7f80
/* 807A0310  7C 03 00 00 */	cmpw r3, r0
/* 807A0314  41 82 00 14 */	beq lbl_807A0328
/* 807A0318  40 80 00 40 */	bge lbl_807A0358
/* 807A031C  2C 03 00 00 */	cmpwi r3, 0
/* 807A0320  41 82 00 20 */	beq lbl_807A0340
/* 807A0324  48 00 00 34 */	b lbl_807A0358
lbl_807A0328:
/* 807A0328  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807A032C  41 82 00 0C */	beq lbl_807A0338
/* 807A0330  38 00 00 01 */	li r0, 1
/* 807A0334  48 00 00 28 */	b lbl_807A035C
lbl_807A0338:
/* 807A0338  38 00 00 02 */	li r0, 2
/* 807A033C  48 00 00 20 */	b lbl_807A035C
lbl_807A0340:
/* 807A0340  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807A0344  41 82 00 0C */	beq lbl_807A0350
/* 807A0348  38 00 00 05 */	li r0, 5
/* 807A034C  48 00 00 10 */	b lbl_807A035C
lbl_807A0350:
/* 807A0350  38 00 00 03 */	li r0, 3
/* 807A0354  48 00 00 08 */	b lbl_807A035C
lbl_807A0358:
/* 807A0358  38 00 00 04 */	li r0, 4
lbl_807A035C:
/* 807A035C  2C 00 00 01 */	cmpwi r0, 1
/* 807A0360  40 82 00 0C */	bne lbl_807A036C
/* 807A0364  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807A0368  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807A036C:
/* 807A036C  C0 1E 00 B8 */	lfs f0, 0xb8(r30)
/* 807A0370  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A0374  4C 40 13 82 */	cror 2, 0, 2
/* 807A0378  40 82 01 E0 */	bne lbl_807A0558
/* 807A037C  38 00 00 06 */	li r0, 6
/* 807A0380  B0 1B 06 80 */	sth r0, 0x680(r27)
/* 807A0384  7F 63 DB 78 */	mr r3, r27
/* 807A0388  38 80 00 1E */	li r4, 0x1e
/* 807A038C  C0 3E 00 08 */	lfs f1, 8(r30)
/* 807A0390  38 A0 00 00 */	li r5, 0
/* 807A0394  FC 40 08 90 */	fmr f2, f1
/* 807A0398  4B FF DA B5 */	bl anm_init__FP10e_st_classifUcf
/* 807A039C  48 00 01 BC */	b lbl_807A0558
lbl_807A03A0:
/* 807A03A0  3B 80 00 02 */	li r28, 2
/* 807A03A4  C0 1B 04 F8 */	lfs f0, 0x4f8(r27)
/* 807A03A8  FC 00 02 10 */	fabs f0, f0
/* 807A03AC  FC 60 00 18 */	frsp f3, f0
/* 807A03B0  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 807A03B4  C0 3B 05 BC */	lfs f1, 0x5bc(r27)
/* 807A03B8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807A03BC  4B AC F6 81 */	bl cLib_addCalc2__FPffff
/* 807A03C0  C0 1B 04 FC */	lfs f0, 0x4fc(r27)
/* 807A03C4  FC 00 02 10 */	fabs f0, f0
/* 807A03C8  FC 60 00 18 */	frsp f3, f0
/* 807A03CC  38 7B 04 D4 */	addi r3, r27, 0x4d4
/* 807A03D0  C0 3B 05 C0 */	lfs f1, 0x5c0(r27)
/* 807A03D4  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807A03D8  4B AC F6 65 */	bl cLib_addCalc2__FPffff
/* 807A03DC  C0 1B 05 00 */	lfs f0, 0x500(r27)
/* 807A03E0  FC 00 02 10 */	fabs f0, f0
/* 807A03E4  FC 60 00 18 */	frsp f3, f0
/* 807A03E8  38 7B 04 D8 */	addi r3, r27, 0x4d8
/* 807A03EC  C0 3B 05 C4 */	lfs f1, 0x5c4(r27)
/* 807A03F0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 807A03F4  4B AC F6 49 */	bl cLib_addCalc2__FPffff
/* 807A03F8  38 61 00 40 */	addi r3, r1, 0x40
/* 807A03FC  38 9B 05 BC */	addi r4, r27, 0x5bc
/* 807A0400  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 807A0404  4B AC 67 31 */	bl __mi__4cXyzCFRC3Vec
/* 807A0408  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 807A040C  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 807A0410  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 807A0414  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 807A0418  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 807A041C  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 807A0420  80 7B 05 CC */	lwz r3, 0x5cc(r27)
/* 807A0424  38 80 00 01 */	li r4, 1
/* 807A0428  88 03 00 11 */	lbz r0, 0x11(r3)
/* 807A042C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 807A0430  40 82 00 18 */	bne lbl_807A0448
/* 807A0434  C0 3E 00 04 */	lfs f1, 4(r30)
/* 807A0438  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 807A043C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807A0440  41 82 00 08 */	beq lbl_807A0448
/* 807A0444  38 80 00 00 */	li r4, 0
lbl_807A0448:
/* 807A0448  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 807A044C  41 82 01 0C */	beq lbl_807A0558
/* 807A0450  38 61 00 C4 */	addi r3, r1, 0xc4
/* 807A0454  4B BA 6C E5 */	bl PSVECSquareMag
/* 807A0458  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807A045C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A0460  40 81 00 58 */	ble lbl_807A04B8
/* 807A0464  FC 00 08 34 */	frsqrte f0, f1
/* 807A0468  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 807A046C  FC 44 00 32 */	fmul f2, f4, f0
/* 807A0470  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 807A0474  FC 00 00 32 */	fmul f0, f0, f0
/* 807A0478  FC 01 00 32 */	fmul f0, f1, f0
/* 807A047C  FC 03 00 28 */	fsub f0, f3, f0
/* 807A0480  FC 02 00 32 */	fmul f0, f2, f0
/* 807A0484  FC 44 00 32 */	fmul f2, f4, f0
/* 807A0488  FC 00 00 32 */	fmul f0, f0, f0
/* 807A048C  FC 01 00 32 */	fmul f0, f1, f0
/* 807A0490  FC 03 00 28 */	fsub f0, f3, f0
/* 807A0494  FC 02 00 32 */	fmul f0, f2, f0
/* 807A0498  FC 44 00 32 */	fmul f2, f4, f0
/* 807A049C  FC 00 00 32 */	fmul f0, f0, f0
/* 807A04A0  FC 01 00 32 */	fmul f0, f1, f0
/* 807A04A4  FC 03 00 28 */	fsub f0, f3, f0
/* 807A04A8  FC 02 00 32 */	fmul f0, f2, f0
/* 807A04AC  FC 21 00 32 */	fmul f1, f1, f0
/* 807A04B0  FC 20 08 18 */	frsp f1, f1
/* 807A04B4  48 00 00 88 */	b lbl_807A053C
lbl_807A04B8:
/* 807A04B8  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 807A04BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A04C0  40 80 00 10 */	bge lbl_807A04D0
/* 807A04C4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807A04C8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807A04CC  48 00 00 70 */	b lbl_807A053C
lbl_807A04D0:
/* 807A04D0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 807A04D4  80 81 00 10 */	lwz r4, 0x10(r1)
/* 807A04D8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807A04DC  3C 00 7F 80 */	lis r0, 0x7f80
/* 807A04E0  7C 03 00 00 */	cmpw r3, r0
/* 807A04E4  41 82 00 14 */	beq lbl_807A04F8
/* 807A04E8  40 80 00 40 */	bge lbl_807A0528
/* 807A04EC  2C 03 00 00 */	cmpwi r3, 0
/* 807A04F0  41 82 00 20 */	beq lbl_807A0510
/* 807A04F4  48 00 00 34 */	b lbl_807A0528
lbl_807A04F8:
/* 807A04F8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807A04FC  41 82 00 0C */	beq lbl_807A0508
/* 807A0500  38 00 00 01 */	li r0, 1
/* 807A0504  48 00 00 28 */	b lbl_807A052C
lbl_807A0508:
/* 807A0508  38 00 00 02 */	li r0, 2
/* 807A050C  48 00 00 20 */	b lbl_807A052C
lbl_807A0510:
/* 807A0510  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807A0514  41 82 00 0C */	beq lbl_807A0520
/* 807A0518  38 00 00 05 */	li r0, 5
/* 807A051C  48 00 00 10 */	b lbl_807A052C
lbl_807A0520:
/* 807A0520  38 00 00 03 */	li r0, 3
/* 807A0524  48 00 00 08 */	b lbl_807A052C
lbl_807A0528:
/* 807A0528  38 00 00 04 */	li r0, 4
lbl_807A052C:
/* 807A052C  2C 00 00 01 */	cmpwi r0, 1
/* 807A0530  40 82 00 0C */	bne lbl_807A053C
/* 807A0534  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807A0538  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807A053C:
/* 807A053C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 807A0540  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A0544  4C 40 13 82 */	cror 2, 0, 2
/* 807A0548  40 82 00 10 */	bne lbl_807A0558
/* 807A054C  38 00 00 00 */	li r0, 0
/* 807A0550  B0 1B 06 7E */	sth r0, 0x67e(r27)
/* 807A0554  B0 1B 06 80 */	sth r0, 0x680(r27)
lbl_807A0558:
/* 807A0558  38 61 00 34 */	addi r3, r1, 0x34
/* 807A055C  38 9B 05 BC */	addi r4, r27, 0x5bc
/* 807A0560  38 BD 05 38 */	addi r5, r29, 0x538
/* 807A0564  4B AC 65 D1 */	bl __mi__4cXyzCFRC3Vec
/* 807A0568  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 807A056C  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 807A0570  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 807A0574  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 807A0578  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 807A057C  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 807A0580  38 61 00 C4 */	addi r3, r1, 0xc4
/* 807A0584  4B BA 6B B5 */	bl PSVECSquareMag
/* 807A0588  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807A058C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A0590  40 81 00 58 */	ble lbl_807A05E8
/* 807A0594  FC 00 08 34 */	frsqrte f0, f1
/* 807A0598  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 807A059C  FC 44 00 32 */	fmul f2, f4, f0
/* 807A05A0  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 807A05A4  FC 00 00 32 */	fmul f0, f0, f0
/* 807A05A8  FC 01 00 32 */	fmul f0, f1, f0
/* 807A05AC  FC 03 00 28 */	fsub f0, f3, f0
/* 807A05B0  FC 02 00 32 */	fmul f0, f2, f0
/* 807A05B4  FC 44 00 32 */	fmul f2, f4, f0
/* 807A05B8  FC 00 00 32 */	fmul f0, f0, f0
/* 807A05BC  FC 01 00 32 */	fmul f0, f1, f0
/* 807A05C0  FC 03 00 28 */	fsub f0, f3, f0
/* 807A05C4  FC 02 00 32 */	fmul f0, f2, f0
/* 807A05C8  FC 44 00 32 */	fmul f2, f4, f0
/* 807A05CC  FC 00 00 32 */	fmul f0, f0, f0
/* 807A05D0  FC 01 00 32 */	fmul f0, f1, f0
/* 807A05D4  FC 03 00 28 */	fsub f0, f3, f0
/* 807A05D8  FC 02 00 32 */	fmul f0, f2, f0
/* 807A05DC  FF E1 00 32 */	fmul f31, f1, f0
/* 807A05E0  FF E0 F8 18 */	frsp f31, f31
/* 807A05E4  48 00 00 90 */	b lbl_807A0674
lbl_807A05E8:
/* 807A05E8  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 807A05EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A05F0  40 80 00 10 */	bge lbl_807A0600
/* 807A05F4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807A05F8  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807A05FC  48 00 00 78 */	b lbl_807A0674
lbl_807A0600:
/* 807A0600  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 807A0604  80 81 00 0C */	lwz r4, 0xc(r1)
/* 807A0608  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807A060C  3C 00 7F 80 */	lis r0, 0x7f80
/* 807A0610  7C 03 00 00 */	cmpw r3, r0
/* 807A0614  41 82 00 14 */	beq lbl_807A0628
/* 807A0618  40 80 00 40 */	bge lbl_807A0658
/* 807A061C  2C 03 00 00 */	cmpwi r3, 0
/* 807A0620  41 82 00 20 */	beq lbl_807A0640
/* 807A0624  48 00 00 34 */	b lbl_807A0658
lbl_807A0628:
/* 807A0628  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807A062C  41 82 00 0C */	beq lbl_807A0638
/* 807A0630  38 00 00 01 */	li r0, 1
/* 807A0634  48 00 00 28 */	b lbl_807A065C
lbl_807A0638:
/* 807A0638  38 00 00 02 */	li r0, 2
/* 807A063C  48 00 00 20 */	b lbl_807A065C
lbl_807A0640:
/* 807A0640  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807A0644  41 82 00 0C */	beq lbl_807A0650
/* 807A0648  38 00 00 05 */	li r0, 5
/* 807A064C  48 00 00 10 */	b lbl_807A065C
lbl_807A0650:
/* 807A0650  38 00 00 03 */	li r0, 3
/* 807A0654  48 00 00 08 */	b lbl_807A065C
lbl_807A0658:
/* 807A0658  38 00 00 04 */	li r0, 4
lbl_807A065C:
/* 807A065C  2C 00 00 01 */	cmpwi r0, 1
/* 807A0660  40 82 00 10 */	bne lbl_807A0670
/* 807A0664  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807A0668  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807A066C  48 00 00 08 */	b lbl_807A0674
lbl_807A0670:
/* 807A0670  FF E0 08 90 */	fmr f31, f1
lbl_807A0674:
/* 807A0674  38 61 00 28 */	addi r3, r1, 0x28
/* 807A0678  38 9B 05 BC */	addi r4, r27, 0x5bc
/* 807A067C  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 807A0680  4B AC 64 B5 */	bl __mi__4cXyzCFRC3Vec
/* 807A0684  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 807A0688  D0 01 00 C4 */	stfs f0, 0xc4(r1)
/* 807A068C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 807A0690  D0 01 00 C8 */	stfs f0, 0xc8(r1)
/* 807A0694  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 807A0698  D0 01 00 CC */	stfs f0, 0xcc(r1)
/* 807A069C  38 61 00 C4 */	addi r3, r1, 0xc4
/* 807A06A0  4B BA 6A 99 */	bl PSVECSquareMag
/* 807A06A4  C0 1E 00 04 */	lfs f0, 4(r30)
/* 807A06A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A06AC  40 81 00 58 */	ble lbl_807A0704
/* 807A06B0  FC 00 08 34 */	frsqrte f0, f1
/* 807A06B4  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 807A06B8  FC 44 00 32 */	fmul f2, f4, f0
/* 807A06BC  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 807A06C0  FC 00 00 32 */	fmul f0, f0, f0
/* 807A06C4  FC 01 00 32 */	fmul f0, f1, f0
/* 807A06C8  FC 03 00 28 */	fsub f0, f3, f0
/* 807A06CC  FC 02 00 32 */	fmul f0, f2, f0
/* 807A06D0  FC 44 00 32 */	fmul f2, f4, f0
/* 807A06D4  FC 00 00 32 */	fmul f0, f0, f0
/* 807A06D8  FC 01 00 32 */	fmul f0, f1, f0
/* 807A06DC  FC 03 00 28 */	fsub f0, f3, f0
/* 807A06E0  FC 02 00 32 */	fmul f0, f2, f0
/* 807A06E4  FC 44 00 32 */	fmul f2, f4, f0
/* 807A06E8  FC 00 00 32 */	fmul f0, f0, f0
/* 807A06EC  FC 01 00 32 */	fmul f0, f1, f0
/* 807A06F0  FC 03 00 28 */	fsub f0, f3, f0
/* 807A06F4  FC 02 00 32 */	fmul f0, f2, f0
/* 807A06F8  FC 21 00 32 */	fmul f1, f1, f0
/* 807A06FC  FC 20 08 18 */	frsp f1, f1
/* 807A0700  48 00 00 88 */	b lbl_807A0788
lbl_807A0704:
/* 807A0704  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 807A0708  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A070C  40 80 00 10 */	bge lbl_807A071C
/* 807A0710  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807A0714  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 807A0718  48 00 00 70 */	b lbl_807A0788
lbl_807A071C:
/* 807A071C  D0 21 00 08 */	stfs f1, 8(r1)
/* 807A0720  80 81 00 08 */	lwz r4, 8(r1)
/* 807A0724  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 807A0728  3C 00 7F 80 */	lis r0, 0x7f80
/* 807A072C  7C 03 00 00 */	cmpw r3, r0
/* 807A0730  41 82 00 14 */	beq lbl_807A0744
/* 807A0734  40 80 00 40 */	bge lbl_807A0774
/* 807A0738  2C 03 00 00 */	cmpwi r3, 0
/* 807A073C  41 82 00 20 */	beq lbl_807A075C
/* 807A0740  48 00 00 34 */	b lbl_807A0774
lbl_807A0744:
/* 807A0744  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807A0748  41 82 00 0C */	beq lbl_807A0754
/* 807A074C  38 00 00 01 */	li r0, 1
/* 807A0750  48 00 00 28 */	b lbl_807A0778
lbl_807A0754:
/* 807A0754  38 00 00 02 */	li r0, 2
/* 807A0758  48 00 00 20 */	b lbl_807A0778
lbl_807A075C:
/* 807A075C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 807A0760  41 82 00 0C */	beq lbl_807A076C
/* 807A0764  38 00 00 05 */	li r0, 5
/* 807A0768  48 00 00 10 */	b lbl_807A0778
lbl_807A076C:
/* 807A076C  38 00 00 03 */	li r0, 3
/* 807A0770  48 00 00 08 */	b lbl_807A0778
lbl_807A0774:
/* 807A0774  38 00 00 04 */	li r0, 4
lbl_807A0778:
/* 807A0778  2C 00 00 01 */	cmpwi r0, 1
/* 807A077C  40 82 00 0C */	bne lbl_807A0788
/* 807A0780  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 807A0784  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_807A0788:
/* 807A0788  C0 7E 00 00 */	lfs f3, 0(r30)
/* 807A078C  C0 5E 00 C8 */	lfs f2, 0xc8(r30)
/* 807A0790  EC 01 F8 24 */	fdivs f0, f1, f31
/* 807A0794  EC 02 00 32 */	fmuls f0, f2, f0
/* 807A0798  FC 00 00 1E */	fctiwz f0, f0
/* 807A079C  D8 01 00 D0 */	stfd f0, 0xd0(r1)
/* 807A07A0  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 807A07A4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 807A07A8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 807A07AC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 807A07B0  7C 03 04 2E */	lfsx f0, r3, r0
/* 807A07B4  EC 03 00 32 */	fmuls f0, f3, f0
/* 807A07B8  D0 1B 07 1C */	stfs f0, 0x71c(r27)
/* 807A07BC  7F 80 07 74 */	extsb r0, r28
/* 807A07C0  2C 00 00 01 */	cmpwi r0, 1
/* 807A07C4  40 82 00 58 */	bne lbl_807A081C
/* 807A07C8  38 7B 06 9E */	addi r3, r27, 0x69e
/* 807A07CC  38 80 00 00 */	li r4, 0
/* 807A07D0  38 A0 00 04 */	li r5, 4
/* 807A07D4  38 C0 08 00 */	li r6, 0x800
/* 807A07D8  4B AC FE 31 */	bl cLib_addCalcAngleS2__FPssss
/* 807A07DC  38 7B 06 9C */	addi r3, r27, 0x69c
/* 807A07E0  38 80 00 00 */	li r4, 0
/* 807A07E4  38 A0 00 04 */	li r5, 4
/* 807A07E8  38 C0 08 00 */	li r6, 0x800
/* 807A07EC  4B AC FE 1D */	bl cLib_addCalcAngleS2__FPssss
/* 807A07F0  38 7B 06 A4 */	addi r3, r27, 0x6a4
/* 807A07F4  38 80 00 00 */	li r4, 0
/* 807A07F8  38 A0 00 04 */	li r5, 4
/* 807A07FC  38 C0 08 00 */	li r6, 0x800
/* 807A0800  4B AC FE 09 */	bl cLib_addCalcAngleS2__FPssss
/* 807A0804  38 7B 06 A2 */	addi r3, r27, 0x6a2
/* 807A0808  38 80 00 00 */	li r4, 0
/* 807A080C  38 A0 00 04 */	li r5, 4
/* 807A0810  38 C0 08 00 */	li r6, 0x800
/* 807A0814  4B AC FD F5 */	bl cLib_addCalcAngleS2__FPssss
/* 807A0818  48 00 00 84 */	b lbl_807A089C
lbl_807A081C:
/* 807A081C  2C 00 00 02 */	cmpwi r0, 2
/* 807A0820  40 82 00 7C */	bne lbl_807A089C
/* 807A0824  38 7B 06 9E */	addi r3, r27, 0x69e
/* 807A0828  A8 9B 06 A8 */	lha r4, 0x6a8(r27)
/* 807A082C  38 A0 00 01 */	li r5, 1
/* 807A0830  38 C0 10 00 */	li r6, 0x1000
/* 807A0834  4B AC FD D5 */	bl cLib_addCalcAngleS2__FPssss
/* 807A0838  38 7B 06 9C */	addi r3, r27, 0x69c
/* 807A083C  A8 9B 06 A6 */	lha r4, 0x6a6(r27)
/* 807A0840  38 A0 00 01 */	li r5, 1
/* 807A0844  38 C0 10 00 */	li r6, 0x1000
/* 807A0848  4B AC FD C1 */	bl cLib_addCalcAngleS2__FPssss
/* 807A084C  38 7B 06 A4 */	addi r3, r27, 0x6a4
/* 807A0850  A8 9B 06 AE */	lha r4, 0x6ae(r27)
/* 807A0854  38 A0 00 01 */	li r5, 1
/* 807A0858  38 C0 10 00 */	li r6, 0x1000
/* 807A085C  4B AC FD AD */	bl cLib_addCalcAngleS2__FPssss
/* 807A0860  38 7B 06 A2 */	addi r3, r27, 0x6a2
/* 807A0864  A8 9B 06 AC */	lha r4, 0x6ac(r27)
/* 807A0868  38 A0 00 01 */	li r5, 1
/* 807A086C  38 C0 10 00 */	li r6, 0x1000
/* 807A0870  4B AC FD 99 */	bl cLib_addCalcAngleS2__FPssss
/* 807A0874  38 7B 04 DE */	addi r3, r27, 0x4de
/* 807A0878  A8 9B 04 E6 */	lha r4, 0x4e6(r27)
/* 807A087C  38 A0 00 02 */	li r5, 2
/* 807A0880  38 C0 10 00 */	li r6, 0x1000
/* 807A0884  4B AC FD 85 */	bl cLib_addCalcAngleS2__FPssss
/* 807A0888  38 7B 04 DC */	addi r3, r27, 0x4dc
/* 807A088C  38 80 00 00 */	li r4, 0
/* 807A0890  38 A0 00 01 */	li r5, 1
/* 807A0894  38 C0 10 00 */	li r6, 0x1000
/* 807A0898  4B AC FD 71 */	bl cLib_addCalcAngleS2__FPssss
lbl_807A089C:
/* 807A089C  E3 E1 00 F8 */	psq_l f31, 248(r1), 0, 0 /* qr0 */
/* 807A08A0  CB E1 00 F0 */	lfd f31, 0xf0(r1)
/* 807A08A4  39 61 00 F0 */	addi r11, r1, 0xf0
/* 807A08A8  4B BC 19 79 */	bl _restgpr_27
/* 807A08AC  80 01 01 04 */	lwz r0, 0x104(r1)
/* 807A08B0  7C 08 03 A6 */	mtlr r0
/* 807A08B4  38 21 01 00 */	addi r1, r1, 0x100
/* 807A08B8  4E 80 00 20 */	blr 
