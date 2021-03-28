lbl_805A58C8:
/* 805A58C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A58CC  7C 08 02 A6 */	mflr r0
/* 805A58D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A58D4  4B FF FD E5 */	bl create__12daTagMhint_cFv
/* 805A58D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A58DC  7C 08 03 A6 */	mtlr r0
/* 805A58E0  38 21 00 10 */	addi r1, r1, 0x10
/* 805A58E4  4E 80 00 20 */	blr 
