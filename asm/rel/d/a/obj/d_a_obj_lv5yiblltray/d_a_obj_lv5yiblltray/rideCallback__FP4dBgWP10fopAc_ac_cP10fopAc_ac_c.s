lbl_80C6EED4:
/* 80C6EED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6EED8  7C 08 02 A6 */	mflr r0
/* 80C6EEDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6EEE0  7C 83 23 78 */	mr r3, r4
/* 80C6EEE4  7C A4 2B 78 */	mr r4, r5
/* 80C6EEE8  48 00 03 01 */	bl rideActor__16daObjYIblltray_cFP10fopAc_ac_c
/* 80C6EEEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6EEF0  7C 08 03 A6 */	mtlr r0
/* 80C6EEF4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6EEF8  4E 80 00 20 */	blr 
