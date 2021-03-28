lbl_80C6A0AC:
/* 80C6A0AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6A0B0  7C 08 02 A6 */	mflr r0
/* 80C6A0B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6A0B8  4B FF FF 65 */	bl mode_init_move__14daObjLv4Sand_cFv
/* 80C6A0BC  38 60 00 01 */	li r3, 1
/* 80C6A0C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6A0C4  7C 08 03 A6 */	mtlr r0
/* 80C6A0C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6A0CC  4E 80 00 20 */	blr 
