lbl_80C63338:
/* 80C63338  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6333C  7C 08 02 A6 */	mflr r0
/* 80C63340  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C63344  7C 83 23 78 */	mr r3, r4
/* 80C63348  7C A4 2B 78 */	mr r4, r5
/* 80C6334C  48 00 06 69 */	bl rideActor__14daObjLv4Chan_cFP10fopAc_ac_c
/* 80C63350  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C63354  7C 08 03 A6 */	mtlr r0
/* 80C63358  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6335C  4E 80 00 20 */	blr 
