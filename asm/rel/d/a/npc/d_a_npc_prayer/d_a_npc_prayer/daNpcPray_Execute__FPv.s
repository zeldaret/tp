lbl_80AB4EC8:
/* 80AB4EC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB4ECC  7C 08 02 A6 */	mflr r0
/* 80AB4ED0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB4ED4  4B FF E7 71 */	bl Execute__11daNpcPray_cFv
/* 80AB4ED8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB4EDC  7C 08 03 A6 */	mtlr r0
/* 80AB4EE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB4EE4  4E 80 00 20 */	blr 
