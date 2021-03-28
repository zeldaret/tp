lbl_806636C8:
/* 806636C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806636CC  7C 08 02 A6 */	mflr r0
/* 806636D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806636D4  7C A4 2B 78 */	mr r4, r5
/* 806636D8  4B FF FF D5 */	bl atHitCallback__11daCstatue_cFP10fopAc_ac_c
/* 806636DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806636E0  7C 08 03 A6 */	mtlr r0
/* 806636E4  38 21 00 10 */	addi r1, r1, 0x10
/* 806636E8  4E 80 00 20 */	blr 
