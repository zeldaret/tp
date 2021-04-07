lbl_80A84714:
/* 80A84714  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A84718  7C 08 02 A6 */	mflr r0
/* 80A8471C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A84720  4B 6C D8 F5 */	bl execute__8daNpcF_cFv
/* 80A84724  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A84728  7C 08 03 A6 */	mtlr r0
/* 80A8472C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A84730  4E 80 00 20 */	blr 
