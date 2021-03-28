lbl_80024174:
/* 80024174  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80024178  7C 08 02 A6 */	mflr r0
/* 8002417C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80024180  38 84 00 04 */	addi r4, r4, 4
/* 80024184  4B FF FE F5 */	bl dStage_RoomKeepDoorInfoProc__FP11dStage_dt_cP16stage_tgsc_class
/* 80024188  38 60 00 01 */	li r3, 1
/* 8002418C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80024190  7C 08 03 A6 */	mtlr r0
/* 80024194  38 21 00 10 */	addi r1, r1, 0x10
/* 80024198  4E 80 00 20 */	blr 
