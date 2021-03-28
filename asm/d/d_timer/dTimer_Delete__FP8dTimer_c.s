lbl_80260F4C:
/* 80260F4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80260F50  7C 08 02 A6 */	mflr r0
/* 80260F54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80260F58  4B FF C4 65 */	bl _delete__8dTimer_cFv
/* 80260F5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80260F60  7C 08 03 A6 */	mtlr r0
/* 80260F64  38 21 00 10 */	addi r1, r1, 0x10
/* 80260F68  4E 80 00 20 */	blr 
