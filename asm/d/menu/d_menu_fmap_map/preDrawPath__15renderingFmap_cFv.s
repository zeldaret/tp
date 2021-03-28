lbl_801CE410:
/* 801CE410  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801CE414  7C 08 02 A6 */	mflr r0
/* 801CE418  90 01 00 14 */	stw r0, 0x14(r1)
/* 801CE41C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801CE420  7C 7F 1B 78 */	mr r31, r3
/* 801CE424  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 801CE428  D0 03 00 54 */	stfs f0, 0x54(r3)
/* 801CE42C  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 801CE430  D0 03 00 58 */	stfs f0, 0x58(r3)
/* 801CE434  C0 02 A7 88 */	lfs f0, lit_3769(r2)
/* 801CE438  D0 03 00 5C */	stfs f0, 0x5c(r3)
/* 801CE43C  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 801CE440  D0 03 00 60 */	stfs f0, 0x60(r3)
/* 801CE444  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 801CE448  D0 03 00 64 */	stfs f0, 0x64(r3)
/* 801CE44C  C0 02 A7 8C */	lfs f0, lit_3770(r2)
/* 801CE450  D0 03 00 68 */	stfs f0, 0x68(r3)
/* 801CE454  C0 22 A7 80 */	lfs f1, lit_3703(r2)
/* 801CE458  D0 23 00 6C */	stfs f1, 0x6c(r3)
/* 801CE45C  C0 02 A7 90 */	lfs f0, lit_3771(r2)
/* 801CE460  D0 03 00 70 */	stfs f0, 0x70(r3)
/* 801CE464  D0 23 00 74 */	stfs f1, 0x74(r3)
/* 801CE468  38 7F 00 24 */	addi r3, r31, 0x24
/* 801CE46C  38 9F 00 54 */	addi r4, r31, 0x54
/* 801CE470  38 BF 00 60 */	addi r5, r31, 0x60
/* 801CE474  38 DF 00 6C */	addi r6, r31, 0x6c
/* 801CE478  38 E0 00 00 */	li r7, 0
/* 801CE47C  4B E3 E2 95 */	bl mDoMtx_lookAt__FPA4_fPC3VecPC3VecPC3Vecs
/* 801CE480  38 7F 00 24 */	addi r3, r31, 0x24
/* 801CE484  38 80 00 00 */	li r4, 0
/* 801CE488  48 19 1D C5 */	bl GXLoadPosMtxImm
/* 801CE48C  48 18 D1 01 */	bl GXClearVtxDesc
/* 801CE490  38 60 00 09 */	li r3, 9
/* 801CE494  38 80 00 03 */	li r4, 3
/* 801CE498  48 18 CA 21 */	bl GXSetVtxDesc
/* 801CE49C  38 60 00 00 */	li r3, 0
/* 801CE4A0  38 80 00 09 */	li r4, 9
/* 801CE4A4  38 A0 00 00 */	li r5, 0
/* 801CE4A8  38 C0 00 04 */	li r6, 4
/* 801CE4AC  38 E0 00 00 */	li r7, 0
/* 801CE4B0  48 18 D1 15 */	bl GXSetVtxAttrFmt
/* 801CE4B4  38 60 00 01 */	li r3, 1
/* 801CE4B8  38 80 00 08 */	li r4, 8
/* 801CE4BC  48 18 D9 7D */	bl GXSetMisc
/* 801CE4C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801CE4C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801CE4C8  7C 08 03 A6 */	mtlr r0
/* 801CE4CC  38 21 00 10 */	addi r1, r1, 0x10
/* 801CE4D0  4E 80 00 20 */	blr 
