lbl_80CDC65C:
/* 80CDC65C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CDC660  7C 08 02 A6 */	mflr r0
/* 80CDC664  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CDC668  3C 80 80 CE */	lis r4, cNullVec__6Z2Calc@ha /* 0x80CDCCC4@ha */
/* 80CDC66C  38 E4 CC C4 */	addi r7, r4, cNullVec__6Z2Calc@l /* 0x80CDCCC4@l */
/* 80CDC670  3C 80 80 CE */	lis r4, data_80CDCDF8@ha /* 0x80CDCDF8@ha */
/* 80CDC674  38 C4 CD F8 */	addi r6, r4, data_80CDCDF8@l /* 0x80CDCDF8@l */
/* 80CDC678  88 06 00 00 */	lbz r0, 0(r6)
/* 80CDC67C  7C 00 07 75 */	extsb. r0, r0
/* 80CDC680  40 82 00 58 */	bne lbl_80CDC6D8
/* 80CDC684  80 87 00 70 */	lwz r4, 0x70(r7)
/* 80CDC688  80 07 00 74 */	lwz r0, 0x74(r7)
/* 80CDC68C  90 87 00 94 */	stw r4, 0x94(r7)
/* 80CDC690  90 07 00 98 */	stw r0, 0x98(r7)
/* 80CDC694  80 07 00 78 */	lwz r0, 0x78(r7)
/* 80CDC698  90 07 00 9C */	stw r0, 0x9c(r7)
/* 80CDC69C  38 A7 00 94 */	addi r5, r7, 0x94
/* 80CDC6A0  80 87 00 7C */	lwz r4, 0x7c(r7)
/* 80CDC6A4  80 07 00 80 */	lwz r0, 0x80(r7)
/* 80CDC6A8  90 85 00 0C */	stw r4, 0xc(r5)
/* 80CDC6AC  90 05 00 10 */	stw r0, 0x10(r5)
/* 80CDC6B0  80 07 00 84 */	lwz r0, 0x84(r7)
/* 80CDC6B4  90 05 00 14 */	stw r0, 0x14(r5)
/* 80CDC6B8  80 87 00 88 */	lwz r4, 0x88(r7)
/* 80CDC6BC  80 07 00 8C */	lwz r0, 0x8c(r7)
/* 80CDC6C0  90 85 00 18 */	stw r4, 0x18(r5)
/* 80CDC6C4  90 05 00 1C */	stw r0, 0x1c(r5)
/* 80CDC6C8  80 07 00 90 */	lwz r0, 0x90(r7)
/* 80CDC6CC  90 05 00 20 */	stw r0, 0x20(r5)
/* 80CDC6D0  38 00 00 01 */	li r0, 1
/* 80CDC6D4  98 06 00 00 */	stb r0, 0(r6)
lbl_80CDC6D8:
/* 80CDC6D8  88 03 05 EA */	lbz r0, 0x5ea(r3)
/* 80CDC6DC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80CDC6E0  39 87 00 94 */	addi r12, r7, 0x94
/* 80CDC6E4  7D 8C 02 14 */	add r12, r12, r0
/* 80CDC6E8  4B 68 59 9D */	bl __ptmf_scall
/* 80CDC6EC  60 00 00 00 */	nop 
/* 80CDC6F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CDC6F4  7C 08 03 A6 */	mtlr r0
/* 80CDC6F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CDC6FC  4E 80 00 20 */	blr 
