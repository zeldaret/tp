lbl_805A531C:
/* 805A531C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A5320  7C 08 02 A6 */	mflr r0
/* 805A5324  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A5328  4B FF FF CD */	bl _delete__15daTagLv2PrChk_cFv
/* 805A532C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A5330  7C 08 03 A6 */	mtlr r0
/* 805A5334  38 21 00 10 */	addi r1, r1, 0x10
/* 805A5338  4E 80 00 20 */	blr 
