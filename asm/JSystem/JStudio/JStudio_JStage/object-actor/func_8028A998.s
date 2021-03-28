lbl_8028A998:
/* 8028A998  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8028A99C  7C 08 02 A6 */	mflr r0
/* 8028A9A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028A9A4  7C 89 23 78 */	mr r9, r4
/* 8028A9A8  7C A8 2B 78 */	mr r8, r5
/* 8028A9AC  7C C7 33 78 */	mr r7, r6
/* 8028A9B0  3C 80 80 3C */	lis r4, lit_890@ha
/* 8028A9B4  38 A4 57 30 */	addi r5, r4, lit_890@l
/* 8028A9B8  80 85 00 00 */	lwz r4, 0(r5)
/* 8028A9BC  80 05 00 04 */	lwz r0, 4(r5)
/* 8028A9C0  90 81 00 08 */	stw r4, 8(r1)
/* 8028A9C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8028A9C8  80 05 00 08 */	lwz r0, 8(r5)
/* 8028A9CC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8028A9D0  38 81 00 08 */	addi r4, r1, 8
/* 8028A9D4  7D 25 4B 78 */	mr r5, r9
/* 8028A9D8  7D 06 43 78 */	mr r6, r8
/* 8028A9DC  48 00 03 21 */	bl setJSG_ID___Q214JStudio_JStage14TAdaptor_actorFMQ26JStage6TActorFPCvPvUl_vQ37JStudio4data15TEOperationDataPCvUl
/* 8028A9E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8028A9E4  7C 08 03 A6 */	mtlr r0
/* 8028A9E8  38 21 00 20 */	addi r1, r1, 0x20
/* 8028A9EC  4E 80 00 20 */	blr 
