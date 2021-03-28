lbl_805A55AC:
/* 805A55AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A55B0  7C 08 02 A6 */	mflr r0
/* 805A55B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A55B8  4B FF FF 25 */	bl create__12daTagMagne_cFv
/* 805A55BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A55C0  7C 08 03 A6 */	mtlr r0
/* 805A55C4  38 21 00 10 */	addi r1, r1, 0x10
/* 805A55C8  4E 80 00 20 */	blr 
