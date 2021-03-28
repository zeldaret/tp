lbl_8084B134:
/* 8084B134  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8084B138  7C 08 02 A6 */	mflr r0
/* 8084B13C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8084B140  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8084B144  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8084B148  7C 9E 23 78 */	mr r30, r4
/* 8084B14C  3C 60 80 85 */	lis r3, lit_3929@ha
/* 8084B150  3B E3 4B 04 */	addi r31, r3, lit_3929@l
/* 8084B154  C0 1F 00 C8 */	lfs f0, 0xc8(r31)
/* 8084B158  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8084B15C  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 8084B160  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8084B164  C0 1F 00 CC */	lfs f0, 0xcc(r31)
/* 8084B168  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8084B16C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8084B170  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8084B174  38 80 07 70 */	li r4, 0x770
/* 8084B178  4B 7C 12 64 */	b mDoMtx_YrotS__FPA4_fs
/* 8084B17C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8084B180  FC 20 00 50 */	fneg f1, f0
/* 8084B184  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8084B188  FC 40 00 50 */	fneg f2, f0
/* 8084B18C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8084B190  FC 60 00 50 */	fneg f3, f0
/* 8084B194  4B 7C 1C 08 */	b transM__14mDoMtx_stack_cFfff
/* 8084B198  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8084B19C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8084B1A0  7F C4 F3 78 */	mr r4, r30
/* 8084B1A4  38 A1 00 08 */	addi r5, r1, 8
/* 8084B1A8  4B AF BB C4 */	b PSMTXMultVec
/* 8084B1AC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8084B1B0  FC 00 02 10 */	fabs f0, f0
/* 8084B1B4  FC 20 00 18 */	frsp f1, f0
/* 8084B1B8  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8084B1BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8084B1C0  7C 00 00 26 */	mfcr r0
/* 8084B1C4  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8084B1C8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8084B1CC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8084B1D0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8084B1D4  7C 08 03 A6 */	mtlr r0
/* 8084B1D8  38 21 00 30 */	addi r1, r1, 0x30
/* 8084B1DC  4E 80 00 20 */	blr 
