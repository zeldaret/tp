lbl_80AFED24:
/* 80AFED24  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80AFED28  7C 08 02 A6 */	mflr r0
/* 80AFED2C  90 01 00 64 */	stw r0, 0x64(r1)
/* 80AFED30  39 61 00 60 */	addi r11, r1, 0x60
/* 80AFED34  4B 86 34 A9 */	bl _savegpr_29
/* 80AFED38  7C 7F 1B 78 */	mr r31, r3
/* 80AFED3C  3C 60 80 B0 */	lis r3, m__17daNpcTheB_Param_c@ha /* 0x80B00D6C@ha */
/* 80AFED40  38 83 0D 6C */	addi r4, r3, m__17daNpcTheB_Param_c@l /* 0x80B00D6C@l */
/* 80AFED44  38 A0 00 00 */	li r5, 0
/* 80AFED48  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80AFED4C  83 C3 00 04 */	lwz r30, 4(r3)
/* 80AFED50  38 64 00 00 */	addi r3, r4, 0
/* 80AFED54  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 80AFED58  C0 43 00 20 */	lfs f2, 0x20(r3)
/* 80AFED5C  C0 63 00 2C */	lfs f3, 0x2c(r3)
/* 80AFED60  C0 83 00 28 */	lfs f4, 0x28(r3)
/* 80AFED64  C0 A3 00 34 */	lfs f5, 0x34(r3)
/* 80AFED68  C0 C3 00 30 */	lfs f6, 0x30(r3)
/* 80AFED6C  C0 E3 00 3C */	lfs f7, 0x3c(r3)
/* 80AFED70  C1 03 00 38 */	lfs f8, 0x38(r3)
/* 80AFED74  A8 7F 08 F8 */	lha r3, 0x8f8(r31)
/* 80AFED78  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80AFED7C  7C 03 00 50 */	subf r0, r3, r0
/* 80AFED80  7C 1D 07 34 */	extsh r29, r0
/* 80AFED84  C0 1F 08 54 */	lfs f0, 0x854(r31)
/* 80AFED88  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80AFED8C  C0 1F 08 58 */	lfs f0, 0x858(r31)
/* 80AFED90  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80AFED94  C0 1F 08 5C */	lfs f0, 0x85c(r31)
/* 80AFED98  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80AFED9C  C0 1F 08 60 */	lfs f0, 0x860(r31)
/* 80AFEDA0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80AFEDA4  C0 1F 08 64 */	lfs f0, 0x864(r31)
/* 80AFEDA8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80AFEDAC  C0 1F 08 68 */	lfs f0, 0x868(r31)
/* 80AFEDB0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80AFEDB4  C0 1F 08 6C */	lfs f0, 0x86c(r31)
/* 80AFEDB8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80AFEDBC  C0 1F 08 70 */	lfs f0, 0x870(r31)
/* 80AFEDC0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80AFEDC4  C0 1F 08 74 */	lfs f0, 0x874(r31)
/* 80AFEDC8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80AFEDCC  80 64 02 08 */	lwz r3, 0x208(r4)
/* 80AFEDD0  80 04 02 0C */	lwz r0, 0x20c(r4)
/* 80AFEDD4  90 61 00 18 */	stw r3, 0x18(r1)
/* 80AFEDD8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80AFEDDC  80 04 02 10 */	lwz r0, 0x210(r4)
/* 80AFEDE0  90 01 00 20 */	stw r0, 0x20(r1)
/* 80AFEDE4  38 1F 09 1A */	addi r0, r31, 0x91a
/* 80AFEDE8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80AFEDEC  38 1F 09 20 */	addi r0, r31, 0x920
/* 80AFEDF0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80AFEDF4  38 1F 09 26 */	addi r0, r31, 0x926
/* 80AFEDF8  90 01 00 20 */	stw r0, 0x20(r1)
/* 80AFEDFC  A8 1F 0E 00 */	lha r0, 0xe00(r31)
/* 80AFEE00  2C 00 00 00 */	cmpwi r0, 0
/* 80AFEE04  41 82 00 2C */	beq lbl_80AFEE30
/* 80AFEE08  41 80 00 28 */	blt lbl_80AFEE30
/* 80AFEE0C  2C 00 00 03 */	cmpwi r0, 3
/* 80AFEE10  40 80 00 20 */	bge lbl_80AFEE30
/* 80AFEE14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AFEE18  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AFEE1C  80 A3 5D AC */	lwz r5, 0x5dac(r3)
/* 80AFEE20  2C 00 00 02 */	cmpwi r0, 2
/* 80AFEE24  40 82 00 0C */	bne lbl_80AFEE30
/* 80AFEE28  C0 E4 02 14 */	lfs f7, 0x214(r4)
/* 80AFEE2C  C1 04 02 18 */	lfs f8, 0x218(r4)
lbl_80AFEE30:
/* 80AFEE30  28 05 00 00 */	cmplwi r5, 0
/* 80AFEE34  41 82 00 28 */	beq lbl_80AFEE5C
/* 80AFEE38  C0 05 05 50 */	lfs f0, 0x550(r5)
/* 80AFEE3C  D0 1F 08 78 */	stfs f0, 0x878(r31)
/* 80AFEE40  C0 05 05 54 */	lfs f0, 0x554(r5)
/* 80AFEE44  D0 1F 08 7C */	stfs f0, 0x87c(r31)
/* 80AFEE48  C0 05 05 58 */	lfs f0, 0x558(r5)
/* 80AFEE4C  D0 1F 08 80 */	stfs f0, 0x880(r31)
/* 80AFEE50  38 1F 08 78 */	addi r0, r31, 0x878
/* 80AFEE54  90 1F 0C 0C */	stw r0, 0xc0c(r31)
/* 80AFEE58  48 00 00 0C */	b lbl_80AFEE64
lbl_80AFEE5C:
/* 80AFEE5C  38 00 00 00 */	li r0, 0
/* 80AFEE60  90 1F 0C 0C */	stw r0, 0xc0c(r31)
lbl_80AFEE64:
/* 80AFEE64  D0 A1 00 08 */	stfs f5, 8(r1)
/* 80AFEE68  D0 C1 00 0C */	stfs f6, 0xc(r1)
/* 80AFEE6C  D0 E1 00 10 */	stfs f7, 0x10(r1)
/* 80AFEE70  D1 01 00 14 */	stfs f8, 0x14(r1)
/* 80AFEE74  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 80AFEE78  C0 A4 00 84 */	lfs f5, 0x84(r4)
/* 80AFEE7C  FC C0 28 90 */	fmr f6, f5
/* 80AFEE80  FC E0 28 90 */	fmr f7, f5
/* 80AFEE84  FD 00 28 90 */	fmr f8, f5
/* 80AFEE88  A8 9F 08 F2 */	lha r4, 0x8f2(r31)
/* 80AFEE8C  38 A1 00 24 */	addi r5, r1, 0x24
/* 80AFEE90  4B 65 22 29 */	bl setParam__15daNpcF_Lookat_cFffffffffffffsP4cXyz
/* 80AFEE94  38 7F 0B DC */	addi r3, r31, 0xbdc
/* 80AFEE98  7F E4 FB 78 */	mr r4, r31
/* 80AFEE9C  38 BE 00 24 */	addi r5, r30, 0x24
/* 80AFEEA0  38 C1 00 18 */	addi r6, r1, 0x18
/* 80AFEEA4  38 E0 00 00 */	li r7, 0
/* 80AFEEA8  7F A8 EB 78 */	mr r8, r29
/* 80AFEEAC  39 20 00 00 */	li r9, 0
/* 80AFEEB0  4B 65 24 A1 */	bl calc__15daNpcF_Lookat_cFP10fopAc_ac_cPA4_fPP5csXyziii
/* 80AFEEB4  39 61 00 60 */	addi r11, r1, 0x60
/* 80AFEEB8  4B 86 33 71 */	bl _restgpr_29
/* 80AFEEBC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80AFEEC0  7C 08 03 A6 */	mtlr r0
/* 80AFEEC4  38 21 00 60 */	addi r1, r1, 0x60
/* 80AFEEC8  4E 80 00 20 */	blr 
