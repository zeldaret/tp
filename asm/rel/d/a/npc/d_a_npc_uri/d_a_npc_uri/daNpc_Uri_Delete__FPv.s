lbl_80B2BA28:
/* 80B2BA28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2BA2C  7C 08 02 A6 */	mflr r0
/* 80B2BA30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2BA34  4B FF B6 59 */	bl Delete__11daNpc_Uri_cFv
/* 80B2BA38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2BA3C  7C 08 03 A6 */	mtlr r0
/* 80B2BA40  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2BA44  4E 80 00 20 */	blr 
