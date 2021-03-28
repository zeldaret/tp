lbl_80D4E954:
/* 80D4E954  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4E958  7C 08 02 A6 */	mflr r0
/* 80D4E95C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4E960  4B FF FA CD */	bl create__10daSwBall_cFv
/* 80D4E964  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4E968  7C 08 03 A6 */	mtlr r0
/* 80D4E96C  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4E970  4E 80 00 20 */	blr 
