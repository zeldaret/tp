lbl_80490B64:
/* 80490B64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80490B68  7C 08 02 A6 */	mflr r0
/* 80490B6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80490B70  4B FF FF 89 */	bl execute__13daTag_Telop_cFv
/* 80490B74  38 60 00 01 */	li r3, 1
/* 80490B78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80490B7C  7C 08 03 A6 */	mtlr r0
/* 80490B80  38 21 00 10 */	addi r1, r1, 0x10
/* 80490B84  4E 80 00 20 */	blr 
