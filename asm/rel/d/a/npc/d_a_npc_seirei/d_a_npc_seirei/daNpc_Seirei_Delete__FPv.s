lbl_80AD6E7C:
/* 80AD6E7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD6E80  7C 08 02 A6 */	mflr r0
/* 80AD6E84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD6E88  4B FF ED 3D */	bl Delete__14daNpc_Seirei_cFv
/* 80AD6E8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD6E90  7C 08 03 A6 */	mtlr r0
/* 80AD6E94  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD6E98  4E 80 00 20 */	blr 
