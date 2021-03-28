lbl_80AB4E88:
/* 80AB4E88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB4E8C  7C 08 02 A6 */	mflr r0
/* 80AB4E90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB4E94  4B FF E3 71 */	bl Create__11daNpcPray_cFv
/* 80AB4E98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB4E9C  7C 08 03 A6 */	mtlr r0
/* 80AB4EA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB4EA4  4E 80 00 20 */	blr 
