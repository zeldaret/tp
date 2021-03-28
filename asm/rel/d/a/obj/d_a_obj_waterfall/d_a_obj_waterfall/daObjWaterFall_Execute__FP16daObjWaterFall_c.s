lbl_80D2FCF0:
/* 80D2FCF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2FCF4  7C 08 02 A6 */	mflr r0
/* 80D2FCF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2FCFC  4B FF FC 89 */	bl execute__16daObjWaterFall_cFv
/* 80D2FD00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2FD04  7C 08 03 A6 */	mtlr r0
/* 80D2FD08  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2FD0C  4E 80 00 20 */	blr 
