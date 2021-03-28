lbl_80026764:
/* 80026764  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80026768  7C 08 02 A6 */	mflr r0
/* 8002676C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80026770  39 61 00 20 */	addi r11, r1, 0x20
/* 80026774  48 33 BA 61 */	bl _savegpr_27
/* 80026778  7C 7B 1B 78 */	mr r27, r3
/* 8002677C  7C 9C 23 78 */	mr r28, r4
/* 80026780  7C BD 2B 78 */	mr r29, r5
/* 80026784  7C DE 33 78 */	mr r30, r6
/* 80026788  3B FC 00 04 */	addi r31, r28, 4
/* 8002678C  7F E4 FB 78 */	mr r4, r31
/* 80026790  81 83 00 00 */	lwz r12, 0(r3)
/* 80026794  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80026798  7D 89 03 A6 */	mtctr r12
/* 8002679C  4E 80 04 21 */	bctrl 
/* 800267A0  7F 63 DB 78 */	mr r3, r27
/* 800267A4  7F 84 E3 78 */	mr r4, r28
/* 800267A8  7F A5 EB 78 */	mr r5, r29
/* 800267AC  7F C6 F3 78 */	mr r6, r30
/* 800267B0  4B FF F4 4D */	bl dStage_tgscInfoInit__FP11dStage_dt_cPviPv
/* 800267B4  7F 63 DB 78 */	mr r3, r27
/* 800267B8  7F E4 FB 78 */	mr r4, r31
/* 800267BC  4B FF D7 C9 */	bl dStage_KeepDoorInfoProc__FP11dStage_dt_cP16stage_tgsc_class
/* 800267C0  38 60 00 01 */	li r3, 1
/* 800267C4  39 61 00 20 */	addi r11, r1, 0x20
/* 800267C8  48 33 BA 59 */	bl _restgpr_27
/* 800267CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800267D0  7C 08 03 A6 */	mtlr r0
/* 800267D4  38 21 00 20 */	addi r1, r1, 0x20
/* 800267D8  4E 80 00 20 */	blr 
