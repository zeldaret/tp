lbl_80BE9610:
/* 80BE9610  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE9614  7C 08 02 A6 */	mflr r0
/* 80BE9618  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE961C  3C 80 80 BF */	lis r4, cNullVec__6Z2Calc@ha
/* 80BE9620  38 E4 9A BC */	addi r7, r4, cNullVec__6Z2Calc@l
/* 80BE9624  3C 80 80 BF */	lis r4, data_80BE9C30@ha
/* 80BE9628  38 C4 9C 30 */	addi r6, r4, data_80BE9C30@l
/* 80BE962C  88 06 00 00 */	lbz r0, 0(r6)
/* 80BE9630  7C 00 07 75 */	extsb. r0, r0
/* 80BE9634  40 82 00 58 */	bne lbl_80BE968C
/* 80BE9638  80 87 00 84 */	lwz r4, 0x84(r7)
/* 80BE963C  80 07 00 88 */	lwz r0, 0x88(r7)
/* 80BE9640  90 87 00 A8 */	stw r4, 0xa8(r7)
/* 80BE9644  90 07 00 AC */	stw r0, 0xac(r7)
/* 80BE9648  80 07 00 8C */	lwz r0, 0x8c(r7)
/* 80BE964C  90 07 00 B0 */	stw r0, 0xb0(r7)
/* 80BE9650  38 A7 00 A8 */	addi r5, r7, 0xa8
/* 80BE9654  80 87 00 90 */	lwz r4, 0x90(r7)
/* 80BE9658  80 07 00 94 */	lwz r0, 0x94(r7)
/* 80BE965C  90 85 00 0C */	stw r4, 0xc(r5)
/* 80BE9660  90 05 00 10 */	stw r0, 0x10(r5)
/* 80BE9664  80 07 00 98 */	lwz r0, 0x98(r7)
/* 80BE9668  90 05 00 14 */	stw r0, 0x14(r5)
/* 80BE966C  80 87 00 9C */	lwz r4, 0x9c(r7)
/* 80BE9670  80 07 00 A0 */	lwz r0, 0xa0(r7)
/* 80BE9674  90 85 00 18 */	stw r4, 0x18(r5)
/* 80BE9678  90 05 00 1C */	stw r0, 0x1c(r5)
/* 80BE967C  80 07 00 A4 */	lwz r0, 0xa4(r7)
/* 80BE9680  90 05 00 20 */	stw r0, 0x20(r5)
/* 80BE9684  38 00 00 01 */	li r0, 1
/* 80BE9688  98 06 00 00 */	stb r0, 0(r6)
lbl_80BE968C:
/* 80BE968C  88 03 09 70 */	lbz r0, 0x970(r3)
/* 80BE9690  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80BE9694  39 87 00 A8 */	addi r12, r7, 0xa8
/* 80BE9698  7D 8C 02 14 */	add r12, r12, r0
/* 80BE969C  4B 77 89 E8 */	b __ptmf_scall
/* 80BE96A0  60 00 00 00 */	nop 
/* 80BE96A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE96A8  7C 08 03 A6 */	mtlr r0
/* 80BE96AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE96B0  4E 80 00 20 */	blr 
