lbl_8073AB38:
/* 8073AB38  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8073AB3C  7C 08 02 A6 */	mflr r0
/* 8073AB40  90 01 00 24 */	stw r0, 0x24(r1)
/* 8073AB44  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8073AB48  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8073AB4C  7C 7E 1B 78 */	mr r30, r3
/* 8073AB50  3C 60 80 74 */	lis r3, lit_3910@ha /* 0x8073CEA8@ha */
/* 8073AB54  3B E3 CE A8 */	addi r31, r3, lit_3910@l /* 0x8073CEA8@l */
/* 8073AB58  80 7E 06 70 */	lwz r3, 0x670(r30)
/* 8073AB5C  28 03 00 00 */	cmplwi r3, 0
/* 8073AB60  41 82 00 9C */	beq lbl_8073ABFC
/* 8073AB64  80 63 05 D0 */	lwz r3, 0x5d0(r3)
/* 8073AB68  80 63 00 04 */	lwz r3, 4(r3)
/* 8073AB6C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8073AB70  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8073AB74  38 63 00 30 */	addi r3, r3, 0x30
/* 8073AB78  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8073AB7C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8073AB80  4B C0 B9 31 */	bl PSMTXCopy
/* 8073AB84  C0 1E 06 64 */	lfs f0, 0x664(r30)
/* 8073AB88  D0 01 00 08 */	stfs f0, 8(r1)
/* 8073AB8C  C0 9E 06 68 */	lfs f4, 0x668(r30)
/* 8073AB90  D0 81 00 0C */	stfs f4, 0xc(r1)
/* 8073AB94  C0 1E 06 6C */	lfs f0, 0x66c(r30)
/* 8073AB98  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8073AB9C  C0 7F 00 34 */	lfs f3, 0x34(r31)
/* 8073ABA0  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 8073ABA4  C0 3E 06 80 */	lfs f1, 0x680(r30)
/* 8073ABA8  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8073ABAC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8073ABB0  EC 02 00 32 */	fmuls f0, f2, f0
/* 8073ABB4  EC 03 00 2A */	fadds f0, f3, f0
/* 8073ABB8  EC 04 00 2A */	fadds f0, f4, f0
/* 8073ABBC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8073ABC0  38 61 00 08 */	addi r3, r1, 8
/* 8073ABC4  4B 8D 22 11 */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 8073ABC8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8073ABCC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8073ABD0  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 8073ABD4  D0 21 00 08 */	stfs f1, 8(r1)
/* 8073ABD8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8073ABDC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8073ABE0  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8073ABE4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8073ABE8  D0 3E 04 D0 */	stfs f1, 0x4d0(r30)
/* 8073ABEC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8073ABF0  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8073ABF4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8073ABF8  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
lbl_8073ABFC:
/* 8073ABFC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8073AC00  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8073AC04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8073AC08  7C 08 03 A6 */	mtlr r0
/* 8073AC0C  38 21 00 20 */	addi r1, r1, 0x20
/* 8073AC10  4E 80 00 20 */	blr 
