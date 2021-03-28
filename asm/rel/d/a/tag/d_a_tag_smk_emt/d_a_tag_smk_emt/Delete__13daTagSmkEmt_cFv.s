lbl_80D613DC:
/* 80D613DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D613E0  7C 08 02 A6 */	mflr r0
/* 80D613E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D613E8  48 00 01 19 */	bl deleteSmkEmt__13daTagSmkEmt_cFv
/* 80D613EC  38 60 00 01 */	li r3, 1
/* 80D613F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D613F4  7C 08 03 A6 */	mtlr r0
/* 80D613F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D613FC  4E 80 00 20 */	blr 
