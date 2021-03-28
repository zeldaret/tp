lbl_806AAE10:
/* 806AAE10  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 806AAE14  7C 08 02 A6 */	mflr r0
/* 806AAE18  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 806AAE1C  39 61 00 C0 */	addi r11, r1, 0xc0
/* 806AAE20  4B CB 73 A4 */	b _savegpr_23
/* 806AAE24  7C 79 1B 78 */	mr r25, r3
/* 806AAE28  3C 60 80 6B */	lis r3, lit_3764@ha
/* 806AAE2C  3B 83 D5 38 */	addi r28, r3, lit_3764@l
/* 806AAE30  C0 19 04 D0 */	lfs f0, 0x4d0(r25)
/* 806AAE34  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806AAE38  C0 39 04 D4 */	lfs f1, 0x4d4(r25)
/* 806AAE3C  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 806AAE40  C0 19 04 D8 */	lfs f0, 0x4d8(r25)
/* 806AAE44  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 806AAE48  C0 1C 00 1C */	lfs f0, 0x1c(r28)
/* 806AAE4C  EC 01 00 2A */	fadds f0, f1, f0
/* 806AAE50  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806AAE54  3C 60 80 6B */	lis r3, l_HIO@ha
/* 806AAE58  38 63 D8 08 */	addi r3, r3, l_HIO@l
/* 806AAE5C  C0 03 00 08 */	lfs f0, 8(r3)
/* 806AAE60  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806AAE64  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806AAE68  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806AAE6C  3B 60 00 FF */	li r27, 0xff
/* 806AAE70  4B B0 04 10 */	b dKy_camera_water_in_status_check__Fv
/* 806AAE74  2C 03 00 00 */	cmpwi r3, 0
/* 806AAE78  40 82 00 08 */	bne lbl_806AAE80
/* 806AAE7C  3B 60 00 55 */	li r27, 0x55
lbl_806AAE80:
/* 806AAE80  3B 40 00 00 */	li r26, 0
/* 806AAE84  3B 00 00 00 */	li r24, 0
/* 806AAE88  3A E0 00 00 */	li r23, 0
/* 806AAE8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806AAE90  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 806AAE94  3C 60 80 6B */	lis r3, elect_effect_name@ha
/* 806AAE98  3B C3 D7 14 */	addi r30, r3, elect_effect_name@l
lbl_806AAE9C:
/* 806AAE9C  38 80 00 00 */	li r4, 0
/* 806AAEA0  B0 81 00 24 */	sth r4, 0x24(r1)
/* 806AAEA4  B0 81 00 26 */	sth r4, 0x26(r1)
/* 806AAEA8  B0 81 00 28 */	sth r4, 0x28(r1)
/* 806AAEAC  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 806AAEB0  93 61 00 08 */	stw r27, 8(r1)
/* 806AAEB4  90 81 00 0C */	stw r4, 0xc(r1)
/* 806AAEB8  38 00 FF FF */	li r0, -1
/* 806AAEBC  90 01 00 10 */	stw r0, 0x10(r1)
/* 806AAEC0  90 81 00 14 */	stw r4, 0x14(r1)
/* 806AAEC4  90 81 00 18 */	stw r4, 0x18(r1)
/* 806AAEC8  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806AAECC  3B F7 0D 30 */	addi r31, r23, 0xd30
/* 806AAED0  7C 99 F8 2E */	lwzx r4, r25, r31
/* 806AAED4  38 A0 00 00 */	li r5, 0
/* 806AAED8  7C DE C2 2E */	lhzx r6, r30, r24
/* 806AAEDC  38 E1 00 38 */	addi r7, r1, 0x38
/* 806AAEE0  39 19 01 0C */	addi r8, r25, 0x10c
/* 806AAEE4  39 21 00 24 */	addi r9, r1, 0x24
/* 806AAEE8  39 41 00 2C */	addi r10, r1, 0x2c
/* 806AAEEC  C0 3C 00 24 */	lfs f1, 0x24(r28)
/* 806AAEF0  4B 9A 25 DC */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806AAEF4  7C 79 F9 2E */	stwx r3, r25, r31
/* 806AAEF8  38 1A FF FF */	addi r0, r26, -1
/* 806AAEFC  28 00 00 01 */	cmplwi r0, 1
/* 806AAF00  40 81 00 0C */	ble lbl_806AAF0C
/* 806AAF04  2C 1A 00 03 */	cmpwi r26, 3
/* 806AAF08  40 82 00 F4 */	bne lbl_806AAFFC
lbl_806AAF0C:
/* 806AAF0C  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 806AAF10  38 63 02 10 */	addi r3, r3, 0x210
/* 806AAF14  7C 99 F8 2E */	lwzx r4, r25, r31
/* 806AAF18  4B 9A 0A 00 */	b getEmitter__Q213dPa_control_c7level_cFUl
/* 806AAF1C  7C 7F 1B 79 */	or. r31, r3, r3
/* 806AAF20  41 82 00 DC */	beq lbl_806AAFFC
/* 806AAF24  C0 3C 00 68 */	lfs f1, 0x68(r28)
/* 806AAF28  4B BB CA 64 */	b cM_rndFX__Ff
/* 806AAF2C  FC 00 08 1E */	fctiwz f0, f1
/* 806AAF30  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 806AAF34  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 806AAF38  B0 01 00 24 */	sth r0, 0x24(r1)
/* 806AAF3C  C0 3C 00 68 */	lfs f1, 0x68(r28)
/* 806AAF40  4B BB CA 4C */	b cM_rndFX__Ff
/* 806AAF44  FC 00 08 1E */	fctiwz f0, f1
/* 806AAF48  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 806AAF4C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806AAF50  B0 01 00 26 */	sth r0, 0x26(r1)
/* 806AAF54  C0 3C 00 68 */	lfs f1, 0x68(r28)
/* 806AAF58  4B BB CA 34 */	b cM_rndFX__Ff
/* 806AAF5C  FC 00 08 1E */	fctiwz f0, f1
/* 806AAF60  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 806AAF64  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 806AAF68  B0 01 00 28 */	sth r0, 0x28(r1)
/* 806AAF6C  C0 5C 00 6C */	lfs f2, 0x6c(r28)
/* 806AAF70  7C 00 07 34 */	extsh r0, r0
/* 806AAF74  C8 3C 00 70 */	lfd f1, 0x70(r28)
/* 806AAF78  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806AAF7C  90 01 00 64 */	stw r0, 0x64(r1)
/* 806AAF80  3C 60 43 30 */	lis r3, 0x4330
/* 806AAF84  90 61 00 60 */	stw r3, 0x60(r1)
/* 806AAF88  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 806AAF8C  EC 00 08 28 */	fsubs f0, f0, f1
/* 806AAF90  EC 02 00 32 */	fmuls f0, f2, f0
/* 806AAF94  FC 00 00 1E */	fctiwz f0, f0
/* 806AAF98  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 806AAF9C  80 A1 00 6C */	lwz r5, 0x6c(r1)
/* 806AAFA0  A8 01 00 26 */	lha r0, 0x26(r1)
/* 806AAFA4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806AAFA8  90 01 00 74 */	stw r0, 0x74(r1)
/* 806AAFAC  90 61 00 70 */	stw r3, 0x70(r1)
/* 806AAFB0  C8 01 00 70 */	lfd f0, 0x70(r1)
/* 806AAFB4  EC 00 08 28 */	fsubs f0, f0, f1
/* 806AAFB8  EC 02 00 32 */	fmuls f0, f2, f0
/* 806AAFBC  FC 00 00 1E */	fctiwz f0, f0
/* 806AAFC0  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 806AAFC4  80 81 00 7C */	lwz r4, 0x7c(r1)
/* 806AAFC8  A8 01 00 24 */	lha r0, 0x24(r1)
/* 806AAFCC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806AAFD0  90 01 00 84 */	stw r0, 0x84(r1)
/* 806AAFD4  90 61 00 80 */	stw r3, 0x80(r1)
/* 806AAFD8  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 806AAFDC  EC 00 08 28 */	fsubs f0, f0, f1
/* 806AAFE0  EC 02 00 32 */	fmuls f0, f2, f0
/* 806AAFE4  FC 00 00 1E */	fctiwz f0, f0
/* 806AAFE8  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 806AAFEC  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 806AAFF0  B0 1F 00 4C */	sth r0, 0x4c(r31)
/* 806AAFF4  B0 9F 00 4E */	sth r4, 0x4e(r31)
/* 806AAFF8  B0 BF 00 50 */	sth r5, 0x50(r31)
lbl_806AAFFC:
/* 806AAFFC  3B 5A 00 01 */	addi r26, r26, 1
/* 806AB000  2C 1A 00 06 */	cmpwi r26, 6
/* 806AB004  3B 18 00 02 */	addi r24, r24, 2
/* 806AB008  3A F7 00 04 */	addi r23, r23, 4
/* 806AB00C  41 80 FE 90 */	blt lbl_806AAE9C
/* 806AB010  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702A3@ha */
/* 806AB014  38 03 02 A3 */	addi r0, r3, 0x02A3 /* 0x000702A3@l */
/* 806AB018  90 01 00 20 */	stw r0, 0x20(r1)
/* 806AB01C  38 79 05 CC */	addi r3, r25, 0x5cc
/* 806AB020  38 81 00 20 */	addi r4, r1, 0x20
/* 806AB024  38 A0 00 00 */	li r5, 0
/* 806AB028  38 C0 FF FF */	li r6, -1
/* 806AB02C  81 99 05 CC */	lwz r12, 0x5cc(r25)
/* 806AB030  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 806AB034  7D 89 03 A6 */	mtctr r12
/* 806AB038  4E 80 04 21 */	bctrl 
/* 806AB03C  39 61 00 C0 */	addi r11, r1, 0xc0
/* 806AB040  4B CB 71 D0 */	b _restgpr_23
/* 806AB044  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 806AB048  7C 08 03 A6 */	mtlr r0
/* 806AB04C  38 21 00 C0 */	addi r1, r1, 0xc0
/* 806AB050  4E 80 00 20 */	blr 
