lbl_8000CE00:
/* 8000CE00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000CE04  7C 08 02 A6 */	mflr r0
/* 8000CE08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000CE0C  7C 64 1B 78 */	mr r4, r3
/* 8000CE10  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8000CE14  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8000CE18  C0 24 00 00 */	lfs f1, 0(r4)
/* 8000CE1C  C0 44 00 04 */	lfs f2, 4(r4)
/* 8000CE20  C0 64 00 08 */	lfs f3, 8(r4)
/* 8000CE24  48 33 9B 45 */	bl PSMTXScale
/* 8000CE28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000CE2C  7C 08 03 A6 */	mtlr r0
/* 8000CE30  38 21 00 10 */	addi r1, r1, 0x10
/* 8000CE34  4E 80 00 20 */	blr 
