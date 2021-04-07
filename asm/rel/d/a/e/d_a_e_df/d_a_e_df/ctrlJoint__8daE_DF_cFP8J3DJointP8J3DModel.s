lbl_806A7CE0:
/* 806A7CE0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806A7CE4  7C 08 02 A6 */	mflr r0
/* 806A7CE8  90 01 00 44 */	stw r0, 0x44(r1)
/* 806A7CEC  39 61 00 40 */	addi r11, r1, 0x40
/* 806A7CF0  4B CB A4 E9 */	bl _savegpr_28
/* 806A7CF4  7C 7D 1B 78 */	mr r29, r3
/* 806A7CF8  7C BE 2B 78 */	mr r30, r5
/* 806A7CFC  A3 84 00 14 */	lhz r28, 0x14(r4)
/* 806A7D00  80 65 00 84 */	lwz r3, 0x84(r5)
/* 806A7D04  80 03 00 0C */	lwz r0, 0xc(r3)
/* 806A7D08  1F FC 00 30 */	mulli r31, r28, 0x30
/* 806A7D0C  7C 60 FA 14 */	add r3, r0, r31
/* 806A7D10  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806A7D14  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806A7D18  4B C9 E7 99 */	bl PSMTXCopy
/* 806A7D1C  2C 1C 00 01 */	cmpwi r28, 1
/* 806A7D20  41 82 00 A8 */	beq lbl_806A7DC8
/* 806A7D24  40 80 00 C4 */	bge lbl_806A7DE8
/* 806A7D28  2C 1C 00 00 */	cmpwi r28, 0
/* 806A7D2C  40 80 00 08 */	bge lbl_806A7D34
/* 806A7D30  48 00 00 B8 */	b lbl_806A7DE8
lbl_806A7D34:
/* 806A7D34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806A7D38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806A7D3C  3C 80 80 6B */	lis r4, lit_4096@ha /* 0x806A9FAC@ha */
/* 806A7D40  C0 44 9F AC */	lfs f2, lit_4096@l(r4)  /* 0x806A9FAC@l */
/* 806A7D44  A8 1D 05 B0 */	lha r0, 0x5b0(r29)
/* 806A7D48  3C 80 80 6B */	lis r4, lit_4098@ha /* 0x806A9FB0@ha */
/* 806A7D4C  C8 24 9F B0 */	lfd f1, lit_4098@l(r4)  /* 0x806A9FB0@l */
/* 806A7D50  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806A7D54  90 01 00 0C */	stw r0, 0xc(r1)
/* 806A7D58  3C 00 43 30 */	lis r0, 0x4330
/* 806A7D5C  90 01 00 08 */	stw r0, 8(r1)
/* 806A7D60  C8 01 00 08 */	lfd f0, 8(r1)
/* 806A7D64  EC 00 08 28 */	fsubs f0, f0, f1
/* 806A7D68  EC 02 00 32 */	fmuls f0, f2, f0
/* 806A7D6C  FC 00 00 1E */	fctiwz f0, f0
/* 806A7D70  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 806A7D74  80 81 00 14 */	lwz r4, 0x14(r1)
/* 806A7D78  4B 96 46 BD */	bl mDoMtx_YrotM__FPA4_fs
/* 806A7D7C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806A7D80  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806A7D84  3C 80 80 6B */	lis r4, lit_4096@ha /* 0x806A9FAC@ha */
/* 806A7D88  C0 44 9F AC */	lfs f2, lit_4096@l(r4)  /* 0x806A9FAC@l */
/* 806A7D8C  A8 1D 05 B4 */	lha r0, 0x5b4(r29)
/* 806A7D90  3C 80 80 6B */	lis r4, lit_4098@ha /* 0x806A9FB0@ha */
/* 806A7D94  C8 24 9F B0 */	lfd f1, lit_4098@l(r4)  /* 0x806A9FB0@l */
/* 806A7D98  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806A7D9C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 806A7DA0  3C 00 43 30 */	lis r0, 0x4330
/* 806A7DA4  90 01 00 18 */	stw r0, 0x18(r1)
/* 806A7DA8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 806A7DAC  EC 00 08 28 */	fsubs f0, f0, f1
/* 806A7DB0  EC 02 00 32 */	fmuls f0, f2, f0
/* 806A7DB4  FC 00 00 1E */	fctiwz f0, f0
/* 806A7DB8  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 806A7DBC  80 81 00 24 */	lwz r4, 0x24(r1)
/* 806A7DC0  4B 96 47 0D */	bl mDoMtx_ZrotM__FPA4_fs
/* 806A7DC4  48 00 00 24 */	b lbl_806A7DE8
lbl_806A7DC8:
/* 806A7DC8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806A7DCC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806A7DD0  A8 9D 05 B0 */	lha r4, 0x5b0(r29)
/* 806A7DD4  4B 96 46 61 */	bl mDoMtx_YrotM__FPA4_fs
/* 806A7DD8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806A7DDC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806A7DE0  A8 9D 05 B4 */	lha r4, 0x5b4(r29)
/* 806A7DE4  4B 96 46 E9 */	bl mDoMtx_ZrotM__FPA4_fs
lbl_806A7DE8:
/* 806A7DE8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806A7DEC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806A7DF0  80 9E 00 84 */	lwz r4, 0x84(r30)
/* 806A7DF4  80 04 00 0C */	lwz r0, 0xc(r4)
/* 806A7DF8  7C 80 FA 14 */	add r4, r0, r31
/* 806A7DFC  4B C9 E6 B5 */	bl PSMTXCopy
/* 806A7E00  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806A7E04  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806A7E08  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha /* 0x80434BE4@ha */
/* 806A7E0C  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l /* 0x80434BE4@l */
/* 806A7E10  4B C9 E6 A1 */	bl PSMTXCopy
/* 806A7E14  38 60 00 01 */	li r3, 1
/* 806A7E18  39 61 00 40 */	addi r11, r1, 0x40
/* 806A7E1C  4B CB A4 09 */	bl _restgpr_28
/* 806A7E20  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806A7E24  7C 08 03 A6 */	mtlr r0
/* 806A7E28  38 21 00 40 */	addi r1, r1, 0x40
/* 806A7E2C  4E 80 00 20 */	blr 
