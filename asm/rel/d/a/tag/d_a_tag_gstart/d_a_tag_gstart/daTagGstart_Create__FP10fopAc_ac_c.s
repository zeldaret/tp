lbl_805A34F4:
/* 805A34F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A34F8  7C 08 02 A6 */	mflr r0
/* 805A34FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A3500  4B FF FF 79 */	bl create__13daTagGstart_cFv
/* 805A3504  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A3508  7C 08 03 A6 */	mtlr r0
/* 805A350C  38 21 00 10 */	addi r1, r1, 0x10
/* 805A3510  4E 80 00 20 */	blr 
