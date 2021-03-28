lbl_8001B8E0:
/* 8001B8E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001B8E4  7C 08 02 A6 */	mflr r0
/* 8001B8E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001B8EC  60 E0 01 00 */	ori r0, r7, 0x100
/* 8001B8F0  54 07 04 3E */	clrlwi r7, r0, 0x10
/* 8001B8F4  4B FF FE C1 */	bl fopAcM_orderMapToolEvent__FP10fopAc_ac_cUcsUsUsUs
/* 8001B8F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001B8FC  7C 08 03 A6 */	mtlr r0
/* 8001B900  38 21 00 10 */	addi r1, r1, 0x10
/* 8001B904  4E 80 00 20 */	blr 
