lbl_801EF11C:
/* 801EF11C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801EF120  7C 08 02 A6 */	mflr r0
/* 801EF124  90 01 00 14 */	stw r0, 0x14(r1)
/* 801EF128  4B FF FD ED */	bl textScaleHIO__12dMenu_Ring_cFv
/* 801EF12C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801EF130  7C 08 03 A6 */	mtlr r0
/* 801EF134  38 21 00 10 */	addi r1, r1, 0x10
/* 801EF138  4E 80 00 20 */	blr 
