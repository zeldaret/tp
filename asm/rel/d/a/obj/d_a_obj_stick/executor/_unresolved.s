lbl_80599198:
/* 80599198  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059919C  7C 08 02 A6 */	mflr r0
/* 805991A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805991A4  4B CC 9E EC */	b ModuleUnresolved
/* 805991A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805991AC  7C 08 03 A6 */	mtlr r0
/* 805991B0  38 21 00 10 */	addi r1, r1, 0x10
/* 805991B4  4E 80 00 20 */	blr 
