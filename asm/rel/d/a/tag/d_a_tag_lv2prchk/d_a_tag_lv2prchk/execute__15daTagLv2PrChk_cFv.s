lbl_805A4D44:
/* 805A4D44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A4D48  7C 08 02 A6 */	mflr r0
/* 805A4D4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A4D50  48 00 00 19 */	bl action__15daTagLv2PrChk_cFv
/* 805A4D54  38 60 00 01 */	li r3, 1
/* 805A4D58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A4D5C  7C 08 03 A6 */	mtlr r0
/* 805A4D60  38 21 00 10 */	addi r1, r1, 0x10
/* 805A4D64  4E 80 00 20 */	blr 
