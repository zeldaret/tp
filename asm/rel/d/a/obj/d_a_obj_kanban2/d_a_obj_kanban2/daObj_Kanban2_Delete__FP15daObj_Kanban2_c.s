lbl_80584F44:
/* 80584F44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80584F48  7C 08 02 A6 */	mflr r0
/* 80584F4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80584F50  4B FF FF 89 */	bl _delete__15daObj_Kanban2_cFv
/* 80584F54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80584F58  7C 08 03 A6 */	mtlr r0
/* 80584F5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80584F60  4E 80 00 20 */	blr 
