lbl_80D21980:
/* 80D21980  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D21984  7C 08 02 A6 */	mflr r0
/* 80D21988  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2198C  4B FF FE ED */	bl draw__11daObjVGnd_cFv
/* 80D21990  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D21994  7C 08 03 A6 */	mtlr r0
/* 80D21998  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2199C  4E 80 00 20 */	blr 
