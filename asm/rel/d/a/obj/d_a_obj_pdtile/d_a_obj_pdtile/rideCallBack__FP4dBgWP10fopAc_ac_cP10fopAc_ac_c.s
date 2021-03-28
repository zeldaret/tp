lbl_80CAACB8:
/* 80CAACB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAACBC  7C 08 02 A6 */	mflr r0
/* 80CAACC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAACC4  7C 83 23 78 */	mr r3, r4
/* 80CAACC8  7C A4 2B 78 */	mr r4, r5
/* 80CAACCC  48 00 02 C5 */	bl rideActor__13daObjPDtile_cFP10fopAc_ac_c
/* 80CAACD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAACD4  7C 08 03 A6 */	mtlr r0
/* 80CAACD8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAACDC  4E 80 00 20 */	blr 
