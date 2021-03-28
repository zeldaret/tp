lbl_805A80A0:
/* 805A80A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A80A4  7C 08 02 A6 */	mflr r0
/* 805A80A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A80AC  4B FF FF 4D */	bl _delete__13daTagStatue_cFv
/* 805A80B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A80B4  7C 08 03 A6 */	mtlr r0
/* 805A80B8  38 21 00 10 */	addi r1, r1, 0x10
/* 805A80BC  4E 80 00 20 */	blr 
