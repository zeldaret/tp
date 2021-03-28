lbl_80BE359C:
/* 80BE359C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE35A0  7C 08 02 A6 */	mflr r0
/* 80BE35A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE35A8  4B FF FF 9D */	bl Action__15daObjE_CREATE_cFv
/* 80BE35AC  38 60 00 01 */	li r3, 1
/* 80BE35B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE35B4  7C 08 03 A6 */	mtlr r0
/* 80BE35B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE35BC  4E 80 00 20 */	blr 
