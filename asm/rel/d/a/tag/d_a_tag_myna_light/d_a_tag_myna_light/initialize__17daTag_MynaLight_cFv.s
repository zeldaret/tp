lbl_80D5D160:
/* 80D5D160  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5D164  7C 08 02 A6 */	mflr r0
/* 80D5D168  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5D16C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D5D170  93 C1 00 08 */	stw r30, 8(r1)
/* 80D5D174  7C 7E 1B 78 */	mr r30, r3
/* 80D5D178  3C 80 80 D6 */	lis r4, lit_3694@ha /* 0x80D5D300@ha */
/* 80D5D17C  3B E4 D3 00 */	addi r31, r4, lit_3694@l /* 0x80D5D300@l */
/* 80D5D180  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80D5D184  C0 5F 00 3C */	lfs f2, 0x3c(r31)
/* 80D5D188  FC 60 08 90 */	fmr f3, f1
/* 80D5D18C  C0 9F 00 40 */	lfs f4, 0x40(r31)
/* 80D5D190  C0 BF 00 44 */	lfs f5, 0x44(r31)
/* 80D5D194  FC C0 20 90 */	fmr f6, f4
/* 80D5D198  4B 2B D3 B1 */	bl fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80D5D19C  38 80 00 00 */	li r4, 0
/* 80D5D1A0  90 9E 05 5C */	stw r4, 0x55c(r30)
/* 80D5D1A4  A8 1E 04 B6 */	lha r0, 0x4b6(r30)
/* 80D5D1A8  B0 9E 04 DC */	sth r4, 0x4dc(r30)
/* 80D5D1AC  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 80D5D1B0  B0 9E 04 E0 */	sth r4, 0x4e0(r30)
/* 80D5D1B4  A8 1E 04 DC */	lha r0, 0x4dc(r30)
/* 80D5D1B8  B0 1E 04 E4 */	sth r0, 0x4e4(r30)
/* 80D5D1BC  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 80D5D1C0  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80D5D1C4  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 80D5D1C8  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 80D5D1CC  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80D5D1D0  D0 1E 05 6C */	stfs f0, 0x56c(r30)
/* 80D5D1D4  98 9E 05 79 */	stb r4, 0x579(r30)
/* 80D5D1D8  98 9E 05 78 */	stb r4, 0x578(r30)
/* 80D5D1DC  7C 83 23 78 */	mr r3, r4
/* 80D5D1E0  38 00 00 02 */	li r0, 2
/* 80D5D1E4  7C 09 03 A6 */	mtctr r0
lbl_80D5D1E8:
/* 80D5D1E8  38 03 05 70 */	addi r0, r3, 0x570
/* 80D5D1EC  7C 9E 01 2E */	stwx r4, r30, r0
/* 80D5D1F0  38 63 00 04 */	addi r3, r3, 4
/* 80D5D1F4  42 00 FF F4 */	bdnz lbl_80D5D1E8
/* 80D5D1F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D5D1FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D5D200  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5D204  7C 08 03 A6 */	mtlr r0
/* 80D5D208  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5D20C  4E 80 00 20 */	blr 
