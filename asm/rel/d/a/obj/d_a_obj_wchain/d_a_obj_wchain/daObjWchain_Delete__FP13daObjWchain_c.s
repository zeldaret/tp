lbl_80D3050C:
/* 80D3050C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D30510  7C 08 02 A6 */	mflr r0
/* 80D30514  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D30518  38 80 FF FF */	li r4, -1
/* 80D3051C  4B FF FF 19 */	bl __dt__13daObjWchain_cFv
/* 80D30520  38 60 00 01 */	li r3, 1
/* 80D30524  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D30528  7C 08 03 A6 */	mtlr r0
/* 80D3052C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D30530  4E 80 00 20 */	blr 
