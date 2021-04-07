lbl_80CF6144:
/* 80CF6144  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF6148  7C 08 02 A6 */	mflr r0
/* 80CF614C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF6150  3C 80 80 CF */	lis r4, cNullVec__6Z2Calc@ha /* 0x80CF6D90@ha */
/* 80CF6154  38 E4 6D 90 */	addi r7, r4, cNullVec__6Z2Calc@l /* 0x80CF6D90@l */
/* 80CF6158  3C 80 80 CF */	lis r4, data_80CF6F18@ha /* 0x80CF6F18@ha */
/* 80CF615C  38 C4 6F 18 */	addi r6, r4, data_80CF6F18@l /* 0x80CF6F18@l */
/* 80CF6160  88 06 00 00 */	lbz r0, 0(r6)
/* 80CF6164  7C 00 07 75 */	extsb. r0, r0
/* 80CF6168  40 82 00 70 */	bne lbl_80CF61D8
/* 80CF616C  80 87 00 2C */	lwz r4, 0x2c(r7)
/* 80CF6170  80 07 00 30 */	lwz r0, 0x30(r7)
/* 80CF6174  90 87 00 5C */	stw r4, 0x5c(r7)
/* 80CF6178  90 07 00 60 */	stw r0, 0x60(r7)
/* 80CF617C  80 07 00 34 */	lwz r0, 0x34(r7)
/* 80CF6180  90 07 00 64 */	stw r0, 0x64(r7)
/* 80CF6184  38 A7 00 5C */	addi r5, r7, 0x5c
/* 80CF6188  80 87 00 38 */	lwz r4, 0x38(r7)
/* 80CF618C  80 07 00 3C */	lwz r0, 0x3c(r7)
/* 80CF6190  90 85 00 0C */	stw r4, 0xc(r5)
/* 80CF6194  90 05 00 10 */	stw r0, 0x10(r5)
/* 80CF6198  80 07 00 40 */	lwz r0, 0x40(r7)
/* 80CF619C  90 05 00 14 */	stw r0, 0x14(r5)
/* 80CF61A0  80 87 00 44 */	lwz r4, 0x44(r7)
/* 80CF61A4  80 07 00 48 */	lwz r0, 0x48(r7)
/* 80CF61A8  90 85 00 18 */	stw r4, 0x18(r5)
/* 80CF61AC  90 05 00 1C */	stw r0, 0x1c(r5)
/* 80CF61B0  80 07 00 4C */	lwz r0, 0x4c(r7)
/* 80CF61B4  90 05 00 20 */	stw r0, 0x20(r5)
/* 80CF61B8  80 87 00 50 */	lwz r4, 0x50(r7)
/* 80CF61BC  80 07 00 54 */	lwz r0, 0x54(r7)
/* 80CF61C0  90 85 00 24 */	stw r4, 0x24(r5)
/* 80CF61C4  90 05 00 28 */	stw r0, 0x28(r5)
/* 80CF61C8  80 07 00 58 */	lwz r0, 0x58(r7)
/* 80CF61CC  90 05 00 2C */	stw r0, 0x2c(r5)
/* 80CF61D0  38 00 00 01 */	li r0, 1
/* 80CF61D4  98 06 00 00 */	stb r0, 0(r6)
lbl_80CF61D8:
/* 80CF61D8  88 03 05 7F */	lbz r0, 0x57f(r3)
/* 80CF61DC  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80CF61E0  39 87 00 5C */	addi r12, r7, 0x5c
/* 80CF61E4  7D 8C 02 14 */	add r12, r12, r0
/* 80CF61E8  4B 66 BE 9D */	bl __ptmf_scall
/* 80CF61EC  60 00 00 00 */	nop 
/* 80CF61F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF61F4  7C 08 03 A6 */	mtlr r0
/* 80CF61F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF61FC  4E 80 00 20 */	blr 
