lbl_80C9D41C:
/* 80C9D41C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C9D420  7C 08 02 A6 */	mflr r0
/* 80C9D424  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C9D428  3C 80 80 CA */	lis r4, cNullVec__6Z2Calc@ha
/* 80C9D42C  38 E4 E9 20 */	addi r7, r4, cNullVec__6Z2Calc@l
/* 80C9D430  3C 80 80 CA */	lis r4, struct_80C9EAA8+0x0@ha
/* 80C9D434  38 C4 EA A8 */	addi r6, r4, struct_80C9EAA8+0x0@l
/* 80C9D438  88 06 00 00 */	lbz r0, 0(r6)
/* 80C9D43C  7C 00 07 75 */	extsb. r0, r0
/* 80C9D440  40 82 00 70 */	bne lbl_80C9D4B0
/* 80C9D444  80 87 00 28 */	lwz r4, 0x28(r7)
/* 80C9D448  80 07 00 2C */	lwz r0, 0x2c(r7)
/* 80C9D44C  90 87 00 58 */	stw r4, 0x58(r7)
/* 80C9D450  90 07 00 5C */	stw r0, 0x5c(r7)
/* 80C9D454  80 07 00 30 */	lwz r0, 0x30(r7)
/* 80C9D458  90 07 00 60 */	stw r0, 0x60(r7)
/* 80C9D45C  38 A7 00 58 */	addi r5, r7, 0x58
/* 80C9D460  80 87 00 34 */	lwz r4, 0x34(r7)
/* 80C9D464  80 07 00 38 */	lwz r0, 0x38(r7)
/* 80C9D468  90 85 00 0C */	stw r4, 0xc(r5)
/* 80C9D46C  90 05 00 10 */	stw r0, 0x10(r5)
/* 80C9D470  80 07 00 3C */	lwz r0, 0x3c(r7)
/* 80C9D474  90 05 00 14 */	stw r0, 0x14(r5)
/* 80C9D478  80 87 00 40 */	lwz r4, 0x40(r7)
/* 80C9D47C  80 07 00 44 */	lwz r0, 0x44(r7)
/* 80C9D480  90 85 00 18 */	stw r4, 0x18(r5)
/* 80C9D484  90 05 00 1C */	stw r0, 0x1c(r5)
/* 80C9D488  80 07 00 48 */	lwz r0, 0x48(r7)
/* 80C9D48C  90 05 00 20 */	stw r0, 0x20(r5)
/* 80C9D490  80 87 00 4C */	lwz r4, 0x4c(r7)
/* 80C9D494  80 07 00 50 */	lwz r0, 0x50(r7)
/* 80C9D498  90 85 00 24 */	stw r4, 0x24(r5)
/* 80C9D49C  90 05 00 28 */	stw r0, 0x28(r5)
/* 80C9D4A0  80 07 00 54 */	lwz r0, 0x54(r7)
/* 80C9D4A4  90 05 00 2C */	stw r0, 0x2c(r5)
/* 80C9D4A8  38 00 00 01 */	li r0, 1
/* 80C9D4AC  98 06 00 00 */	stb r0, 0(r6)
lbl_80C9D4B0:
/* 80C9D4B0  88 03 06 3D */	lbz r0, 0x63d(r3)
/* 80C9D4B4  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80C9D4B8  39 87 00 58 */	addi r12, r7, 0x58
/* 80C9D4BC  7D 8C 02 14 */	add r12, r12, r0
/* 80C9D4C0  4B 6C 4B C4 */	b __ptmf_scall
/* 80C9D4C4  60 00 00 00 */	nop 
/* 80C9D4C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C9D4CC  7C 08 03 A6 */	mtlr r0
/* 80C9D4D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C9D4D4  4E 80 00 20 */	blr 
