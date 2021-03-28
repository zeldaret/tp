lbl_80BA6A50:
/* 80BA6A50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA6A54  7C 08 02 A6 */	mflr r0
/* 80BA6A58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA6A5C  4B FF F6 79 */	bl Execute__16daObj_AutoMata_cFv
/* 80BA6A60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA6A64  7C 08 03 A6 */	mtlr r0
/* 80BA6A68  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA6A6C  4E 80 00 20 */	blr 
