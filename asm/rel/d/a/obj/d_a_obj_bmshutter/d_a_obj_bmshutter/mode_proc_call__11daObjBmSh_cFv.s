lbl_80BBA26C:
/* 80BBA26C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BBA270  7C 08 02 A6 */	mflr r0
/* 80BBA274  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BBA278  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80BBA27C  7C 7F 1B 78 */	mr r31, r3
/* 80BBA280  3C 60 80 BC */	lis r3, cNullVec__6Z2Calc@ha /* 0x80BBA82C@ha */
/* 80BBA284  38 C3 A8 2C */	addi r6, r3, cNullVec__6Z2Calc@l /* 0x80BBA82C@l */
/* 80BBA288  3C 60 80 BC */	lis r3, struct_80BBA970+0x1@ha /* 0x80BBA971@ha */
/* 80BBA28C  38 A3 A9 71 */	addi r5, r3, struct_80BBA970+0x1@l /* 0x80BBA971@l */
/* 80BBA290  88 05 00 00 */	lbz r0, 0(r5)
/* 80BBA294  7C 00 07 75 */	extsb. r0, r0
/* 80BBA298  40 82 00 58 */	bne lbl_80BBA2F0
/* 80BBA29C  80 66 00 84 */	lwz r3, 0x84(r6)
/* 80BBA2A0  80 06 00 88 */	lwz r0, 0x88(r6)
/* 80BBA2A4  90 66 00 A8 */	stw r3, 0xa8(r6)
/* 80BBA2A8  90 06 00 AC */	stw r0, 0xac(r6)
/* 80BBA2AC  80 06 00 8C */	lwz r0, 0x8c(r6)
/* 80BBA2B0  90 06 00 B0 */	stw r0, 0xb0(r6)
/* 80BBA2B4  38 86 00 A8 */	addi r4, r6, 0xa8
/* 80BBA2B8  80 66 00 90 */	lwz r3, 0x90(r6)
/* 80BBA2BC  80 06 00 94 */	lwz r0, 0x94(r6)
/* 80BBA2C0  90 64 00 0C */	stw r3, 0xc(r4)
/* 80BBA2C4  90 04 00 10 */	stw r0, 0x10(r4)
/* 80BBA2C8  80 06 00 98 */	lwz r0, 0x98(r6)
/* 80BBA2CC  90 04 00 14 */	stw r0, 0x14(r4)
/* 80BBA2D0  80 66 00 9C */	lwz r3, 0x9c(r6)
/* 80BBA2D4  80 06 00 A0 */	lwz r0, 0xa0(r6)
/* 80BBA2D8  90 64 00 18 */	stw r3, 0x18(r4)
/* 80BBA2DC  90 04 00 1C */	stw r0, 0x1c(r4)
/* 80BBA2E0  80 06 00 A4 */	lwz r0, 0xa4(r6)
/* 80BBA2E4  90 04 00 20 */	stw r0, 0x20(r4)
/* 80BBA2E8  38 00 00 01 */	li r0, 1
/* 80BBA2EC  98 05 00 00 */	stb r0, 0(r5)
lbl_80BBA2F0:
/* 80BBA2F0  7F E3 FB 78 */	mr r3, r31
/* 80BBA2F4  88 1F 05 B0 */	lbz r0, 0x5b0(r31)
/* 80BBA2F8  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80BBA2FC  39 86 00 A8 */	addi r12, r6, 0xa8
/* 80BBA300  7D 8C 02 14 */	add r12, r12, r0
/* 80BBA304  4B 7A 7D 81 */	bl __ptmf_scall
/* 80BBA308  60 00 00 00 */	nop 
/* 80BBA30C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80BBA310  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80BBA314  80 1F 05 C4 */	lwz r0, 0x5c4(r31)
/* 80BBA318  1C 00 30 00 */	mulli r0, r0, 0x3000
/* 80BBA31C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BBA320  7C 64 02 14 */	add r3, r4, r0
/* 80BBA324  C0 23 00 04 */	lfs f1, 4(r3)
/* 80BBA328  C0 1F 05 B8 */	lfs f0, 0x5b8(r31)
/* 80BBA32C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80BBA330  FC 00 00 1E */	fctiwz f0, f0
/* 80BBA334  D8 01 00 08 */	stfd f0, 8(r1)
/* 80BBA338  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80BBA33C  B0 1F 05 BC */	sth r0, 0x5bc(r31)
/* 80BBA340  80 1F 05 C4 */	lwz r0, 0x5c4(r31)
/* 80BBA344  1C 00 30 00 */	mulli r0, r0, 0x3000
/* 80BBA348  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80BBA34C  7C 24 04 2E */	lfsx f1, r4, r0
/* 80BBA350  C0 1F 05 B8 */	lfs f0, 0x5b8(r31)
/* 80BBA354  EC 00 00 72 */	fmuls f0, f0, f1
/* 80BBA358  FC 00 00 1E */	fctiwz f0, f0
/* 80BBA35C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80BBA360  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BBA364  B0 1F 05 C0 */	sth r0, 0x5c0(r31)
/* 80BBA368  38 7F 05 B8 */	addi r3, r31, 0x5b8
/* 80BBA36C  3C 80 80 BC */	lis r4, lit_3908@ha /* 0x80BBA810@ha */
/* 80BBA370  C0 24 A8 10 */	lfs f1, lit_3908@l(r4)  /* 0x80BBA810@l */
/* 80BBA374  3C 80 80 BC */	lis r4, lit_3909@ha /* 0x80BBA814@ha */
/* 80BBA378  C0 44 A8 14 */	lfs f2, lit_3909@l(r4)  /* 0x80BBA814@l */
/* 80BBA37C  4B 6B 57 05 */	bl cLib_addCalc0__FPfff
/* 80BBA380  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80BBA384  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BBA388  7C 08 03 A6 */	mtlr r0
/* 80BBA38C  38 21 00 20 */	addi r1, r1, 0x20
/* 80BBA390  4E 80 00 20 */	blr 
