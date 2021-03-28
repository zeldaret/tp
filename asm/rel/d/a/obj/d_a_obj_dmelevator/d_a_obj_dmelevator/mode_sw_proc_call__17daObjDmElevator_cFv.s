lbl_80BDE960:
/* 80BDE960  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDE964  7C 08 02 A6 */	mflr r0
/* 80BDE968  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDE96C  3C 80 80 BE */	lis r4, cNullVec__6Z2Calc@ha
/* 80BDE970  38 E4 F9 44 */	addi r7, r4, cNullVec__6Z2Calc@l
/* 80BDE974  3C 80 80 BE */	lis r4, struct_80BDFBDC+0x1@ha
/* 80BDE978  38 C4 FB DD */	addi r6, r4, struct_80BDFBDC+0x1@l
/* 80BDE97C  88 06 00 00 */	lbz r0, 0(r6)
/* 80BDE980  7C 00 07 75 */	extsb. r0, r0
/* 80BDE984  40 82 00 70 */	bne lbl_80BDE9F4
/* 80BDE988  80 87 00 7C */	lwz r4, 0x7c(r7)
/* 80BDE98C  80 07 00 80 */	lwz r0, 0x80(r7)
/* 80BDE990  90 87 00 AC */	stw r4, 0xac(r7)
/* 80BDE994  90 07 00 B0 */	stw r0, 0xb0(r7)
/* 80BDE998  80 07 00 84 */	lwz r0, 0x84(r7)
/* 80BDE99C  90 07 00 B4 */	stw r0, 0xb4(r7)
/* 80BDE9A0  38 A7 00 AC */	addi r5, r7, 0xac
/* 80BDE9A4  80 87 00 88 */	lwz r4, 0x88(r7)
/* 80BDE9A8  80 07 00 8C */	lwz r0, 0x8c(r7)
/* 80BDE9AC  90 85 00 0C */	stw r4, 0xc(r5)
/* 80BDE9B0  90 05 00 10 */	stw r0, 0x10(r5)
/* 80BDE9B4  80 07 00 90 */	lwz r0, 0x90(r7)
/* 80BDE9B8  90 05 00 14 */	stw r0, 0x14(r5)
/* 80BDE9BC  80 87 00 94 */	lwz r4, 0x94(r7)
/* 80BDE9C0  80 07 00 98 */	lwz r0, 0x98(r7)
/* 80BDE9C4  90 85 00 18 */	stw r4, 0x18(r5)
/* 80BDE9C8  90 05 00 1C */	stw r0, 0x1c(r5)
/* 80BDE9CC  80 07 00 9C */	lwz r0, 0x9c(r7)
/* 80BDE9D0  90 05 00 20 */	stw r0, 0x20(r5)
/* 80BDE9D4  80 87 00 A0 */	lwz r4, 0xa0(r7)
/* 80BDE9D8  80 07 00 A4 */	lwz r0, 0xa4(r7)
/* 80BDE9DC  90 85 00 24 */	stw r4, 0x24(r5)
/* 80BDE9E0  90 05 00 28 */	stw r0, 0x28(r5)
/* 80BDE9E4  80 07 00 A8 */	lwz r0, 0xa8(r7)
/* 80BDE9E8  90 05 00 2C */	stw r0, 0x2c(r5)
/* 80BDE9EC  38 00 00 01 */	li r0, 1
/* 80BDE9F0  98 06 00 00 */	stb r0, 0(r6)
lbl_80BDE9F4:
/* 80BDE9F4  88 03 06 28 */	lbz r0, 0x628(r3)
/* 80BDE9F8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80BDE9FC  39 87 00 AC */	addi r12, r7, 0xac
/* 80BDEA00  7D 8C 02 14 */	add r12, r12, r0
/* 80BDEA04  4B 78 36 80 */	b __ptmf_scall
/* 80BDEA08  60 00 00 00 */	nop 
/* 80BDEA0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDEA10  7C 08 03 A6 */	mtlr r0
/* 80BDEA14  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDEA18  4E 80 00 20 */	blr 
