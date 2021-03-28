lbl_804CEE50:
/* 804CEE50  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804CEE54  7C 08 02 A6 */	mflr r0
/* 804CEE58  90 01 00 54 */	stw r0, 0x54(r1)
/* 804CEE5C  39 61 00 50 */	addi r11, r1, 0x50
/* 804CEE60  4B E9 33 7C */	b _savegpr_29
/* 804CEE64  7C 7E 1B 78 */	mr r30, r3
/* 804CEE68  3C 60 80 4D */	lis r3, ccSphSrc@ha
/* 804CEE6C  3B E3 15 F0 */	addi r31, r3, ccSphSrc@l
/* 804CEE70  A8 1E 05 CC */	lha r0, 0x5cc(r30)
/* 804CEE74  2C 00 00 01 */	cmpwi r0, 1
/* 804CEE78  41 82 00 98 */	beq lbl_804CEF10
/* 804CEE7C  40 80 00 F4 */	bge lbl_804CEF70
/* 804CEE80  2C 00 00 00 */	cmpwi r0, 0
/* 804CEE84  40 80 00 08 */	bge lbl_804CEE8C
/* 804CEE88  48 00 00 E8 */	b lbl_804CEF70
lbl_804CEE8C:
/* 804CEE8C  3C 60 80 4D */	lis r3, sLink_Pos@ha
/* 804CEE90  38 63 18 2C */	addi r3, r3, sLink_Pos@l
/* 804CEE94  80 63 00 00 */	lwz r3, 0(r3)
/* 804CEE98  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 804CEE9C  4B DA 1D 68 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 804CEEA0  7C 63 07 34 */	extsh r3, r3
/* 804CEEA4  38 03 D0 00 */	addi r0, r3, -12288
/* 804CEEA8  C8 3F 00 90 */	lfd f1, 0x90(r31)
/* 804CEEAC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804CEEB0  90 01 00 34 */	stw r0, 0x34(r1)
/* 804CEEB4  3C 00 43 30 */	lis r0, 0x4330
/* 804CEEB8  90 01 00 30 */	stw r0, 0x30(r1)
/* 804CEEBC  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804CEEC0  EC 00 08 28 */	fsubs f0, f0, f1
/* 804CEEC4  FC 00 00 1E */	fctiwz f0, f0
/* 804CEEC8  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 804CEECC  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 804CEED0  B0 1E 05 DA */	sth r0, 0x5da(r30)
/* 804CEED4  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 804CEED8  D0 1E 05 E0 */	stfs f0, 0x5e0(r30)
/* 804CEEDC  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 804CEEE0  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 804CEEE4  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 804CEEE8  D0 1E 05 E4 */	stfs f0, 0x5e4(r30)
/* 804CEEEC  A8 7E 05 CC */	lha r3, 0x5cc(r30)
/* 804CEEF0  38 03 00 01 */	addi r0, r3, 1
/* 804CEEF4  B0 1E 05 CC */	sth r0, 0x5cc(r30)
/* 804CEEF8  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 804CEEFC  80 7E 06 B0 */	lwz r3, 0x6b0(r30)
/* 804CEF00  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 804CEF04  38 00 00 07 */	li r0, 7
/* 804CEF08  B0 1E 05 CE */	sth r0, 0x5ce(r30)
/* 804CEF0C  48 00 00 64 */	b lbl_804CEF70
lbl_804CEF10:
/* 804CEF10  80 7E 06 B0 */	lwz r3, 0x6b0(r30)
/* 804CEF14  38 63 00 0C */	addi r3, r3, 0xc
/* 804CEF18  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 804CEF1C  4B E5 95 10 */	b checkPass__12J3DFrameCtrlFf
/* 804CEF20  2C 03 00 00 */	cmpwi r3, 0
/* 804CEF24  41 82 00 18 */	beq lbl_804CEF3C
/* 804CEF28  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 804CEF2C  80 7E 06 B0 */	lwz r3, 0x6b0(r30)
/* 804CEF30  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 804CEF34  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 804CEF38  D0 1E 05 E0 */	stfs f0, 0x5e0(r30)
lbl_804CEF3C:
/* 804CEF3C  80 7E 06 B0 */	lwz r3, 0x6b0(r30)
/* 804CEF40  38 63 00 0C */	addi r3, r3, 0xc
/* 804CEF44  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 804CEF48  4B E5 94 E4 */	b checkPass__12J3DFrameCtrlFf
/* 804CEF4C  2C 03 00 00 */	cmpwi r3, 0
/* 804CEF50  41 82 00 0C */	beq lbl_804CEF5C
/* 804CEF54  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 804CEF58  D0 1E 05 E0 */	stfs f0, 0x5e0(r30)
lbl_804CEF5C:
/* 804CEF5C  A8 1E 05 CE */	lha r0, 0x5ce(r30)
/* 804CEF60  2C 00 00 00 */	cmpwi r0, 0
/* 804CEF64  40 82 00 0C */	bne lbl_804CEF70
/* 804CEF68  7F C3 F3 78 */	mr r3, r30
/* 804CEF6C  48 00 18 15 */	bl CareAction__13daObjYOUSEI_cFv
lbl_804CEF70:
/* 804CEF70  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 804CEF74  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804CEF78  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804CEF7C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804CEF80  38 7E 04 EC */	addi r3, r30, 0x4ec
/* 804CEF84  38 81 00 20 */	addi r4, r1, 0x20
/* 804CEF88  C0 3F 00 A4 */	lfs f1, 0xa4(r31)
/* 804CEF8C  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 804CEF90  4B DA 11 E8 */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 804CEF94  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 804CEF98  C0 3E 05 E0 */	lfs f1, 0x5e0(r30)
/* 804CEF9C  C0 5F 00 6C */	lfs f2, 0x6c(r31)
/* 804CEFA0  C0 7F 00 4C */	lfs f3, 0x4c(r31)
/* 804CEFA4  C0 9F 00 48 */	lfs f4, 0x48(r31)
/* 804CEFA8  4B DA 09 D4 */	b cLib_addCalc__FPfffff
/* 804CEFAC  38 7E 05 2C */	addi r3, r30, 0x52c
/* 804CEFB0  C0 3E 05 E4 */	lfs f1, 0x5e4(r30)
/* 804CEFB4  C0 5F 00 A8 */	lfs f2, 0xa8(r31)
/* 804CEFB8  C0 7F 00 AC */	lfs f3, 0xac(r31)
/* 804CEFBC  C0 9F 00 48 */	lfs f4, 0x48(r31)
/* 804CEFC0  4B DA 09 BC */	b cLib_addCalc__FPfffff
/* 804CEFC4  38 7E 04 DE */	addi r3, r30, 0x4de
/* 804CEFC8  A8 9E 05 DA */	lha r4, 0x5da(r30)
/* 804CEFCC  38 A0 00 03 */	li r5, 3
/* 804CEFD0  38 C0 10 00 */	li r6, 0x1000
/* 804CEFD4  4B DA 16 34 */	b cLib_addCalcAngleS2__FPssss
/* 804CEFD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804CEFDC  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 804CEFE0  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 804CEFE4  38 00 00 FF */	li r0, 0xff
/* 804CEFE8  90 01 00 08 */	stw r0, 8(r1)
/* 804CEFEC  38 80 00 00 */	li r4, 0
/* 804CEFF0  90 81 00 0C */	stw r4, 0xc(r1)
/* 804CEFF4  38 00 FF FF */	li r0, -1
/* 804CEFF8  90 01 00 10 */	stw r0, 0x10(r1)
/* 804CEFFC  90 81 00 14 */	stw r4, 0x14(r1)
/* 804CF000  90 81 00 18 */	stw r4, 0x18(r1)
/* 804CF004  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804CF008  80 9E 06 04 */	lwz r4, 0x604(r30)
/* 804CF00C  38 A0 00 00 */	li r5, 0
/* 804CF010  38 C0 07 2F */	li r6, 0x72f
/* 804CF014  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 804CF018  39 1E 01 0C */	addi r8, r30, 0x10c
/* 804CF01C  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 804CF020  39 40 00 00 */	li r10, 0
/* 804CF024  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 804CF028  4B B7 E4 A4 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804CF02C  90 7E 06 04 */	stw r3, 0x604(r30)
/* 804CF030  80 7D 5D 3C */	lwz r3, 0x5d3c(r29)
/* 804CF034  38 00 00 FF */	li r0, 0xff
/* 804CF038  90 01 00 08 */	stw r0, 8(r1)
/* 804CF03C  38 80 00 00 */	li r4, 0
/* 804CF040  90 81 00 0C */	stw r4, 0xc(r1)
/* 804CF044  38 00 FF FF */	li r0, -1
/* 804CF048  90 01 00 10 */	stw r0, 0x10(r1)
/* 804CF04C  90 81 00 14 */	stw r4, 0x14(r1)
/* 804CF050  90 81 00 18 */	stw r4, 0x18(r1)
/* 804CF054  90 81 00 1C */	stw r4, 0x1c(r1)
/* 804CF058  80 9E 06 08 */	lwz r4, 0x608(r30)
/* 804CF05C  38 A0 00 00 */	li r5, 0
/* 804CF060  38 C0 07 31 */	li r6, 0x731
/* 804CF064  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 804CF068  39 1E 01 0C */	addi r8, r30, 0x10c
/* 804CF06C  39 3E 04 E4 */	addi r9, r30, 0x4e4
/* 804CF070  39 40 00 00 */	li r10, 0
/* 804CF074  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 804CF078  4B B7 E4 54 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804CF07C  90 7E 06 08 */	stw r3, 0x608(r30)
/* 804CF080  39 61 00 50 */	addi r11, r1, 0x50
/* 804CF084  4B E9 31 A4 */	b _restgpr_29
/* 804CF088  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804CF08C  7C 08 03 A6 */	mtlr r0
/* 804CF090  38 21 00 50 */	addi r1, r1, 0x50
/* 804CF094  4E 80 00 20 */	blr 
