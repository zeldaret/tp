lbl_805A63C4:
/* 805A63C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A63C8  7C 08 02 A6 */	mflr r0
/* 805A63CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A63D0  A0 03 00 FA */	lhz r0, 0xfa(r3)
/* 805A63D4  60 00 00 01 */	ori r0, r0, 1
/* 805A63D8  B0 03 00 FA */	sth r0, 0xfa(r3)
/* 805A63DC  38 80 00 00 */	li r4, 0
/* 805A63E0  38 A0 00 00 */	li r5, 0
/* 805A63E4  4B A7 4D B9 */	bl fopAcM_orderSpeakEvent__FP10fopAc_ac_cUsUs
/* 805A63E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A63EC  7C 08 03 A6 */	mtlr r0
/* 805A63F0  38 21 00 10 */	addi r1, r1, 0x10
/* 805A63F4  4E 80 00 20 */	blr 
