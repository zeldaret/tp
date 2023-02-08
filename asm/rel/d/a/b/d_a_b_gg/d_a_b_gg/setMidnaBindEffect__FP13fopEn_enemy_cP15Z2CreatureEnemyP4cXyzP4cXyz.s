lbl_805ECBFC:
/* 805ECBFC  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 805ECC00  7C 08 02 A6 */	mflr r0
/* 805ECC04  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 805ECC08  39 61 00 A0 */	addi r11, r1, 0xa0
/* 805ECC0C  4B D7 55 A9 */	bl _savegpr_19
/* 805ECC10  7C 7E 1B 78 */	mr r30, r3
/* 805ECC14  7C 9A 23 78 */	mr r26, r4
/* 805ECC18  7C BB 2B 78 */	mr r27, r5
/* 805ECC1C  7C DC 33 78 */	mr r28, r6
/* 805ECC20  3C 60 80 5F */	lis r3, cNullVec__6Z2Calc@ha /* 0x805ED3F0@ha */
/* 805ECC24  3A E3 D3 F0 */	addi r23, r3, cNullVec__6Z2Calc@l /* 0x805ED3F0@l */
/* 805ECC28  3C 60 80 5F */	lis r3, lit_3911@ha /* 0x805ED060@ha */
/* 805ECC2C  3B E3 D0 60 */	addi r31, r3, lit_3911@l /* 0x805ED060@l */
/* 805ECC30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805ECC34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805ECC38  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 805ECC3C  3C 80 80 45 */	lis r4, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 805ECC40  80 04 10 18 */	lwz r0, m_midnaActor__9daPy_py_c@l(r4)  /* 0x80451018@l */
/* 805ECC44  28 00 00 00 */	cmplwi r0, 0
/* 805ECC48  41 82 03 A4 */	beq lbl_805ECFEC
/* 805ECC4C  7F C4 F3 78 */	mr r4, r30
/* 805ECC50  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805ECC54  81 8C 00 EC */	lwz r12, 0xec(r12)
/* 805ECC58  7D 89 03 A6 */	mtctr r12
/* 805ECC5C  4E 80 04 21 */	bctrl 
/* 805ECC60  2C 03 00 00 */	cmpwi r3, 0
/* 805ECC64  41 82 03 88 */	beq lbl_805ECFEC
/* 805ECC68  4B BB F9 15 */	bl dKy_darkworld_check__Fv
/* 805ECC6C  54 63 06 3E */	clrlwi r3, r3, 0x18
/* 805ECC70  30 03 FF FF */	addic r0, r3, -1
/* 805ECC74  7F A0 19 10 */	subfe r29, r0, r3
/* 805ECC78  88 1E 05 A8 */	lbz r0, 0x5a8(r30)
/* 805ECC7C  28 00 00 00 */	cmplwi r0, 0
/* 805ECC80  40 82 02 A0 */	bne lbl_805ECF20
/* 805ECC84  38 00 00 01 */	li r0, 1
/* 805ECC88  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 805ECC8C  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 805ECC90  38 63 10 18 */	addi r3, r3, m_midnaActor__9daPy_py_c@l /* 0x80451018@l */
/* 805ECC94  80 63 00 00 */	lwz r3, 0(r3)
/* 805ECC98  80 63 05 74 */	lwz r3, 0x574(r3)
/* 805ECC9C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 805ECCA0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 805ECCA4  38 63 01 E0 */	addi r3, r3, 0x1e0
/* 805ECCA8  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805ECCAC  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805ECCB0  4B D5 98 01 */	bl PSMTXCopy
/* 805ECCB4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 805ECCB8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 805ECCBC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805ECCC0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 805ECCC4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 805ECCC8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 805ECCCC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 805ECCD0  38 81 00 4C */	addi r4, r1, 0x4c
/* 805ECCD4  38 A1 00 58 */	addi r5, r1, 0x58
/* 805ECCD8  4B D5 A0 95 */	bl PSMTXMultVec
/* 805ECCDC  38 61 00 34 */	addi r3, r1, 0x34
/* 805ECCE0  38 81 00 58 */	addi r4, r1, 0x58
/* 805ECCE4  7F 65 DB 78 */	mr r5, r27
/* 805ECCE8  4B C7 9E 4D */	bl __mi__4cXyzCFRC3Vec
/* 805ECCEC  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 805ECCF0  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 805ECCF4  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 805ECCF8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 805ECCFC  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 805ECD00  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 805ECD04  4B C7 A9 71 */	bl cM_atan2s__Fff
/* 805ECD08  B0 61 00 2E */	sth r3, 0x2e(r1)
/* 805ECD0C  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 805ECD10  EC 20 00 32 */	fmuls f1, f0, f0
/* 805ECD14  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 805ECD18  EC 00 00 32 */	fmuls f0, f0, f0
/* 805ECD1C  EC 41 00 2A */	fadds f2, f1, f0
/* 805ECD20  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805ECD24  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805ECD28  40 81 00 0C */	ble lbl_805ECD34
/* 805ECD2C  FC 00 10 34 */	frsqrte f0, f2
/* 805ECD30  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_805ECD34:
/* 805ECD34  C0 21 00 44 */	lfs f1, 0x44(r1)
/* 805ECD38  4B C7 A9 3D */	bl cM_atan2s__Fff
/* 805ECD3C  7C 03 00 D0 */	neg r0, r3
/* 805ECD40  B0 01 00 2C */	sth r0, 0x2c(r1)
/* 805ECD44  38 80 00 00 */	li r4, 0
/* 805ECD48  B0 81 00 30 */	sth r4, 0x30(r1)
/* 805ECD4C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 805ECD50  7C 00 07 74 */	extsb r0, r0
/* 805ECD54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805ECD58  3B 03 61 C0 */	addi r24, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805ECD5C  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 805ECD60  57 A5 10 3A */	slwi r5, r29, 2
/* 805ECD64  90 81 00 08 */	stw r4, 8(r1)
/* 805ECD68  90 01 00 0C */	stw r0, 0xc(r1)
/* 805ECD6C  3A B7 00 20 */	addi r21, r23, 0x20
/* 805ECD70  7E B5 2A 14 */	add r21, r21, r5
/* 805ECD74  92 A1 00 10 */	stw r21, 0x10(r1)
/* 805ECD78  3A D7 00 28 */	addi r22, r23, 0x28
/* 805ECD7C  7E D6 2A 14 */	add r22, r22, r5
/* 805ECD80  92 C1 00 14 */	stw r22, 0x14(r1)
/* 805ECD84  90 81 00 18 */	stw r4, 0x18(r1)
/* 805ECD88  38 80 00 00 */	li r4, 0
/* 805ECD8C  38 A0 02 9B */	li r5, 0x29b
/* 805ECD90  7F 66 DB 78 */	mr r6, r27
/* 805ECD94  38 FE 01 0C */	addi r7, r30, 0x10c
/* 805ECD98  39 01 00 2C */	addi r8, r1, 0x2c
/* 805ECD9C  7F 89 E3 78 */	mr r9, r28
/* 805ECDA0  39 40 00 FF */	li r10, 0xff
/* 805ECDA4  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805ECDA8  4B A5 FC E9 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805ECDAC  7C 79 1B 79 */	or. r25, r3, r3
/* 805ECDB0  41 82 00 FC */	beq lbl_805ECEAC
/* 805ECDB4  38 61 00 40 */	addi r3, r1, 0x40
/* 805ECDB8  4B D5 A3 81 */	bl PSVECSquareMag
/* 805ECDBC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805ECDC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805ECDC4  40 81 00 58 */	ble lbl_805ECE1C
/* 805ECDC8  FC 00 08 34 */	frsqrte f0, f1
/* 805ECDCC  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 805ECDD0  FC 44 00 32 */	fmul f2, f4, f0
/* 805ECDD4  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 805ECDD8  FC 00 00 32 */	fmul f0, f0, f0
/* 805ECDDC  FC 01 00 32 */	fmul f0, f1, f0
/* 805ECDE0  FC 03 00 28 */	fsub f0, f3, f0
/* 805ECDE4  FC 02 00 32 */	fmul f0, f2, f0
/* 805ECDE8  FC 44 00 32 */	fmul f2, f4, f0
/* 805ECDEC  FC 00 00 32 */	fmul f0, f0, f0
/* 805ECDF0  FC 01 00 32 */	fmul f0, f1, f0
/* 805ECDF4  FC 03 00 28 */	fsub f0, f3, f0
/* 805ECDF8  FC 02 00 32 */	fmul f0, f2, f0
/* 805ECDFC  FC 44 00 32 */	fmul f2, f4, f0
/* 805ECE00  FC 00 00 32 */	fmul f0, f0, f0
/* 805ECE04  FC 01 00 32 */	fmul f0, f1, f0
/* 805ECE08  FC 03 00 28 */	fsub f0, f3, f0
/* 805ECE0C  FC 02 00 32 */	fmul f0, f2, f0
/* 805ECE10  FC 21 00 32 */	fmul f1, f1, f0
/* 805ECE14  FC 20 08 18 */	frsp f1, f1
/* 805ECE18  48 00 00 88 */	b lbl_805ECEA0
lbl_805ECE1C:
/* 805ECE1C  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 805ECE20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805ECE24  40 80 00 10 */	bge lbl_805ECE34
/* 805ECE28  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805ECE2C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 805ECE30  48 00 00 70 */	b lbl_805ECEA0
lbl_805ECE34:
/* 805ECE34  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 805ECE38  80 81 00 20 */	lwz r4, 0x20(r1)
/* 805ECE3C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 805ECE40  3C 00 7F 80 */	lis r0, 0x7f80
/* 805ECE44  7C 03 00 00 */	cmpw r3, r0
/* 805ECE48  41 82 00 14 */	beq lbl_805ECE5C
/* 805ECE4C  40 80 00 40 */	bge lbl_805ECE8C
/* 805ECE50  2C 03 00 00 */	cmpwi r3, 0
/* 805ECE54  41 82 00 20 */	beq lbl_805ECE74
/* 805ECE58  48 00 00 34 */	b lbl_805ECE8C
lbl_805ECE5C:
/* 805ECE5C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805ECE60  41 82 00 0C */	beq lbl_805ECE6C
/* 805ECE64  38 00 00 01 */	li r0, 1
/* 805ECE68  48 00 00 28 */	b lbl_805ECE90
lbl_805ECE6C:
/* 805ECE6C  38 00 00 02 */	li r0, 2
/* 805ECE70  48 00 00 20 */	b lbl_805ECE90
lbl_805ECE74:
/* 805ECE74  54 80 02 7F */	clrlwi. r0, r4, 9
/* 805ECE78  41 82 00 0C */	beq lbl_805ECE84
/* 805ECE7C  38 00 00 05 */	li r0, 5
/* 805ECE80  48 00 00 10 */	b lbl_805ECE90
lbl_805ECE84:
/* 805ECE84  38 00 00 03 */	li r0, 3
/* 805ECE88  48 00 00 08 */	b lbl_805ECE90
lbl_805ECE8C:
/* 805ECE8C  38 00 00 04 */	li r0, 4
lbl_805ECE90:
/* 805ECE90  2C 00 00 01 */	cmpwi r0, 1
/* 805ECE94  40 82 00 0C */	bne lbl_805ECEA0
/* 805ECE98  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 805ECE9C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_805ECEA0:
/* 805ECEA0  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 805ECEA4  EC 00 00 72 */	fmuls f0, f0, f1
/* 805ECEA8  D0 19 00 B4 */	stfs f0, 0xb4(r25)
lbl_805ECEAC:
/* 805ECEAC  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 805ECEB0  7C 04 07 74 */	extsb r4, r0
/* 805ECEB4  80 78 5D 3C */	lwz r3, 0x5d3c(r24)
/* 805ECEB8  38 00 00 00 */	li r0, 0
/* 805ECEBC  90 01 00 08 */	stw r0, 8(r1)
/* 805ECEC0  90 81 00 0C */	stw r4, 0xc(r1)
/* 805ECEC4  92 A1 00 10 */	stw r21, 0x10(r1)
/* 805ECEC8  92 C1 00 14 */	stw r22, 0x14(r1)
/* 805ECECC  90 01 00 18 */	stw r0, 0x18(r1)
/* 805ECED0  38 80 00 00 */	li r4, 0
/* 805ECED4  38 A0 02 9C */	li r5, 0x29c
/* 805ECED8  7F 66 DB 78 */	mr r6, r27
/* 805ECEDC  38 FE 01 0C */	addi r7, r30, 0x10c
/* 805ECEE0  39 1E 04 E4 */	addi r8, r30, 0x4e4
/* 805ECEE4  7F 89 E3 78 */	mr r9, r28
/* 805ECEE8  39 40 00 FF */	li r10, 0xff
/* 805ECEEC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805ECEF0  4B A5 FB A1 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805ECEF4  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060029@ha */
/* 805ECEF8  38 03 00 29 */	addi r0, r3, 0x0029 /* 0x00060029@l */
/* 805ECEFC  90 01 00 28 */	stw r0, 0x28(r1)
/* 805ECF00  7F 43 D3 78 */	mr r3, r26
/* 805ECF04  38 81 00 28 */	addi r4, r1, 0x28
/* 805ECF08  38 A0 00 00 */	li r5, 0
/* 805ECF0C  38 C0 FF FF */	li r6, -1
/* 805ECF10  81 9A 00 00 */	lwz r12, 0(r26)
/* 805ECF14  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805ECF18  7D 89 03 A6 */	mtctr r12
/* 805ECF1C  4E 80 04 21 */	bctrl 
lbl_805ECF20:
/* 805ECF20  3A A0 00 00 */	li r21, 0
/* 805ECF24  3A C0 00 00 */	li r22, 0
/* 805ECF28  3A 80 00 00 */	li r20, 0
/* 805ECF2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805ECF30  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805ECF34  57 A0 10 3A */	slwi r0, r29, 2
/* 805ECF38  3B 17 00 28 */	addi r24, r23, 0x28
/* 805ECF3C  7F 18 02 14 */	add r24, r24, r0
/* 805ECF40  3B B7 00 20 */	addi r29, r23, 0x20
/* 805ECF44  7F BD 02 14 */	add r29, r29, r0
/* 805ECF48  3A 77 00 30 */	addi r19, r23, 0x30
lbl_805ECF4C:
/* 805ECF4C  3A F4 05 9C */	addi r23, r20, 0x59c
/* 805ECF50  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 805ECF54  7C 05 07 74 */	extsb r5, r0
/* 805ECF58  7C 9E B8 2E */	lwzx r4, r30, r23
/* 805ECF5C  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 805ECF60  38 00 00 FF */	li r0, 0xff
/* 805ECF64  90 01 00 08 */	stw r0, 8(r1)
/* 805ECF68  38 00 00 00 */	li r0, 0
/* 805ECF6C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805ECF70  90 A1 00 10 */	stw r5, 0x10(r1)
/* 805ECF74  93 A1 00 14 */	stw r29, 0x14(r1)
/* 805ECF78  93 01 00 18 */	stw r24, 0x18(r1)
/* 805ECF7C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805ECF80  38 A0 00 00 */	li r5, 0
/* 805ECF84  7C D3 B2 2E */	lhzx r6, r19, r22
/* 805ECF88  7F 67 DB 78 */	mr r7, r27
/* 805ECF8C  39 1E 01 0C */	addi r8, r30, 0x10c
/* 805ECF90  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 805ECF94  7F 8A E3 78 */	mr r10, r28
/* 805ECF98  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805ECF9C  4B A6 05 31 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 805ECFA0  7C 7E B9 2E */	stwx r3, r30, r23
/* 805ECFA4  3A B5 00 01 */	addi r21, r21, 1
/* 805ECFA8  2C 15 00 03 */	cmpwi r21, 3
/* 805ECFAC  3A D6 00 02 */	addi r22, r22, 2
/* 805ECFB0  3A 94 00 04 */	addi r20, r20, 4
/* 805ECFB4  41 80 FF 98 */	blt lbl_805ECF4C
/* 805ECFB8  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006002A@ha */
/* 805ECFBC  38 03 00 2A */	addi r0, r3, 0x002A /* 0x0006002A@l */
/* 805ECFC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805ECFC4  7F 43 D3 78 */	mr r3, r26
/* 805ECFC8  38 81 00 24 */	addi r4, r1, 0x24
/* 805ECFCC  38 A0 00 00 */	li r5, 0
/* 805ECFD0  38 C0 FF FF */	li r6, -1
/* 805ECFD4  81 9A 00 00 */	lwz r12, 0(r26)
/* 805ECFD8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 805ECFDC  7D 89 03 A6 */	mtctr r12
/* 805ECFE0  4E 80 04 21 */	bctrl 
/* 805ECFE4  38 60 00 01 */	li r3, 1
/* 805ECFE8  48 00 00 10 */	b lbl_805ECFF8
lbl_805ECFEC:
/* 805ECFEC  38 00 00 00 */	li r0, 0
/* 805ECFF0  98 1E 05 A8 */	stb r0, 0x5a8(r30)
/* 805ECFF4  38 60 00 00 */	li r3, 0
lbl_805ECFF8:
/* 805ECFF8  39 61 00 A0 */	addi r11, r1, 0xa0
/* 805ECFFC  4B D7 52 05 */	bl _restgpr_19
/* 805ED000  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 805ED004  7C 08 03 A6 */	mtlr r0
/* 805ED008  38 21 00 A0 */	addi r1, r1, 0xa0
/* 805ED00C  4E 80 00 20 */	blr 
