lbl_800BBD40:
/* 800BBD40  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800BBD44  7C 08 02 A6 */	mflr r0
/* 800BBD48  90 01 00 44 */	stw r0, 0x44(r1)
/* 800BBD4C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800BBD50  93 C1 00 38 */	stw r30, 0x38(r1)
/* 800BBD54  7C 7F 1B 78 */	mr r31, r3
/* 800BBD58  80 63 20 60 */	lwz r3, 0x2060(r3)
/* 800BBD5C  88 03 00 00 */	lbz r0, 0(r3)
/* 800BBD60  28 00 00 00 */	cmplwi r0, 0
/* 800BBD64  41 82 01 78 */	beq lbl_800BBEDC
/* 800BBD68  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800BBD6C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800BBD70  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800BBD74  A0 1F 30 BC */	lhz r0, 0x30bc(r31)
/* 800BBD78  1C 00 00 30 */	mulli r0, r0, 0x30
/* 800BBD7C  7C 83 02 14 */	add r4, r3, r0
/* 800BBD80  38 7F 2B B8 */	addi r3, r31, 0x2bb8
/* 800BBD84  3C A0 80 3E */	lis r5, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800BBD88  38 A5 D4 70 */	addi r5, r5, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800BBD8C  48 28 A7 59 */	bl PSMTXConcat
/* 800BBD90  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800BBD94  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800BBD98  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 800BBD9C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 800BBDA0  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 800BBDA4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 800BBDA8  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 800BBDAC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 800BBDB0  80 7F 06 50 */	lwz r3, 0x650(r31)
/* 800BBDB4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800BBDB8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800BBDBC  A0 1F 30 BE */	lhz r0, 0x30be(r31)
/* 800BBDC0  1C 00 00 30 */	mulli r0, r0, 0x30
/* 800BBDC4  7C 83 02 14 */	add r4, r3, r0
/* 800BBDC8  38 7F 2B B8 */	addi r3, r31, 0x2bb8
/* 800BBDCC  7F C5 F3 78 */	mr r5, r30
/* 800BBDD0  48 28 A7 15 */	bl PSMTXConcat
/* 800BBDD4  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 800BBDD8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 800BBDDC  C0 3E 00 1C */	lfs f1, 0x1c(r30)
/* 800BBDE0  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 800BBDE4  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 800BBDE8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 800BBDEC  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 800BBDF0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 800BBDF4  40 80 00 0C */	bge lbl_800BBE00
/* 800BBDF8  38 00 00 00 */	li r0, 0
/* 800BBDFC  48 00 00 08 */	b lbl_800BBE04
lbl_800BBE00:
/* 800BBE00  38 00 00 01 */	li r0, 1
lbl_800BBE04:
/* 800BBE04  1C A0 00 0C */	mulli r5, r0, 0xc
/* 800BBE08  38 61 00 08 */	addi r3, r1, 8
/* 800BBE0C  38 81 00 20 */	addi r4, r1, 0x20
/* 800BBE10  7C 84 2A 14 */	add r4, r4, r5
/* 800BBE14  38 A5 37 B0 */	addi r5, r5, 0x37b0
/* 800BBE18  7C BF 2A 14 */	add r5, r31, r5
/* 800BBE1C  48 1A AD 19 */	bl __mi__4cXyzCFRC3Vec
/* 800BBE20  C0 41 00 08 */	lfs f2, 8(r1)
/* 800BBE24  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 800BBE28  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 800BBE2C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800BBE30  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 800BBE34  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 800BBE38  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 800BBE3C  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 800BBE40  7C 03 00 50 */	subf r0, r3, r0
/* 800BBE44  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800BBE48  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800BBE4C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800BBE50  7C 03 04 2E */	lfsx f0, r3, r0
/* 800BBE54  EC 02 00 32 */	fmuls f0, f2, f0
/* 800BBE58  FC 00 02 10 */	fabs f0, f0
/* 800BBE5C  FC 40 00 18 */	frsp f2, f0
/* 800BBE60  7C 63 02 14 */	add r3, r3, r0
/* 800BBE64  C0 03 00 04 */	lfs f0, 4(r3)
/* 800BBE68  EC 01 00 32 */	fmuls f0, f1, f0
/* 800BBE6C  FC 00 02 10 */	fabs f0, f0
/* 800BBE70  FC 00 00 18 */	frsp f0, f0
/* 800BBE74  EC 40 10 2A */	fadds f2, f0, f2
/* 800BBE78  C0 1F 33 9C */	lfs f0, 0x339c(r31)
/* 800BBE7C  FC 00 02 10 */	fabs f0, f0
/* 800BBE80  FC 20 00 18 */	frsp f1, f0
/* 800BBE84  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 800BBE88  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BBE8C  40 80 00 88 */	bge lbl_800BBF14
/* 800BBE90  C0 3F 33 AC */	lfs f1, 0x33ac(r31)
/* 800BBE94  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800BBE98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BBE9C  40 81 00 78 */	ble lbl_800BBF14
/* 800BBEA0  C0 3F 33 A4 */	lfs f1, 0x33a4(r31)
/* 800BBEA4  C0 1F 33 A8 */	lfs f0, 0x33a8(r31)
/* 800BBEA8  EC 01 00 28 */	fsubs f0, f1, f0
/* 800BBEAC  FC 00 02 10 */	fabs f0, f0
/* 800BBEB0  FC 20 00 18 */	frsp f1, f0
/* 800BBEB4  C0 02 93 F8 */	lfs f0, lit_13700(r2)
/* 800BBEB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800BBEBC  40 80 00 58 */	bge lbl_800BBF14
/* 800BBEC0  C0 02 94 A8 */	lfs f0, lit_16570(r2)
/* 800BBEC4  EC 40 00 B2 */	fmuls f2, f0, f2
/* 800BBEC8  C0 22 93 A8 */	lfs f1, lit_9652(r2)
/* 800BBECC  C0 1F 33 A0 */	lfs f0, 0x33a0(r31)
/* 800BBED0  EC 01 00 32 */	fmuls f0, f1, f0
/* 800BBED4  EC 42 00 2A */	fadds f2, f2, f0
/* 800BBED8  48 00 00 3C */	b lbl_800BBF14
lbl_800BBEDC:
/* 800BBEDC  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 800BBEE0  38 60 00 00 */	li r3, 0
/* 800BBEE4  38 00 00 02 */	li r0, 2
/* 800BBEE8  7C 09 03 A6 */	mtctr r0
lbl_800BBEEC:
/* 800BBEEC  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 800BBEF0  38 81 00 20 */	addi r4, r1, 0x20
/* 800BBEF4  7C 84 1A 14 */	add r4, r4, r3
/* 800BBEF8  D0 04 00 00 */	stfs f0, 0(r4)
/* 800BBEFC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 800BBF00  D0 04 00 04 */	stfs f0, 4(r4)
/* 800BBF04  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 800BBF08  D0 04 00 08 */	stfs f0, 8(r4)
/* 800BBF0C  38 63 00 0C */	addi r3, r3, 0xc
/* 800BBF10  42 00 FF DC */	bdnz lbl_800BBEEC
lbl_800BBF14:
/* 800BBF14  38 60 00 00 */	li r3, 0
/* 800BBF18  38 00 00 02 */	li r0, 2
/* 800BBF1C  7C 09 03 A6 */	mtctr r0
lbl_800BBF20:
/* 800BBF20  38 81 00 20 */	addi r4, r1, 0x20
/* 800BBF24  7C 84 1A 14 */	add r4, r4, r3
/* 800BBF28  C0 04 00 00 */	lfs f0, 0(r4)
/* 800BBF2C  7C BF 1A 14 */	add r5, r31, r3
/* 800BBF30  D0 05 37 B0 */	stfs f0, 0x37b0(r5)
/* 800BBF34  C0 04 00 04 */	lfs f0, 4(r4)
/* 800BBF38  D0 05 37 B4 */	stfs f0, 0x37b4(r5)
/* 800BBF3C  C0 04 00 08 */	lfs f0, 8(r4)
/* 800BBF40  D0 05 37 B8 */	stfs f0, 0x37b8(r5)
/* 800BBF44  38 63 00 0C */	addi r3, r3, 0xc
/* 800BBF48  42 00 FF D8 */	bdnz lbl_800BBF20
/* 800BBF4C  D0 5F 33 A0 */	stfs f2, 0x33a0(r31)
/* 800BBF50  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 800BBF54  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 800BBF58  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800BBF5C  7C 08 03 A6 */	mtlr r0
/* 800BBF60  38 21 00 40 */	addi r1, r1, 0x40
/* 800BBF64  4E 80 00 20 */	blr 
