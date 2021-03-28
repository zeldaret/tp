lbl_80AD6E5C:
/* 80AD6E5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD6E60  7C 08 02 A6 */	mflr r0
/* 80AD6E64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD6E68  4B FF E9 5D */	bl create__14daNpc_Seirei_cFv
/* 80AD6E6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD6E70  7C 08 03 A6 */	mtlr r0
/* 80AD6E74  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD6E78  4E 80 00 20 */	blr 
