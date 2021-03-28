lbl_80040574:
/* 80040574  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80040578  7C 08 02 A6 */	mflr r0
/* 8004057C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80040580  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80040584  7C 7F 1B 78 */	mr r31, r3
/* 80040588  4B FE 39 6D */	bl dStage_GetKeepDoorInfo__Fv
/* 8004058C  7C 65 1B 78 */	mr r5, r3
/* 80040590  7F E3 FB 78 */	mr r3, r31
/* 80040594  38 85 00 04 */	addi r4, r5, 4
/* 80040598  80 A5 00 00 */	lwz r5, 0(r5)
/* 8004059C  38 C0 00 01 */	li r6, 1
/* 800405A0  48 00 00 5D */	bl drawDoorCommon__19renderingPlusDoor_cFPC21stage_tgsc_data_classib
/* 800405A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800405A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800405AC  7C 08 03 A6 */	mtlr r0
/* 800405B0  38 21 00 10 */	addi r1, r1, 0x10
/* 800405B4  4E 80 00 20 */	blr 
