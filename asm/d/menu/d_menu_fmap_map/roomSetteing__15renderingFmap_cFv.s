lbl_801CE5EC:
/* 801CE5EC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801CE5F0  7C 08 02 A6 */	mflr r0
/* 801CE5F4  90 01 00 54 */	stw r0, 0x54(r1)
/* 801CE5F8  7C 66 1B 78 */	mr r6, r3
/* 801CE5FC  80 63 00 7C */	lwz r3, 0x7c(r3)
/* 801CE600  C0 03 00 08 */	lfs f0, 8(r3)
/* 801CE604  D0 06 00 B0 */	stfs f0, 0xb0(r6)
/* 801CE608  80 66 00 7C */	lwz r3, 0x7c(r6)
/* 801CE60C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 801CE610  D0 06 00 B4 */	stfs f0, 0xb4(r6)
/* 801CE614  80 66 00 80 */	lwz r3, 0x80(r6)
/* 801CE618  C0 23 00 14 */	lfs f1, 0x14(r3)
/* 801CE61C  C0 06 00 B0 */	lfs f0, 0xb0(r6)
/* 801CE620  EC 00 08 2A */	fadds f0, f0, f1
/* 801CE624  D0 06 00 A8 */	stfs f0, 0xa8(r6)
/* 801CE628  80 66 00 80 */	lwz r3, 0x80(r6)
/* 801CE62C  C0 23 00 18 */	lfs f1, 0x18(r3)
/* 801CE630  C0 06 00 B4 */	lfs f0, 0xb4(r6)
/* 801CE634  EC 00 08 2A */	fadds f0, f0, f1
/* 801CE638  D0 06 00 AC */	stfs f0, 0xac(r6)
/* 801CE63C  C0 66 00 AC */	lfs f3, 0xac(r6)
/* 801CE640  C0 26 00 10 */	lfs f1, 0x10(r6)
/* 801CE644  C0 06 00 A8 */	lfs f0, 0xa8(r6)
/* 801CE648  EC 41 00 28 */	fsubs f2, f1, f0
/* 801CE64C  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 801CE650  C0 06 00 14 */	lfs f0, 0x14(r6)
/* 801CE654  EC 20 18 28 */	fsubs f1, f0, f3
/* 801CE658  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 801CE65C  C0 06 00 5C */	lfs f0, 0x5c(r6)
/* 801CE660  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801CE664  D0 41 00 08 */	stfs f2, 8(r1)
/* 801CE668  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 801CE66C  C0 06 00 68 */	lfs f0, 0x68(r6)
/* 801CE670  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 801CE674  38 61 00 20 */	addi r3, r1, 0x20
/* 801CE678  38 81 00 14 */	addi r4, r1, 0x14
/* 801CE67C  38 A1 00 08 */	addi r5, r1, 8
/* 801CE680  38 C6 00 6C */	addi r6, r6, 0x6c
/* 801CE684  38 E0 00 00 */	li r7, 0
/* 801CE688  4B E3 E0 89 */	bl mDoMtx_lookAt__FPA4_fPC3VecPC3VecPC3Vecs
/* 801CE68C  38 61 00 20 */	addi r3, r1, 0x20
/* 801CE690  38 80 00 00 */	li r4, 0
/* 801CE694  48 19 1B B9 */	bl GXLoadPosMtxImm
/* 801CE698  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801CE69C  7C 08 03 A6 */	mtlr r0
/* 801CE6A0  38 21 00 50 */	addi r1, r1, 0x50
/* 801CE6A4  4E 80 00 20 */	blr 
