lbl_80266CBC:
/* 80266CBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80266CC0  7C 08 02 A6 */	mflr r0
/* 80266CC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80266CC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80266CCC  4B FF FF A1 */	bl getCrossProduct__4cXyzCFRC3Vec
/* 80266CD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80266CD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80266CD8  7C 08 03 A6 */	mtlr r0
/* 80266CDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80266CE0  4E 80 00 20 */	blr 
