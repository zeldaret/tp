lbl_80BE35F8:
/* 80BE35F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE35FC  7C 08 02 A6 */	mflr r0
/* 80BE3600  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE3604  4B FF FF 99 */	bl Execute__15daObjE_CREATE_cFv
/* 80BE3608  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE360C  7C 08 03 A6 */	mtlr r0
/* 80BE3610  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE3614  4E 80 00 20 */	blr 
