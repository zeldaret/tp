lbl_8058AF38:
/* 8058AF38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058AF3C  7C 08 02 A6 */	mflr r0
/* 8058AF40  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058AF44  7C 83 23 78 */	mr r3, r4
/* 8058AF48  7C A4 2B 78 */	mr r4, r5
/* 8058AF4C  48 00 05 65 */	bl rideActor__14daObjKLift00_cFP10fopAc_ac_c
/* 8058AF50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058AF54  7C 08 03 A6 */	mtlr r0
/* 8058AF58  38 21 00 10 */	addi r1, r1, 0x10
/* 8058AF5C  4E 80 00 20 */	blr 
