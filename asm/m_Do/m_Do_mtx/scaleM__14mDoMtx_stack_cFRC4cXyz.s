lbl_8000CE70:
/* 8000CE70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8000CE74  7C 08 02 A6 */	mflr r0
/* 8000CE78  90 01 00 14 */	stw r0, 0x14(r1)
/* 8000CE7C  C0 23 00 00 */	lfs f1, 0(r3)
/* 8000CE80  C0 43 00 04 */	lfs f2, 4(r3)
/* 8000CE84  C0 63 00 08 */	lfs f3, 8(r3)
/* 8000CE88  4B FF FF B1 */	bl scaleM__14mDoMtx_stack_cFfff
/* 8000CE8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8000CE90  7C 08 03 A6 */	mtlr r0
/* 8000CE94  38 21 00 10 */	addi r1, r1, 0x10
/* 8000CE98  4E 80 00 20 */	blr 
