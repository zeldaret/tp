lbl_80990E54:
/* 80990E54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80990E58  7C 08 02 A6 */	mflr r0
/* 80990E5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80990E60  4B FF BE B9 */	bl Execute__11daNpcChin_cFv
/* 80990E64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80990E68  7C 08 03 A6 */	mtlr r0
/* 80990E6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80990E70  4E 80 00 20 */	blr 
