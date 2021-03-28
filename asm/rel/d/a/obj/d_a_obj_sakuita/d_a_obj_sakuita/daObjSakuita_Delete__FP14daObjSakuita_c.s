lbl_80CC4C74:
/* 80CC4C74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC4C78  7C 08 02 A6 */	mflr r0
/* 80CC4C7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC4C80  38 80 FF FF */	li r4, -1
/* 80CC4C84  48 00 00 19 */	bl __dt__14daObjSakuita_cFv
/* 80CC4C88  38 60 00 01 */	li r3, 1
/* 80CC4C8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC4C90  7C 08 03 A6 */	mtlr r0
/* 80CC4C94  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC4C98  4E 80 00 20 */	blr 
