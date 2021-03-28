lbl_8002670C:
/* 8002670C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80026710  7C 08 02 A6 */	mflr r0
/* 80026714  90 01 00 14 */	stw r0, 0x14(r1)
/* 80026718  4B FF F3 21 */	bl dStage_actorInit__FP11dStage_dt_cPviPv
/* 8002671C  38 60 00 01 */	li r3, 1
/* 80026720  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80026724  7C 08 03 A6 */	mtlr r0
/* 80026728  38 21 00 10 */	addi r1, r1, 0x10
/* 8002672C  4E 80 00 20 */	blr 
