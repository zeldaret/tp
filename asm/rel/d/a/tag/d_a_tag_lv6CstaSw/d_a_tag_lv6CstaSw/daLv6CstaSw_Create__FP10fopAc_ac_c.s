lbl_80D5B720:
/* 80D5B720  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5B724  7C 08 02 A6 */	mflr r0
/* 80D5B728  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5B72C  4B FF FC 85 */	bl create__13daLv6CstaSw_cFv
/* 80D5B730  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5B734  7C 08 03 A6 */	mtlr r0
/* 80D5B738  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5B73C  4E 80 00 20 */	blr 
