lbl_80D597D8:
/* 80D597D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D597DC  7C 08 02 A6 */	mflr r0
/* 80D597E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D597E4  4B 50 98 AC */	b ModuleUnresolved
/* 80D597E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D597EC  7C 08 03 A6 */	mtlr r0
/* 80D597F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D597F4  4E 80 00 20 */	blr 
