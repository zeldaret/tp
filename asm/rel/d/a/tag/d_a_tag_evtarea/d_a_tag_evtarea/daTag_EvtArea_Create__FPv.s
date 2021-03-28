lbl_8048CC80:
/* 8048CC80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048CC84  7C 08 02 A6 */	mflr r0
/* 8048CC88  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048CC8C  4B FF F8 6D */	bl create__15daTag_EvtArea_cFv
/* 8048CC90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048CC94  7C 08 03 A6 */	mtlr r0
/* 8048CC98  38 21 00 10 */	addi r1, r1, 0x10
/* 8048CC9C  4E 80 00 20 */	blr 
