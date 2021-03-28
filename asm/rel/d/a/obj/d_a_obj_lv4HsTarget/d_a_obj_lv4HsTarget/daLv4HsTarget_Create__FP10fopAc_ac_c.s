lbl_80C5F970:
/* 80C5F970  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5F974  7C 08 02 A6 */	mflr r0
/* 80C5F978  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5F97C  4B FF FE 09 */	bl create__15daLv4HsTarget_cFv
/* 80C5F980  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5F984  7C 08 03 A6 */	mtlr r0
/* 80C5F988  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5F98C  4E 80 00 20 */	blr 
