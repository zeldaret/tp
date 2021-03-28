lbl_80ABEE98:
/* 80ABEE98  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80ABEE9C  7C 08 02 A6 */	mflr r0
/* 80ABEEA0  90 01 00 64 */	stw r0, 0x64(r1)
/* 80ABEEA4  39 61 00 60 */	addi r11, r1, 0x60
/* 80ABEEA8  4B 8A 33 30 */	b _savegpr_28
/* 80ABEEAC  7C 7C 1B 78 */	mr r28, r3
/* 80ABEEB0  3C 60 80 AC */	lis r3, m__19daNpcRafrel_Param_c@ha
/* 80ABEEB4  38 83 F9 E0 */	addi r4, r3, m__19daNpcRafrel_Param_c@l
/* 80ABEEB8  38 A0 00 00 */	li r5, 0
/* 80ABEEBC  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80ABEEC0  83 E3 00 04 */	lwz r31, 4(r3)
/* 80ABEEC4  3B C0 00 00 */	li r30, 0
/* 80ABEEC8  38 64 00 00 */	addi r3, r4, 0
/* 80ABEECC  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 80ABEED0  C0 43 00 20 */	lfs f2, 0x20(r3)
/* 80ABEED4  C0 63 00 2C */	lfs f3, 0x2c(r3)
/* 80ABEED8  C0 83 00 28 */	lfs f4, 0x28(r3)
/* 80ABEEDC  C0 C3 00 34 */	lfs f6, 0x34(r3)
/* 80ABEEE0  C0 E3 00 30 */	lfs f7, 0x30(r3)
/* 80ABEEE4  C1 03 00 3C */	lfs f8, 0x3c(r3)
/* 80ABEEE8  C1 23 00 38 */	lfs f9, 0x38(r3)
/* 80ABEEEC  A8 7C 08 F8 */	lha r3, 0x8f8(r28)
/* 80ABEEF0  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 80ABEEF4  7C 03 00 50 */	subf r0, r3, r0
/* 80ABEEF8  7C 1D 07 34 */	extsh r29, r0
/* 80ABEEFC  C0 1C 08 54 */	lfs f0, 0x854(r28)
/* 80ABEF00  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80ABEF04  C0 1C 08 58 */	lfs f0, 0x858(r28)
/* 80ABEF08  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80ABEF0C  C0 1C 08 5C */	lfs f0, 0x85c(r28)
/* 80ABEF10  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80ABEF14  C0 1C 08 60 */	lfs f0, 0x860(r28)
/* 80ABEF18  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80ABEF1C  C0 1C 08 64 */	lfs f0, 0x864(r28)
/* 80ABEF20  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80ABEF24  C0 1C 08 68 */	lfs f0, 0x868(r28)
/* 80ABEF28  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80ABEF2C  C0 1C 08 6C */	lfs f0, 0x86c(r28)
/* 80ABEF30  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80ABEF34  C0 1C 08 70 */	lfs f0, 0x870(r28)
/* 80ABEF38  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80ABEF3C  C0 1C 08 74 */	lfs f0, 0x874(r28)
/* 80ABEF40  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80ABEF44  80 64 03 44 */	lwz r3, 0x344(r4)
/* 80ABEF48  80 04 03 48 */	lwz r0, 0x348(r4)
/* 80ABEF4C  90 61 00 18 */	stw r3, 0x18(r1)
/* 80ABEF50  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80ABEF54  80 04 03 4C */	lwz r0, 0x34c(r4)
/* 80ABEF58  90 01 00 20 */	stw r0, 0x20(r1)
/* 80ABEF5C  38 1C 09 1A */	addi r0, r28, 0x91a
/* 80ABEF60  90 01 00 18 */	stw r0, 0x18(r1)
/* 80ABEF64  38 1C 09 20 */	addi r0, r28, 0x920
/* 80ABEF68  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80ABEF6C  38 1C 09 26 */	addi r0, r28, 0x926
/* 80ABEF70  90 01 00 20 */	stw r0, 0x20(r1)
/* 80ABEF74  A8 1C 0E 0E */	lha r0, 0xe0e(r28)
/* 80ABEF78  2C 00 00 01 */	cmpwi r0, 1
/* 80ABEF7C  41 82 00 1C */	beq lbl_80ABEF98
/* 80ABEF80  40 80 00 08 */	bge lbl_80ABEF88
/* 80ABEF84  48 00 00 30 */	b lbl_80ABEFB4
lbl_80ABEF88:
/* 80ABEF88  2C 00 00 04 */	cmpwi r0, 4
/* 80ABEF8C  41 82 00 24 */	beq lbl_80ABEFB0
/* 80ABEF90  40 80 00 24 */	bge lbl_80ABEFB4
/* 80ABEF94  48 00 00 0C */	b lbl_80ABEFA0
lbl_80ABEF98:
/* 80ABEF98  3B C0 00 01 */	li r30, 1
/* 80ABEF9C  48 00 00 18 */	b lbl_80ABEFB4
lbl_80ABEFA0:
/* 80ABEFA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80ABEFA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80ABEFA8  80 A3 5D AC */	lwz r5, 0x5dac(r3)
/* 80ABEFAC  48 00 00 08 */	b lbl_80ABEFB4
lbl_80ABEFB0:
/* 80ABEFB0  80 BC 0C 9C */	lwz r5, 0xc9c(r28)
lbl_80ABEFB4:
/* 80ABEFB4  28 05 00 00 */	cmplwi r5, 0
/* 80ABEFB8  41 82 00 4C */	beq lbl_80ABF004
/* 80ABEFBC  C0 05 05 50 */	lfs f0, 0x550(r5)
/* 80ABEFC0  D0 1C 08 78 */	stfs f0, 0x878(r28)
/* 80ABEFC4  C0 05 05 54 */	lfs f0, 0x554(r5)
/* 80ABEFC8  D0 1C 08 7C */	stfs f0, 0x87c(r28)
/* 80ABEFCC  C0 05 05 58 */	lfs f0, 0x558(r5)
/* 80ABEFD0  D0 1C 08 80 */	stfs f0, 0x880(r28)
/* 80ABEFD4  A8 1C 0E 0E */	lha r0, 0xe0e(r28)
/* 80ABEFD8  2C 00 00 02 */	cmpwi r0, 2
/* 80ABEFDC  41 82 00 1C */	beq lbl_80ABEFF8
/* 80ABEFE0  2C 00 00 03 */	cmpwi r0, 3
/* 80ABEFE4  41 82 00 14 */	beq lbl_80ABEFF8
/* 80ABEFE8  C0 BC 08 7C */	lfs f5, 0x87c(r28)
/* 80ABEFEC  C0 04 03 D8 */	lfs f0, 0x3d8(r4)
/* 80ABEFF0  EC 05 00 28 */	fsubs f0, f5, f0
/* 80ABEFF4  D0 1C 08 7C */	stfs f0, 0x87c(r28)
lbl_80ABEFF8:
/* 80ABEFF8  38 1C 08 78 */	addi r0, r28, 0x878
/* 80ABEFFC  90 1C 0C 10 */	stw r0, 0xc10(r28)
/* 80ABF000  48 00 00 0C */	b lbl_80ABF00C
lbl_80ABF004:
/* 80ABF004  38 00 00 00 */	li r0, 0
/* 80ABF008  90 1C 0C 10 */	stw r0, 0xc10(r28)
lbl_80ABF00C:
/* 80ABF00C  D0 C1 00 08 */	stfs f6, 8(r1)
/* 80ABF010  D0 E1 00 0C */	stfs f7, 0xc(r1)
/* 80ABF014  D1 01 00 10 */	stfs f8, 0x10(r1)
/* 80ABF018  D1 21 00 14 */	stfs f9, 0x14(r1)
/* 80ABF01C  38 7C 0B E0 */	addi r3, r28, 0xbe0
/* 80ABF020  C0 A4 00 88 */	lfs f5, 0x88(r4)
/* 80ABF024  FC C0 28 90 */	fmr f6, f5
/* 80ABF028  FC E0 28 90 */	fmr f7, f5
/* 80ABF02C  FD 00 28 90 */	fmr f8, f5
/* 80ABF030  A8 9C 08 F2 */	lha r4, 0x8f2(r28)
/* 80ABF034  38 A1 00 24 */	addi r5, r1, 0x24
/* 80ABF038  4B 69 20 80 */	b setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz
/* 80ABF03C  38 7C 0B E0 */	addi r3, r28, 0xbe0
/* 80ABF040  7F 84 E3 78 */	mr r4, r28
/* 80ABF044  38 BF 00 24 */	addi r5, r31, 0x24
/* 80ABF048  38 C1 00 18 */	addi r6, r1, 0x18
/* 80ABF04C  7F C7 F3 78 */	mr r7, r30
/* 80ABF050  7F A8 EB 78 */	mr r8, r29
/* 80ABF054  39 20 00 00 */	li r9, 0
/* 80ABF058  4B 69 22 F8 */	b calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii
/* 80ABF05C  39 61 00 60 */	addi r11, r1, 0x60
/* 80ABF060  4B 8A 31 C4 */	b _restgpr_28
/* 80ABF064  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80ABF068  7C 08 03 A6 */	mtlr r0
/* 80ABF06C  38 21 00 60 */	addi r1, r1, 0x60
/* 80ABF070  4E 80 00 20 */	blr 
