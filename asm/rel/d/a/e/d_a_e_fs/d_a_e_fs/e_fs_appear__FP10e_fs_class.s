lbl_806BBDF4:
/* 806BBDF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806BBDF8  7C 08 02 A6 */	mflr r0
/* 806BBDFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 806BBE00  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806BBE04  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806BBE08  7C 7E 1B 78 */	mr r30, r3
/* 806BBE0C  3C 60 80 6C */	lis r3, lit_3917@ha /* 0x806BE48C@ha */
/* 806BBE10  3B E3 E4 8C */	addi r31, r3, lit_3917@l /* 0x806BE48C@l */
/* 806BBE14  80 7E 04 A4 */	lwz r3, 0x4a4(r30)
/* 806BBE18  38 81 00 10 */	addi r4, r1, 0x10
/* 806BBE1C  4B 95 DB A1 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 806BBE20  A8 1E 06 80 */	lha r0, 0x680(r30)
/* 806BBE24  2C 00 00 01 */	cmpwi r0, 1
/* 806BBE28  41 82 00 DC */	beq lbl_806BBF04
/* 806BBE2C  40 80 00 14 */	bge lbl_806BBE40
/* 806BBE30  2C 00 FF FF */	cmpwi r0, -1
/* 806BBE34  41 82 00 18 */	beq lbl_806BBE4C
/* 806BBE38  40 80 00 8C */	bge lbl_806BBEC4
/* 806BBE3C  48 00 01 F4 */	b lbl_806BC030
lbl_806BBE40:
/* 806BBE40  2C 00 00 03 */	cmpwi r0, 3
/* 806BBE44  40 80 01 EC */	bge lbl_806BC030
/* 806BBE48  48 00 01 64 */	b lbl_806BBFAC
lbl_806BBE4C:
/* 806BBE4C  88 1E 05 B5 */	lbz r0, 0x5b5(r30)
/* 806BBE50  2C 00 00 03 */	cmpwi r0, 3
/* 806BBE54  41 82 00 3C */	beq lbl_806BBE90
/* 806BBE58  40 80 00 14 */	bge lbl_806BBE6C
/* 806BBE5C  2C 00 00 01 */	cmpwi r0, 1
/* 806BBE60  41 82 00 18 */	beq lbl_806BBE78
/* 806BBE64  40 80 00 20 */	bge lbl_806BBE84
/* 806BBE68  48 00 00 3C */	b lbl_806BBEA4
lbl_806BBE6C:
/* 806BBE6C  2C 00 00 05 */	cmpwi r0, 5
/* 806BBE70  40 80 00 34 */	bge lbl_806BBEA4
/* 806BBE74  48 00 00 28 */	b lbl_806BBE9C
lbl_806BBE78:
/* 806BBE78  38 00 00 28 */	li r0, 0x28
/* 806BBE7C  B0 1E 06 88 */	sth r0, 0x688(r30)
/* 806BBE80  48 00 00 24 */	b lbl_806BBEA4
lbl_806BBE84:
/* 806BBE84  38 00 00 32 */	li r0, 0x32
/* 806BBE88  B0 1E 06 88 */	sth r0, 0x688(r30)
/* 806BBE8C  48 00 00 18 */	b lbl_806BBEA4
lbl_806BBE90:
/* 806BBE90  38 00 00 A0 */	li r0, 0xa0
/* 806BBE94  B0 1E 06 88 */	sth r0, 0x688(r30)
/* 806BBE98  48 00 00 0C */	b lbl_806BBEA4
lbl_806BBE9C:
/* 806BBE9C  38 00 00 96 */	li r0, 0x96
/* 806BBEA0  B0 1E 06 88 */	sth r0, 0x688(r30)
lbl_806BBEA4:
/* 806BBEA4  38 00 00 01 */	li r0, 1
/* 806BBEA8  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 806BBEAC  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 806BBEB0  54 00 00 3E */	slwi r0, r0, 0
/* 806BBEB4  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 806BBEB8  38 00 00 00 */	li r0, 0
/* 806BBEBC  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 806BBEC0  48 00 01 70 */	b lbl_806BC030
lbl_806BBEC4:
/* 806BBEC4  28 1E 00 00 */	cmplwi r30, 0
/* 806BBEC8  41 82 00 0C */	beq lbl_806BBED4
/* 806BBECC  80 1E 00 04 */	lwz r0, 4(r30)
/* 806BBED0  48 00 00 08 */	b lbl_806BBED8
lbl_806BBED4:
/* 806BBED4  38 00 FF FF */	li r0, -1
lbl_806BBED8:
/* 806BBED8  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 806BBEDC  1C 00 00 0A */	mulli r0, r0, 0xa
/* 806BBEE0  B0 1E 06 88 */	sth r0, 0x688(r30)
/* 806BBEE4  A8 7E 06 80 */	lha r3, 0x680(r30)
/* 806BBEE8  38 03 00 01 */	addi r0, r3, 1
/* 806BBEEC  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 806BBEF0  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 806BBEF4  54 00 00 3E */	slwi r0, r0, 0
/* 806BBEF8  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 806BBEFC  38 00 00 00 */	li r0, 0
/* 806BBF00  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_806BBF04:
/* 806BBF04  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 806BBF08  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 806BBF0C  EC 01 00 2A */	fadds f0, f1, f0
/* 806BBF10  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 806BBF14  38 00 00 05 */	li r0, 5
/* 806BBF18  B0 1E 06 90 */	sth r0, 0x690(r30)
/* 806BBF1C  A8 1E 06 88 */	lha r0, 0x688(r30)
/* 806BBF20  2C 00 00 00 */	cmpwi r0, 0
/* 806BBF24  40 82 01 0C */	bne lbl_806BC030
/* 806BBF28  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 806BBF2C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 806BBF30  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806BBF34  D0 1E 04 BC */	stfs f0, 0x4bc(r30)
/* 806BBF38  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 806BBF3C  D0 1E 04 C0 */	stfs f0, 0x4c0(r30)
/* 806BBF40  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 806BBF44  D0 1E 04 C4 */	stfs f0, 0x4c4(r30)
/* 806BBF48  7F C3 F3 78 */	mr r3, r30
/* 806BBF4C  38 80 00 04 */	li r4, 4
/* 806BBF50  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 806BBF54  38 A0 00 00 */	li r5, 0
/* 806BBF58  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806BBF5C  4B FF FB B5 */	bl anm_init__FP10e_fs_classifUcf
/* 806BBF60  A8 7E 06 80 */	lha r3, 0x680(r30)
/* 806BBF64  38 03 00 01 */	addi r0, r3, 1
/* 806BBF68  B0 1E 06 80 */	sth r0, 0x680(r30)
/* 806BBF6C  A8 1E 05 C6 */	lha r0, 0x5c6(r30)
/* 806BBF70  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 806BBF74  38 00 00 04 */	li r0, 4
/* 806BBF78  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 806BBF7C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700D8@ha */
/* 806BBF80  38 03 00 D8 */	addi r0, r3, 0x00D8 /* 0x000700D8@l */
/* 806BBF84  90 01 00 0C */	stw r0, 0xc(r1)
/* 806BBF88  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 806BBF8C  38 81 00 0C */	addi r4, r1, 0xc
/* 806BBF90  38 A0 00 00 */	li r5, 0
/* 806BBF94  38 C0 FF FF */	li r6, -1
/* 806BBF98  81 9E 05 D4 */	lwz r12, 0x5d4(r30)
/* 806BBF9C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806BBFA0  7D 89 03 A6 */	mtctr r12
/* 806BBFA4  4E 80 04 21 */	bctrl 
/* 806BBFA8  48 00 00 88 */	b lbl_806BC030
lbl_806BBFAC:
/* 806BBFAC  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 806BBFB0  38 63 00 0C */	addi r3, r3, 0xc
/* 806BBFB4  C0 3F 00 4C */	lfs f1, 0x4c(r31)
/* 806BBFB8  4B C6 C4 75 */	bl checkPass__12J3DFrameCtrlFf
/* 806BBFBC  2C 03 00 00 */	cmpwi r3, 0
/* 806BBFC0  41 82 00 30 */	beq lbl_806BBFF0
/* 806BBFC4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000700D9@ha */
/* 806BBFC8  38 03 00 D9 */	addi r0, r3, 0x00D9 /* 0x000700D9@l */
/* 806BBFCC  90 01 00 08 */	stw r0, 8(r1)
/* 806BBFD0  38 7E 05 D4 */	addi r3, r30, 0x5d4
/* 806BBFD4  38 81 00 08 */	addi r4, r1, 8
/* 806BBFD8  38 A0 00 00 */	li r5, 0
/* 806BBFDC  38 C0 FF FF */	li r6, -1
/* 806BBFE0  81 9E 05 D4 */	lwz r12, 0x5d4(r30)
/* 806BBFE4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806BBFE8  7D 89 03 A6 */	mtctr r12
/* 806BBFEC  4E 80 04 21 */	bctrl 
lbl_806BBFF0:
/* 806BBFF0  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 806BBFF4  38 80 00 01 */	li r4, 1
/* 806BBFF8  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806BBFFC  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806BC000  40 82 00 18 */	bne lbl_806BC018
/* 806BC004  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806BC008  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806BC00C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806BC010  41 82 00 08 */	beq lbl_806BC018
/* 806BC014  38 80 00 00 */	li r4, 0
lbl_806BC018:
/* 806BC018  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806BC01C  41 82 00 14 */	beq lbl_806BC030
/* 806BC020  38 00 00 01 */	li r0, 1
/* 806BC024  B0 1E 06 7E */	sth r0, 0x67e(r30)
/* 806BC028  38 00 00 00 */	li r0, 0
/* 806BC02C  B0 1E 06 80 */	sth r0, 0x680(r30)
lbl_806BC030:
/* 806BC030  80 61 00 10 */	lwz r3, 0x10(r1)
/* 806BC034  28 03 00 00 */	cmplwi r3, 0
/* 806BC038  41 82 00 58 */	beq lbl_806BC090
/* 806BC03C  88 03 06 1A */	lbz r0, 0x61a(r3)
/* 806BC040  28 00 00 00 */	cmplwi r0, 0
/* 806BC044  41 82 00 4C */	beq lbl_806BC090
/* 806BC048  28 00 00 04 */	cmplwi r0, 4
/* 806BC04C  41 82 00 44 */	beq lbl_806BC090
/* 806BC050  C0 3E 05 C8 */	lfs f1, 0x5c8(r30)
/* 806BC054  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 806BC058  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806BC05C  40 81 00 34 */	ble lbl_806BC090
/* 806BC060  A8 1E 05 C6 */	lha r0, 0x5c6(r30)
/* 806BC064  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 806BC068  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806BC06C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806BC070  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806BC074  C0 23 05 2C */	lfs f1, 0x52c(r3)
/* 806BC078  38 7E 05 2C */	addi r3, r30, 0x52c
/* 806BC07C  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 806BC080  EC 20 00 72 */	fmuls f1, f0, f1
/* 806BC084  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806BC088  C0 7F 00 58 */	lfs f3, 0x58(r31)
/* 806BC08C  4B BB 39 B1 */	bl cLib_addCalc2__FPffff
lbl_806BC090:
/* 806BC090  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806BC094  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806BC098  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806BC09C  7C 08 03 A6 */	mtlr r0
/* 806BC0A0  38 21 00 20 */	addi r1, r1, 0x20
/* 806BC0A4  4E 80 00 20 */	blr 
