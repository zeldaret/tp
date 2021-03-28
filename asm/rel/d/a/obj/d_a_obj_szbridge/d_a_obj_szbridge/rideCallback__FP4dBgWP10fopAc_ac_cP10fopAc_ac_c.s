lbl_80D04338:
/* 80D04338  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0433C  7C 08 02 A6 */	mflr r0
/* 80D04340  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D04344  7C 83 23 78 */	mr r3, r4
/* 80D04348  7C A4 2B 78 */	mr r4, r5
/* 80D0434C  48 00 00 15 */	bl rideActor__15daObjSZbridge_cFP10fopAc_ac_c
/* 80D04350  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D04354  7C 08 03 A6 */	mtlr r0
/* 80D04358  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0435C  4E 80 00 20 */	blr 
