lbl_80D5FF80:
/* 80D5FF80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5FF84  7C 08 02 A6 */	mflr r0
/* 80D5FF88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5FF8C  4B FF FC 69 */	bl draw__14daTagRmbitSw_cFv
/* 80D5FF90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5FF94  7C 08 03 A6 */	mtlr r0
/* 80D5FF98  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5FF9C  4E 80 00 20 */	blr 
