lbl_8073DB04:
/* 8073DB04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8073DB08  7C 08 02 A6 */	mflr r0
/* 8073DB0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8073DB10  48 00 36 F1 */	bl Delete__8daE_PH_cFv
/* 8073DB14  38 60 00 01 */	li r3, 1
/* 8073DB18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8073DB1C  7C 08 03 A6 */	mtlr r0
/* 8073DB20  38 21 00 10 */	addi r1, r1, 0x10
/* 8073DB24  4E 80 00 20 */	blr 
