lbl_80D644B0:
/* 80D644B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D644B4  7C 08 02 A6 */	mflr r0
/* 80D644B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D644BC  4B FF FF 3D */	bl create__14daTagWatchGe_cFv
/* 80D644C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D644C4  7C 08 03 A6 */	mtlr r0
/* 80D644C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D644CC  4E 80 00 20 */	blr 
