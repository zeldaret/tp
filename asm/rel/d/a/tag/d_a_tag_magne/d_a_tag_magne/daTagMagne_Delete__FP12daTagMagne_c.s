lbl_805A558C:
/* 805A558C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A5590  7C 08 02 A6 */	mflr r0
/* 805A5594  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A5598  4B FF FF E1 */	bl _delete__12daTagMagne_cFv
/* 805A559C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A55A0  7C 08 03 A6 */	mtlr r0
/* 805A55A4  38 21 00 10 */	addi r1, r1, 0x10
/* 805A55A8  4E 80 00 20 */	blr 
