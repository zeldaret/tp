lbl_8094BB98:
/* 8094BB98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8094BB9C  7C 08 02 A6 */	mflr r0
/* 8094BBA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8094BBA4  4B 91 74 EC */	b ModuleUnresolved
/* 8094BBA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8094BBAC  7C 08 03 A6 */	mtlr r0
/* 8094BBB0  38 21 00 10 */	addi r1, r1, 0x10
/* 8094BBB4  4E 80 00 20 */	blr 
