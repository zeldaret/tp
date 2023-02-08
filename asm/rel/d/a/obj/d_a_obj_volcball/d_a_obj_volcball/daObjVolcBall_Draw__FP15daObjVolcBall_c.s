lbl_80D23AA4:
/* 80D23AA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D23AA8  7C 08 02 A6 */	mflr r0
/* 80D23AAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D23AB0  4B FF FE 55 */	bl draw__15daObjVolcBall_cFv
/* 80D23AB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D23AB8  7C 08 03 A6 */	mtlr r0
/* 80D23ABC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D23AC0  4E 80 00 20 */	blr 
