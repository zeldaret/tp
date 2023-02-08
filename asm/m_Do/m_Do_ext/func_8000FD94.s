lbl_8000FD94:
/* 8000FD94  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8000FD98  7C 08 02 A6 */	mflr r0
/* 8000FD9C  90 01 00 64 */	stw r0, 0x64(r1)
/* 8000FDA0  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8000FDA4  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8000FDA8  39 61 00 50 */	addi r11, r1, 0x50
/* 8000FDAC  48 35 24 11 */	bl _savegpr_21
/* 8000FDB0  7C 75 1B 78 */	mr r21, r3
/* 8000FDB4  7C 96 23 79 */	or. r22, r4, r4
/* 8000FDB8  7C B7 2B 78 */	mr r23, r5
/* 8000FDBC  7C D8 33 78 */	mr r24, r6
/* 8000FDC0  7C F9 3B 78 */	mr r25, r7
/* 8000FDC4  7D 1A 43 78 */	mr r26, r8
/* 8000FDC8  FF E0 08 90 */	fmr f31, f1
/* 8000FDCC  7D 3B 4B 78 */	mr r27, r9
/* 8000FDD0  7D 5C 53 78 */	mr r28, r10
/* 8000FDD4  83 A1 00 68 */	lwz r29, 0x68(r1)
/* 8000FDD8  83 C1 00 6C */	lwz r30, 0x6c(r1)
/* 8000FDDC  83 E1 00 70 */	lwz r31, 0x70(r1)
/* 8000FDE0  80 A1 00 74 */	lwz r5, 0x74(r1)
/* 8000FDE4  38 00 00 00 */	li r0, 0
/* 8000FDE8  90 03 00 04 */	stw r0, 4(r3)
/* 8000FDEC  90 03 00 4C */	stw r0, 0x4c(r3)
/* 8000FDF0  90 03 00 20 */	stw r0, 0x20(r3)
/* 8000FDF4  90 03 00 24 */	stw r0, 0x24(r3)
/* 8000FDF8  40 82 00 0C */	bne lbl_8000FE04
/* 8000FDFC  38 60 00 00 */	li r3, 0
/* 8000FE00  48 00 02 54 */	b lbl_80010054
lbl_8000FE04:
/* 8000FE04  80 76 00 60 */	lwz r3, 0x60(r22)
/* 8000FE08  80 63 00 00 */	lwz r3, 0(r3)
/* 8000FE0C  80 03 00 48 */	lwz r0, 0x48(r3)
/* 8000FE10  28 00 00 00 */	cmplwi r0, 0
/* 8000FE14  41 82 00 24 */	beq lbl_8000FE38
/* 8000FE18  28 1F 00 00 */	cmplwi r31, 0
/* 8000FE1C  40 82 00 1C */	bne lbl_8000FE38
/* 8000FE20  A0 16 00 74 */	lhz r0, 0x74(r22)
/* 8000FE24  28 00 00 01 */	cmplwi r0, 1
/* 8000FE28  40 82 00 0C */	bne lbl_8000FE34
/* 8000FE2C  3F E0 00 02 */	lis r31, 2
/* 8000FE30  48 00 00 08 */	b lbl_8000FE38
lbl_8000FE34:
/* 8000FE34  3F E0 00 08 */	lis r31, 8
lbl_8000FE38:
/* 8000FE38  7E C3 B3 78 */	mr r3, r22
/* 8000FE3C  7F E4 FB 78 */	mr r4, r31
/* 8000FE40  48 00 4E 15 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 8000FE44  90 75 00 04 */	stw r3, 4(r21)
/* 8000FE48  80 75 00 04 */	lwz r3, 4(r21)
/* 8000FE4C  28 03 00 00 */	cmplwi r3, 0
/* 8000FE50  40 82 00 0C */	bne lbl_8000FE5C
/* 8000FE54  38 60 00 00 */	li r3, 0
/* 8000FE58  48 00 01 FC */	b lbl_80010054
lbl_8000FE5C:
/* 8000FE5C  3C 1F FF F8 */	addis r0, r31, 0xfff8
/* 8000FE60  28 00 00 00 */	cmplwi r0, 0
/* 8000FE64  41 82 00 08 */	beq lbl_8000FE6C
/* 8000FE68  4B FF DC 41 */	bl mDoExt_changeMaterial__FP8J3DModel
lbl_8000FE6C:
/* 8000FE6C  28 1E 00 00 */	cmplwi r30, 0
/* 8000FE70  40 82 00 20 */	bne lbl_8000FE90
/* 8000FE74  28 19 00 00 */	cmplwi r25, 0
/* 8000FE78  41 82 00 18 */	beq lbl_8000FE90
/* 8000FE7C  80 19 00 28 */	lwz r0, 0x28(r25)
/* 8000FE80  7C 1E 03 78 */	mr r30, r0
/* 8000FE84  28 00 00 00 */	cmplwi r0, 0
/* 8000FE88  41 82 00 08 */	beq lbl_8000FE90
/* 8000FE8C  3B A0 00 01 */	li r29, 1
lbl_8000FE90:
/* 8000FE90  2C 1D 00 00 */	cmpwi r29, 0
/* 8000FE94  41 82 00 34 */	beq lbl_8000FEC8
/* 8000FE98  38 60 00 4C */	li r3, 0x4c
/* 8000FE9C  48 2B ED B1 */	bl __nw__FUl
/* 8000FEA0  7C 7D 1B 79 */	or. r29, r3, r3
/* 8000FEA4  41 82 00 14 */	beq lbl_8000FEB8
/* 8000FEA8  48 2A EC ED */	bl __ct__15Z2SoundObjAnimeFv
/* 8000FEAC  3C 60 80 3A */	lis r3, __vt__15mDoExt_zelAnime@ha /* 0x803A32DC@ha */
/* 8000FEB0  38 03 32 DC */	addi r0, r3, __vt__15mDoExt_zelAnime@l /* 0x803A32DC@l */
/* 8000FEB4  90 1D 00 10 */	stw r0, 0x10(r29)
lbl_8000FEB8:
/* 8000FEB8  93 B5 00 4C */	stw r29, 0x4c(r21)
/* 8000FEBC  80 15 00 4C */	lwz r0, 0x4c(r21)
/* 8000FEC0  28 00 00 00 */	cmplwi r0, 0
/* 8000FEC4  41 82 01 38 */	beq lbl_8000FFFC
lbl_8000FEC8:
/* 8000FEC8  7E A3 AB 78 */	mr r3, r21
/* 8000FECC  7F 24 CB 78 */	mr r4, r25
/* 8000FED0  7F 45 D3 78 */	mr r5, r26
/* 8000FED4  C0 22 81 1C */	lfs f1, lit_3876(r2)
/* 8000FED8  FC 40 F8 90 */	fmr f2, f31
/* 8000FEDC  C8 82 81 20 */	lfd f4, lit_3878(r2)
/* 8000FEE0  6F 60 80 00 */	xoris r0, r27, 0x8000
/* 8000FEE4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8000FEE8  3C C0 43 30 */	lis r6, 0x4330
/* 8000FEEC  90 C1 00 08 */	stw r6, 8(r1)
/* 8000FEF0  C8 01 00 08 */	lfd f0, 8(r1)
/* 8000FEF4  EC 60 20 28 */	fsubs f3, f0, f4
/* 8000FEF8  6F 80 80 00 */	xoris r0, r28, 0x8000
/* 8000FEFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000FF00  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8000FF04  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8000FF08  EC 80 20 28 */	fsubs f4, f0, f4
/* 8000FF0C  7F C6 F3 78 */	mr r6, r30
/* 8000FF10  48 00 04 6D */	bl setAnm__14mDoExt_McaMorfFP15J3DAnmTransformiffffPv
/* 8000FF14  C0 02 81 28 */	lfs f0, lit_5939(r2)
/* 8000FF18  D0 15 00 2C */	stfs f0, 0x2c(r21)
/* 8000FF1C  A3 36 00 2C */	lhz r25, 0x2c(r22)
/* 8000FF20  57 23 28 34 */	slwi r3, r25, 5
/* 8000FF24  38 63 00 10 */	addi r3, r3, 0x10
/* 8000FF28  48 2B ED 9D */	bl __nwa__FUl
/* 8000FF2C  38 80 00 00 */	li r4, 0
/* 8000FF30  38 A0 00 00 */	li r5, 0
/* 8000FF34  38 C0 00 20 */	li r6, 0x20
/* 8000FF38  7F 27 CB 78 */	mr r7, r25
/* 8000FF3C  48 35 1F D9 */	bl __construct_new_array
/* 8000FF40  90 75 00 20 */	stw r3, 0x20(r21)
/* 8000FF44  80 15 00 20 */	lwz r0, 0x20(r21)
/* 8000FF48  28 00 00 00 */	cmplwi r0, 0
/* 8000FF4C  41 82 00 B0 */	beq lbl_8000FFFC
/* 8000FF50  A0 16 00 2C */	lhz r0, 0x2c(r22)
/* 8000FF54  54 03 23 36 */	rlwinm r3, r0, 4, 0xc, 0x1b
/* 8000FF58  48 2B ED 6D */	bl __nwa__FUl
/* 8000FF5C  90 75 00 24 */	stw r3, 0x24(r21)
/* 8000FF60  80 15 00 24 */	lwz r0, 0x24(r21)
/* 8000FF64  28 00 00 00 */	cmplwi r0, 0
/* 8000FF68  41 82 00 94 */	beq lbl_8000FFFC
/* 8000FF6C  83 55 00 20 */	lwz r26, 0x20(r21)
/* 8000FF70  7C 1B 03 78 */	mr r27, r0
/* 8000FF74  80 75 00 04 */	lwz r3, 4(r21)
/* 8000FF78  83 23 00 04 */	lwz r25, 4(r3)
/* 8000FF7C  A2 D9 00 2C */	lhz r22, 0x2c(r25)
/* 8000FF80  3B 80 00 00 */	li r28, 0
/* 8000FF84  48 00 00 60 */	b lbl_8000FFE4
lbl_8000FF88:
/* 8000FF88  80 79 00 28 */	lwz r3, 0x28(r25)
/* 8000FF8C  57 80 13 BA */	rlwinm r0, r28, 2, 0xe, 0x1d
/* 8000FF90  7C 63 00 2E */	lwzx r3, r3, r0
/* 8000FF94  E0 03 00 18 */	psq_l f0, 24(r3), 0, 0 /* qr0 */
/* 8000FF98  F0 1A 00 00 */	psq_st f0, 0(r26), 0, 0 /* qr0 */
/* 8000FF9C  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8000FFA0  D0 1A 00 08 */	stfs f0, 8(r26)
/* 8000FFA4  80 03 00 24 */	lwz r0, 0x24(r3)
/* 8000FFA8  90 1A 00 0C */	stw r0, 0xc(r26)
/* 8000FFAC  A8 03 00 28 */	lha r0, 0x28(r3)
/* 8000FFB0  B0 1A 00 10 */	sth r0, 0x10(r26)
/* 8000FFB4  E0 03 00 2C */	psq_l f0, 44(r3), 0, 0 /* qr0 */
/* 8000FFB8  F0 1A 00 14 */	psq_st f0, 20(r26), 0, 0 /* qr0 */
/* 8000FFBC  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 8000FFC0  D0 1A 00 1C */	stfs f0, 0x1c(r26)
/* 8000FFC4  A8 7A 00 0C */	lha r3, 0xc(r26)
/* 8000FFC8  A8 9A 00 0E */	lha r4, 0xe(r26)
/* 8000FFCC  A8 BA 00 10 */	lha r5, 0x10(r26)
/* 8000FFD0  7F 66 DB 78 */	mr r6, r27
/* 8000FFD4  48 32 98 A5 */	bl JMAEulerToQuat__FsssP10Quaternion
/* 8000FFD8  3B 5A 00 20 */	addi r26, r26, 0x20
/* 8000FFDC  3B 7B 00 10 */	addi r27, r27, 0x10
/* 8000FFE0  3B 9C 00 01 */	addi r28, r28, 1
lbl_8000FFE4:
/* 8000FFE4  7C 1C B0 00 */	cmpw r28, r22
/* 8000FFE8  41 80 FF A0 */	blt lbl_8000FF88
/* 8000FFEC  92 F5 00 38 */	stw r23, 0x38(r21)
/* 8000FFF0  93 15 00 3C */	stw r24, 0x3c(r21)
/* 8000FFF4  38 60 00 01 */	li r3, 1
/* 8000FFF8  48 00 00 5C */	b lbl_80010054
lbl_8000FFFC:
/* 8000FFFC  80 75 00 4C */	lwz r3, 0x4c(r21)
/* 80010000  28 03 00 00 */	cmplwi r3, 0
/* 80010004  41 82 00 10 */	beq lbl_80010014
/* 80010008  38 00 00 00 */	li r0, 0
/* 8001000C  90 03 00 20 */	stw r0, 0x20(r3)
/* 80010010  90 15 00 4C */	stw r0, 0x4c(r21)
lbl_80010014:
/* 80010014  80 15 00 20 */	lwz r0, 0x20(r21)
/* 80010018  28 00 00 00 */	cmplwi r0, 0
/* 8001001C  41 82 00 0C */	beq lbl_80010028
/* 80010020  38 00 00 00 */	li r0, 0
/* 80010024  90 15 00 20 */	stw r0, 0x20(r21)
lbl_80010028:
/* 80010028  80 15 00 24 */	lwz r0, 0x24(r21)
/* 8001002C  28 00 00 00 */	cmplwi r0, 0
/* 80010030  41 82 00 0C */	beq lbl_8001003C
/* 80010034  38 00 00 00 */	li r0, 0
/* 80010038  90 15 00 24 */	stw r0, 0x24(r21)
lbl_8001003C:
/* 8001003C  80 15 00 04 */	lwz r0, 4(r21)
/* 80010040  28 00 00 00 */	cmplwi r0, 0
/* 80010044  41 82 00 0C */	beq lbl_80010050
/* 80010048  38 00 00 00 */	li r0, 0
/* 8001004C  90 15 00 04 */	stw r0, 4(r21)
lbl_80010050:
/* 80010050  38 60 00 00 */	li r3, 0
lbl_80010054:
/* 80010054  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80010058  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8001005C  39 61 00 50 */	addi r11, r1, 0x50
/* 80010060  48 35 21 A9 */	bl _restgpr_21
/* 80010064  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80010068  7C 08 03 A6 */	mtlr r0
/* 8001006C  38 21 00 60 */	addi r1, r1, 0x60
/* 80010070  4E 80 00 20 */	blr 
