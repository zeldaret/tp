lbl_809ACE18:
/* 809ACE18  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 809ACE1C  7C 08 02 A6 */	mflr r0
/* 809ACE20  90 01 00 64 */	stw r0, 0x64(r1)
/* 809ACE24  39 61 00 60 */	addi r11, r1, 0x60
/* 809ACE28  4B 9B 53 B1 */	bl _savegpr_28
/* 809ACE2C  7C 7C 1B 78 */	mr r28, r3
/* 809ACE30  3C 60 80 9B */	lis r3, m__20daNpcDoorBoy_Param_c@ha /* 0x809AD9A8@ha */
/* 809ACE34  38 83 D9 A8 */	addi r4, r3, m__20daNpcDoorBoy_Param_c@l /* 0x809AD9A8@l */
/* 809ACE38  38 A0 00 00 */	li r5, 0
/* 809ACE3C  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 809ACE40  83 E3 00 04 */	lwz r31, 4(r3)
/* 809ACE44  3B C0 00 00 */	li r30, 0
/* 809ACE48  38 64 00 00 */	addi r3, r4, 0
/* 809ACE4C  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 809ACE50  C0 43 00 20 */	lfs f2, 0x20(r3)
/* 809ACE54  C0 63 00 2C */	lfs f3, 0x2c(r3)
/* 809ACE58  C0 83 00 28 */	lfs f4, 0x28(r3)
/* 809ACE5C  C0 C3 00 34 */	lfs f6, 0x34(r3)
/* 809ACE60  C0 E3 00 30 */	lfs f7, 0x30(r3)
/* 809ACE64  C1 03 00 3C */	lfs f8, 0x3c(r3)
/* 809ACE68  C1 23 00 38 */	lfs f9, 0x38(r3)
/* 809ACE6C  A8 7C 08 F8 */	lha r3, 0x8f8(r28)
/* 809ACE70  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 809ACE74  7C 03 00 50 */	subf r0, r3, r0
/* 809ACE78  7C 1D 07 34 */	extsh r29, r0
/* 809ACE7C  C0 1C 08 54 */	lfs f0, 0x854(r28)
/* 809ACE80  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 809ACE84  C0 1C 08 58 */	lfs f0, 0x858(r28)
/* 809ACE88  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 809ACE8C  C0 1C 08 5C */	lfs f0, 0x85c(r28)
/* 809ACE90  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 809ACE94  C0 1C 08 60 */	lfs f0, 0x860(r28)
/* 809ACE98  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 809ACE9C  C0 1C 08 64 */	lfs f0, 0x864(r28)
/* 809ACEA0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 809ACEA4  C0 1C 08 68 */	lfs f0, 0x868(r28)
/* 809ACEA8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 809ACEAC  C0 1C 08 6C */	lfs f0, 0x86c(r28)
/* 809ACEB0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 809ACEB4  C0 1C 08 70 */	lfs f0, 0x870(r28)
/* 809ACEB8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 809ACEBC  C0 1C 08 74 */	lfs f0, 0x874(r28)
/* 809ACEC0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 809ACEC4  80 64 01 28 */	lwz r3, 0x128(r4)
/* 809ACEC8  80 04 01 2C */	lwz r0, 0x12c(r4)
/* 809ACECC  90 61 00 18 */	stw r3, 0x18(r1)
/* 809ACED0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 809ACED4  80 04 01 30 */	lwz r0, 0x130(r4)
/* 809ACED8  90 01 00 20 */	stw r0, 0x20(r1)
/* 809ACEDC  38 1C 09 1A */	addi r0, r28, 0x91a
/* 809ACEE0  90 01 00 18 */	stw r0, 0x18(r1)
/* 809ACEE4  38 1C 09 20 */	addi r0, r28, 0x920
/* 809ACEE8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 809ACEEC  38 1C 09 26 */	addi r0, r28, 0x926
/* 809ACEF0  90 01 00 20 */	stw r0, 0x20(r1)
/* 809ACEF4  A8 1C 0E 00 */	lha r0, 0xe00(r28)
/* 809ACEF8  2C 00 00 01 */	cmpwi r0, 1
/* 809ACEFC  41 82 00 18 */	beq lbl_809ACF14
/* 809ACF00  40 80 00 08 */	bge lbl_809ACF08
/* 809ACF04  48 00 00 34 */	b lbl_809ACF38
lbl_809ACF08:
/* 809ACF08  2C 00 00 04 */	cmpwi r0, 4
/* 809ACF0C  40 80 00 2C */	bge lbl_809ACF38
/* 809ACF10  48 00 00 0C */	b lbl_809ACF1C
lbl_809ACF14:
/* 809ACF14  3B C0 00 01 */	li r30, 1
/* 809ACF18  48 00 00 20 */	b lbl_809ACF38
lbl_809ACF1C:
/* 809ACF1C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809ACF20  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809ACF24  80 A3 5D AC */	lwz r5, 0x5dac(r3)
/* 809ACF28  2C 00 00 03 */	cmpwi r0, 3
/* 809ACF2C  40 82 00 0C */	bne lbl_809ACF38
/* 809ACF30  C1 04 01 50 */	lfs f8, 0x150(r4)
/* 809ACF34  C1 24 01 54 */	lfs f9, 0x154(r4)
lbl_809ACF38:
/* 809ACF38  28 05 00 00 */	cmplwi r5, 0
/* 809ACF3C  41 82 00 4C */	beq lbl_809ACF88
/* 809ACF40  C0 05 05 50 */	lfs f0, 0x550(r5)
/* 809ACF44  D0 1C 08 78 */	stfs f0, 0x878(r28)
/* 809ACF48  C0 05 05 54 */	lfs f0, 0x554(r5)
/* 809ACF4C  D0 1C 08 7C */	stfs f0, 0x87c(r28)
/* 809ACF50  C0 05 05 58 */	lfs f0, 0x558(r5)
/* 809ACF54  D0 1C 08 80 */	stfs f0, 0x880(r28)
/* 809ACF58  A8 1C 0E 00 */	lha r0, 0xe00(r28)
/* 809ACF5C  2C 00 00 02 */	cmpwi r0, 2
/* 809ACF60  41 82 00 1C */	beq lbl_809ACF7C
/* 809ACF64  2C 00 00 03 */	cmpwi r0, 3
/* 809ACF68  41 82 00 14 */	beq lbl_809ACF7C
/* 809ACF6C  C0 BC 08 7C */	lfs f5, 0x87c(r28)
/* 809ACF70  C0 04 01 58 */	lfs f0, 0x158(r4)
/* 809ACF74  EC 05 00 28 */	fsubs f0, f5, f0
/* 809ACF78  D0 1C 08 7C */	stfs f0, 0x87c(r28)
lbl_809ACF7C:
/* 809ACF7C  38 1C 08 78 */	addi r0, r28, 0x878
/* 809ACF80  90 1C 0C 20 */	stw r0, 0xc20(r28)
/* 809ACF84  48 00 00 0C */	b lbl_809ACF90
lbl_809ACF88:
/* 809ACF88  38 00 00 00 */	li r0, 0
/* 809ACF8C  90 1C 0C 20 */	stw r0, 0xc20(r28)
lbl_809ACF90:
/* 809ACF90  D0 C1 00 08 */	stfs f6, 8(r1)
/* 809ACF94  D0 E1 00 0C */	stfs f7, 0xc(r1)
/* 809ACF98  D1 01 00 10 */	stfs f8, 0x10(r1)
/* 809ACF9C  D1 21 00 14 */	stfs f9, 0x14(r1)
/* 809ACFA0  38 7C 0B F0 */	addi r3, r28, 0xbf0
/* 809ACFA4  C0 A4 00 94 */	lfs f5, 0x94(r4)
/* 809ACFA8  FC C0 28 90 */	fmr f6, f5
/* 809ACFAC  FC E0 28 90 */	fmr f7, f5
/* 809ACFB0  FD 00 28 90 */	fmr f8, f5
/* 809ACFB4  A8 9C 08 F2 */	lha r4, 0x8f2(r28)
/* 809ACFB8  38 A1 00 24 */	addi r5, r1, 0x24
/* 809ACFBC  4B 7A 40 FD */	bl setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz
/* 809ACFC0  38 7C 0B F0 */	addi r3, r28, 0xbf0
/* 809ACFC4  7F 84 E3 78 */	mr r4, r28
/* 809ACFC8  38 BF 00 24 */	addi r5, r31, 0x24
/* 809ACFCC  38 C1 00 18 */	addi r6, r1, 0x18
/* 809ACFD0  7F C7 F3 78 */	mr r7, r30
/* 809ACFD4  7F A8 EB 78 */	mr r8, r29
/* 809ACFD8  39 20 00 00 */	li r9, 0
/* 809ACFDC  4B 7A 43 75 */	bl calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii
/* 809ACFE0  39 61 00 60 */	addi r11, r1, 0x60
/* 809ACFE4  4B 9B 52 41 */	bl _restgpr_28
/* 809ACFE8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 809ACFEC  7C 08 03 A6 */	mtlr r0
/* 809ACFF0  38 21 00 60 */	addi r1, r1, 0x60
/* 809ACFF4  4E 80 00 20 */	blr 
