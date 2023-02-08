lbl_80C0F7EC:
/* 80C0F7EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C0F7F0  7C 08 02 A6 */	mflr r0
/* 80C0F7F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C0F7F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80C0F7FC  7C 7F 1B 78 */	mr r31, r3
/* 80C0F800  C0 05 05 50 */	lfs f0, 0x550(r5)
/* 80C0F804  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C0F808  C0 05 05 54 */	lfs f0, 0x554(r5)
/* 80C0F80C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C0F810  C0 05 05 58 */	lfs f0, 0x558(r5)
/* 80C0F814  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C0F818  A8 05 00 08 */	lha r0, 8(r5)
/* 80C0F81C  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80C0F820  40 82 00 14 */	bne lbl_80C0F834
/* 80C0F824  4B 54 FB D9 */	bl getAttentionOffsetY__9daPy_py_cFv
/* 80C0F828  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80C0F82C  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C0F830  D0 01 00 0C */	stfs f0, 0xc(r1)
lbl_80C0F834:
/* 80C0F834  C0 01 00 08 */	lfs f0, 8(r1)
/* 80C0F838  D0 1F 00 00 */	stfs f0, 0(r31)
/* 80C0F83C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80C0F840  D0 1F 00 04 */	stfs f0, 4(r31)
/* 80C0F844  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80C0F848  D0 1F 00 08 */	stfs f0, 8(r31)
/* 80C0F84C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80C0F850  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C0F854  7C 08 03 A6 */	mtlr r0
/* 80C0F858  38 21 00 20 */	addi r1, r1, 0x20
/* 80C0F85C  4E 80 00 20 */	blr 
