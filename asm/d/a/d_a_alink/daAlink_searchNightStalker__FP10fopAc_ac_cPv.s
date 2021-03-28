lbl_800D0D38:
/* 800D0D38  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800D0D3C  7C 08 02 A6 */	mflr r0
/* 800D0D40  90 01 00 34 */	stw r0, 0x34(r1)
/* 800D0D44  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800D0D48  93 C1 00 28 */	stw r30, 0x28(r1)
/* 800D0D4C  7C 7E 1B 78 */	mr r30, r3
/* 800D0D50  A8 03 00 08 */	lha r0, 8(r3)
/* 800D0D54  2C 00 01 B4 */	cmpwi r0, 0x1b4
/* 800D0D58  40 82 00 7C */	bne lbl_800D0DD4
/* 800D0D5C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 800D0D60  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 800D0D64  83 E3 5D B4 */	lwz r31, 0x5db4(r3)
/* 800D0D68  C0 5F 04 D8 */	lfs f2, 0x4d8(r31)
/* 800D0D6C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 800D0D70  D0 01 00 08 */	stfs f0, 8(r1)
/* 800D0D74  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800D0D78  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 800D0D7C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 800D0D80  C0 5E 04 D8 */	lfs f2, 0x4d8(r30)
/* 800D0D84  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 800D0D88  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 800D0D8C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 800D0D90  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 800D0D94  38 61 00 08 */	addi r3, r1, 8
/* 800D0D98  38 81 00 14 */	addi r4, r1, 0x14
/* 800D0D9C  48 27 66 01 */	bl PSVECSquareDistance
/* 800D0DA0  C0 02 92 CC */	lfs f0, lit_6237(r2)
/* 800D0DA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D0DA8  40 80 00 44 */	bge lbl_800D0DEC
/* 800D0DAC  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 800D0DB0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 800D0DB4  EC 01 00 28 */	fsubs f0, f1, f0
/* 800D0DB8  FC 00 02 10 */	fabs f0, f0
/* 800D0DBC  FC 20 00 18 */	frsp f1, f0
/* 800D0DC0  C0 02 92 D0 */	lfs f0, lit_6238(r2)
/* 800D0DC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800D0DC8  40 80 00 24 */	bge lbl_800D0DEC
/* 800D0DCC  7F C3 F3 78 */	mr r3, r30
/* 800D0DD0  48 00 00 20 */	b lbl_800D0DF0
lbl_800D0DD4:
/* 800D0DD4  2C 00 02 0E */	cmpwi r0, 0x20e
/* 800D0DD8  40 82 00 14 */	bne lbl_800D0DEC
/* 800D0DDC  88 1E 27 40 */	lbz r0, 0x2740(r30)
/* 800D0DE0  28 00 00 00 */	cmplwi r0, 0
/* 800D0DE4  41 82 00 08 */	beq lbl_800D0DEC
/* 800D0DE8  48 00 00 08 */	b lbl_800D0DF0
lbl_800D0DEC:
/* 800D0DEC  38 60 00 00 */	li r3, 0
lbl_800D0DF0:
/* 800D0DF0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800D0DF4  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800D0DF8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800D0DFC  7C 08 03 A6 */	mtlr r0
/* 800D0E00  38 21 00 30 */	addi r1, r1, 0x30
/* 800D0E04  4E 80 00 20 */	blr 
