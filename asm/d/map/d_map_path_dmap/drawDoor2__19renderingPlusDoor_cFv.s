lbl_800405B8:
/* 800405B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800405BC  7C 08 02 A6 */	mflr r0
/* 800405C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800405C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800405C8  7C 7F 1B 78 */	mr r31, r3
/* 800405CC  4B FE 3A 91 */	bl dStage_GetRoomKeepDoorInfo__Fv
/* 800405D0  7C 65 1B 78 */	mr r5, r3
/* 800405D4  7F E3 FB 78 */	mr r3, r31
/* 800405D8  38 85 00 04 */	addi r4, r5, 4
/* 800405DC  80 A5 00 00 */	lwz r5, 0(r5)
/* 800405E0  38 C0 00 00 */	li r6, 0
/* 800405E4  48 00 00 19 */	bl drawDoorCommon__19renderingPlusDoor_cFPC21stage_tgsc_data_classib
/* 800405E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800405EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800405F0  7C 08 03 A6 */	mtlr r0
/* 800405F4  38 21 00 10 */	addi r1, r1, 0x10
/* 800405F8  4E 80 00 20 */	blr 
